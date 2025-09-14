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
import 'package:stamp_rally/common/data/model/place_model.dart';
import 'package:stamp_rally/common/extensions/async_value.dart';
import 'package:stamp_rally/common/services/open_another_url_service.dart';
import 'package:stamp_rally/features/complete_card/provider/complete_card_scoped_provider.dart';
import 'package:stamp_rally/features/complete_card/provider/fetch_complete_card_use_case.dart';
import 'package:stamp_rally/features/worship_card/model/worship_card.dart';

String formatJapaneseDate(DateTime date) {
  final japaneseEra = date.year - 2018; // 令和は2019年から
  final weekDayNames = ['日', '月', '火', '水', '木', '金', '土'];
  final formattedDate = DateFormat('MM月dd日').format(date);
  final weekDay = weekDayNames[date.weekday % 7];
  final time = DateFormat('HH:mm:ss').format(date);

  return '令和$japaneseEra年$formattedDate($weekDay) $time';
}

void showWorshipCardDialog(BuildContext context, PlaceModel place) {
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
                  return SizedBox(
                    child: Column(
                      children: [
                        Expanded(
                            flex: 12,
                            child: _WorshipCard(
                                globalKey: globalKey, place: place)),
                        Expanded(
                            flex: 1,
                            child: _CompleteButton(globalKey: globalKey))
                      ],
                    ),
                  );
                },
              )),
        );
      });
}

class _WorshipCard extends HookConsumerWidget {
  final GlobalKey globalKey;
  final PlaceModel place;

  const _WorshipCard({super.key, required this.globalKey, required this.place});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const completeCard = WorshipCard();
    // final title = completeCard.title;
    // // 150文字が上限
    // final double textSize = title.length > 100
    //     ? 10
    //     : title.length > 60
    //         ? 12
    //         : 15;
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
                  flex: 3,
                  child: Container(
                    color: Colors.red,
                    width: double.infinity,
                    height: double.infinity,
                    child: Assets.png.worshipCard.image(
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        // Flexibleにして、大きさは小さく
                        // 文字サイズは、文字数が多い場合は、文字を小さくする。
                        Flexible(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: Text(
                              place.name,
                              style: const TextStyle(
                                  fontSize: 27,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: Text(
                            '人を信じ、しかしその百倍も自からを信じよ',
                            style: TextStyle(),
                          ),
                        ),
                        const Expanded(
                            flex: 3,
                            child: Text(
                              "No. 000000001",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            )),
                        Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Text(
                                  'ID: ${place.historicSpotId}',
                                  style: const TextStyle(color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  place.areaName,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '${formatJapaneseDate(DateTime.now())}  参拝',
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )
                              ],
                            )),
                      ],
                    )),
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
                if (context.mounted) {
                  context.pop();
                }
              }, context, "保存に成功しました。", "保存に失敗しました。再度やり直してください。", false);
            },
            child: const Text(
              "参拝カードをアルバムに保存",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
