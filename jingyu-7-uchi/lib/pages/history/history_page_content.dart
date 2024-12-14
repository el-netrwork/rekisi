import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally/app/themes/custom_theme.dart';
import 'package:stamp_rally/assets/assets.gen.dart';
import 'package:stamp_rally/core/features/stamp/provider/fetch_stamped_place_use_case_provider.dart';
import 'package:stamp_rally/pages/history/provider/register_complete_card_use_case_provider.dart';
import 'package:stamp_rally/pages/history/provider/place_scoped_provider.dart';
import 'package:stamp_rally/pages/history/widget/alert_qr_register_dialog.dart';
import 'package:stamp_rally/pages/history/widget/complete_card_dialog.dart';
import '../../core/common/components/custom_network_image.dart';
import '../../core/common/data/model/place_model.dart';
import '../../core/common/services/open_another_url_service.dart';
import 'provider/show_download_page_handler.dart';
import 'widget/alert_gps_register_dialog.dart';

class HistoryPageContent extends HookConsumerWidget {
  const HistoryPageContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(registerCompleteCardUseCaseProvider, (previous, next) {
      switch (previous) {
        // ローディング時
        case Loading():
          context.pop();
        default:
      }
      switch (next) {
        case Error(:final message):
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message)));
        // ローディング時
        case Loading():
          showGeneralDialog(
            context: context,
            barrierDismissible: false,
            transitionDuration: Duration.zero,
            // これを入れると遅延を入れなくて
            barrierColor: Colors.black.withOpacity(0.5),
            pageBuilder: (BuildContext context, Animation animation,
                Animation secondaryAnimation) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        default:
      }
    });

    final stampAsync = ref.watch(fetchStampedPlaceUseCaseProvider);
    final isShowDownloadMessage = ref.watch(showDownloadPageHandlerProvider);
    return switch (stampAsync) {
      AsyncData(:final value) => MediaQuery(
          data:
              MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Column(
              children: [
                Visibility(
                  visible: isShowDownloadMessage,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFFFD8727),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Row(
                          children: [
                            const Expanded(
                              flex: 10,
                              child: Text(
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                  "すべて達成したら「スタンプラリー達成！！」ボタンを押し認定書をダウンロードしてください"),
                            ),
                            Expanded(
                                flex: 1,
                                child: IconButton(
                                  onPressed: () {
                                    ref
                                        .read(showDownloadPageHandlerProvider
                                            .notifier)
                                        .hide();
                                  },
                                  color: Colors.black,
                                  iconSize: 20,
                                  icon: const Icon(Icons.cancel_outlined),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                      childAspectRatio: 0.65,
                    ),
                    itemCount: value.length,
                    itemBuilder: (context, i) {
                      return ProviderScope(overrides: [
                        placeModelScopedProvider.overrideWithValue(value[i])
                      ], child: const _Item());
                    },
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 5, right: 10, left: 10),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            onPressed: value
                                    .where((e) => e.isStamped == false)
                                    .toList()
                                    .isNotEmpty
                                ? () async {
                                    // 完了カード作成
                                    await ref
                                        .read(
                                            registerCompleteCardUseCaseProvider
                                                .notifier)
                                        .invoke();

                                    if (context.mounted) {
                                      showCompleteCardDialog(context);
                                    }
                                  }
                                : null,
                            child: const Text(
                              "スタンプラリー達成！！",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ))
              ],
            ),
          ),
        ),
      AsyncError(:final error) => Center(child: Text(error.toString())),
      _ => const Center(
          child: CircularProgressIndicator(),
        )
    };
  }
}

class _Item extends ConsumerWidget {
  const _Item();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final place = ref.watch(placeModelScopedProvider);
    final isContain = place.isStamped;
    return GestureDetector(
      onTap: () async {
        // GPS、QRコードの場合。
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return ProviderScope(
                  key: ValueKey(place.name),
                  overrides: [
                    placeModelScopedProvider.overrideWithValue(place)
                  ],
                  child: place.typeRegisterStamp == TypeRegisterStamp.qr
                      ? const AlertQrRegisterDialog()
                      : const AlertGpsRegisterDialog());
            });
      },
      child: Card(
        color: Colors.blue.shade50,
        surfaceTintColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Gap(10),
            // 場所
            Flexible(
              flex: 2,
              child: Text(
                place.areaName,
                style: context.textStyles.headline.copyWith(
                  color: context.colors.onSurface,
                  fontSize: 15,
                ),
              ),
            ),
            const Gap(5),
            // スタンプ本体
            Flexible(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ClipOval(
                    child: Container(
                      decoration: BoxDecoration(
                        color: isContain
                            ? const Color(0xFFFFFC00)
                            : const Color(0xFFC5C5C5),
                      ),
                      child: Stack(
                        children: [
                          Visibility(
                            visible: isContain,
                            child: Align(
                              alignment: Alignment.center,
                              // stamp.png
                              child: CustomNetworkImage.fromAsset("stamp.png"),
                            ),
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 1),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30),
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          place.name,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30),
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                          place.yomigana,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 11),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                )),
            // 登録日一覧
            Flexible(
              flex: 3,
              child: Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: place.stampedDateTimeListString
                        .map((e) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1),
                              child: Text(
                                e,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: context.colors.onSurface),
                              ),
                            ))
                        .toList(),
                  )),
            ),
            // Gap(10),
            // 経路
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // しおり
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        OpenAnotherUrlService.openUrl(place.url);
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("しおり",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: context.colors.primary,
                                  decorationColor: context.colors.primary,
                                )),
                            Assets.png.siori.image(height: 25, width: 25)
                          ],
                        ),
                      ),
                    ),
                  ),
                  //経路
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        OpenAnotherUrlService.openGoogleMap(
                            place.latitude.toString(),
                            place.longitude.toString());
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("経路",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: context.colors.primary,
                                  decorationColor: context.colors.primary,
                                )),
                            const Icon(
                              Icons.pin_drop,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
