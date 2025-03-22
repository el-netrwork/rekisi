import 'package:stamp_rally/common/components/custom_network_image.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:intl/intl.dart';
import 'package:stamp_rally/app/themes/custom_theme.dart';
import 'package:stamp_rally/assets/assets.gen.dart';
import 'package:stamp_rally/common/components/loading_snack_bar.dart';
import 'package:stamp_rally/common/extensions/async_value.dart';
import 'package:stamp_rally/common/services/open_another_url_service.dart';
import 'package:stamp_rally/features/complete_card/provider/complete_card_scoped_provider.dart';
import 'package:stamp_rally/features/complete_card/provider/fetch_complete_card_use_case.dart';

void showCompleteCardDialog(BuildContext context) {
  showGeneralDialog(
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 200),
      barrierDismissible: true,
      barrierLabel: '',
      context: context,
      pageBuilder: (context, animation1, animation2) {
        //　GlobalKeyを作成
        final globalKey = GlobalKey();
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Dialog(
              clipBehavior: Clip.antiAlias,
              insetPadding:
                  const EdgeInsets.symmetric(horizontal: 2, vertical: 60),
              child: Consumer(
                builder: (context, WidgetRef ref, _) {
                  final async = ref.watch(fetchCompleteCardUseCaseProvider);

                  return switch (async) {
                    AsyncData(:final value) => SizedBox(
                        // height: MediaQuery.of(context).size.height,
                        child: Column(
                          children: [
                            // 完了カードの表示
                            Expanded(
                                flex: 10,
                                child: ProviderScope(overrides: [
                                  completeCardModelScopedProvider
                                      .overrideWithValue(value)
                                ], child: _CompleteCard(globalKey: globalKey))),
                            // アルバムに保存ボタン
                            Expanded(
                                flex: 1,
                                child: _CompleteButton(globalKey: globalKey))
                          ],
                        ),
                      ),
                    AsyncError(:final error) => const Center(
                        child: Text("取得に失敗しました。"),
                      ),
                    _ => Container(),
                  };
                },
              )),
        );
      });
}

class _CompleteCard extends HookConsumerWidget {
  final GlobalKey globalKey;

  const _CompleteCard({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final completeCard = ref.watch(completeCardModelScopedProvider);
    final title = completeCard.title;
    // 150文字が上限
    final double textSize = title.length > 100
        ? 10
        : title.length > 60
            ? 12
            : 15;
    return RepaintBoundary(
      key: globalKey,
      child: GestureDetector(
        onTap: () {
          context.pop();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: const Color(0xFFF3CCFF),
            child: Column(
              children: [
                // 上の画像。
                Expanded(
                    flex: 6,
                    child:
                        CustomNetworkImage.fromAsset('complete_card_up.png')),
                // Flexibleにして、大きさは小さく
                // 文字サイズは、文字数が多い場合は、文字を小さくする。
                Flexible(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: textSize,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    child: Assets.png.conguraturation.image(),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      DateFormat('yyyy年MM月dd日 HH:mm')
                          .format(completeCard.completedDateTime),
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                completeCard.message,
                                style: const TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.black,
                                    fontSize: 15),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Assets.png.completeCardSign.image(),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 完了ボタン
class _CompleteButton extends HookConsumerWidget {
  const _CompleteButton({super.key, required this.globalKey});

  final GlobalKey globalKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        child: ElevatedButton(
            onPressed: () async {
              // スナックバーを出す処理
              await LoadingAction.showSnackBar(() async {
                // widgetを画像化
                final pngBytes = await globalKey.createWidgetImage();

                // 結果を保存
                await ImageGallerySaver.saveImage(quality: 100, pngBytes);

                // 1秒後にダイアログを出す。
                Future.delayed(const Duration(microseconds: 500), () {
                  context.pop();
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("達成カードをアルバムに保存しました！"),
                          content:
                              const Text("よろしければ、アプリのフィードバックをメールで送ってください。"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                context.pop();
                              },
                              style: TextButton.styleFrom(
                                  foregroundColor: context.colors.primary),
                              child: Text(
                                "戻る",
                                style: TextStyle(color: context.colors.primary),
                              ),
                            ),
                            TextButton(
                              onPressed: () async {
                                await OpenAnotherUrlService.openEmail();
                              },
                              style: TextButton.styleFrom(
                                  foregroundColor: context.colors.primary),
                              child: Text(
                                "送る",
                                style: TextStyle(color: context.colors.primary),
                              ),
                            ),
                          ],
                        );
                      });
                });
              }, context, "保存に成功しました。", "保存に失敗しました。再度やり直してください。", false);
            },
            child: const Text(
              "達成カードをアルバムに保存する",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
