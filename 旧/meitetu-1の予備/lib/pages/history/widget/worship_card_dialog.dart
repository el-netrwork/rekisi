import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:intl/intl.dart';
import 'package:stamp_rally/assets/assets.gen.dart';
import 'package:stamp_rally/common/components/loading_snack_bar.dart';
import 'package:stamp_rally/common/data/model/place_model.dart';
import 'package:stamp_rally/common/extensions/async_value.dart';

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
    return RepaintBoundary(
      key: globalKey,
      child: GestureDetector(
        onTap: () {
          context.pop();
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: const Color(0xFFF3CCFF),
            child: Column(
              children: [
                // 上の画像。
                Expanded(
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
                    child: Column(
                      children: [
                        // Flexibleにして、大きさは小さく
                        // 文字サイズは、文字数が多い場合は、文字を小さくする。
                        Flexible(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              place.name,
                              style: GoogleFonts.sawarabiMincho(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                  fontSize: 27.0,
                                  color: Colors.purple),
                              // style: const TextStyle(
                              //     fontFamily: 'HGP行書体',
                              //     fontSize: 27,
                              //     color: Colors.purple,
                              //     fontWeight: FontWeight.w500,
                              //     fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 2),
                            child: Text(
                              place.proverbs,
                              style: GoogleFonts.sawarabiMincho(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500),
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Assets.png.worshipCardImage.image(
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),

                        // const Expanded(
                        //     flex: 3,
                        //     child: Text(
                        //       "No. 000000001",
                        //       style: TextStyle(
                        //           color: Colors.black,
                        //           fontWeight: FontWeight.bold,
                        //           fontSize: 30),
                        //     )),
                        Expanded(
                            flex:5,
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
                                  height: 0,
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
              }, context, "保存に成功しました。", "保存に失敗しました。再度やり直してください。", true);
            },
            child: const Text(
              "参拝カードをアルバムに保存",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
