import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally/app/themes/custom_theme.dart';
import 'package:stamp_rally/common/data/model/place_model.dart';
import 'package:stamp_rally/features/place/provider/place_scoped_provider.dart';
import '../../../assets/localization/strings.g.dart';
import '../../../features/stamp/provider/register_stamp_use_case_provider.dart';

class AlertGpsRegisterDialog extends ConsumerWidget {
  const AlertGpsRegisterDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(registerStampUseCaseProvider);
    final notifier = ref.watch(registerStampUseCaseProvider.notifier);

    final selectedPlace = ref.watch(placeModelScopedProvider);
    final colors = context.colors;
    return switch (asyncState) {
      // 範囲内にいない場合のエラーダイアログ
      OverDistance() => AlertDialog(
          title: const Text(
            "失敗しました。",
          ),
          content: Text(
            "距離が離れすぎています。${selectedPlace.gpsMeter}m圏内に近づかなければ、スタンプを押すことはできません。",
          ),
        ),
      // その他のエラー
      Error(:final message) => const AlertDialog(
          title: Text(
            "失敗しました。",
          ),
          content: Text(
            "予期せぬエラーが発生しました。時間を置いて再度お試しください。",
          ),
        ),
      // 成功時
      Success() => AlertDialog(
          title: const Text(
            "スタンプを押しました。",
          ),
          actions: [
            TextButton(
                onPressed: () {
                  context.pop();
                },
                style: TextButton.styleFrom(foregroundColor: colors.primary),
                child: Text(t.close))
          ],
        ),
      // ローディング中
      Loading() => const SimpleDialog(
          title: Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text(
              "スタンプを押しています。",
            ),
          ),
          children: [
            Center(
              child: CircularProgressIndicator(),
            )
          ],
        ),
      // 初回の問い
      Initial() => AlertDialog(
          title: Text(
            "${selectedPlace.name}のスタンプを押しますか？",
          ),
          content: selectedPlace.typeRegisterStamp == TypeRegisterStamp.gps
              ? Text(
                  "${selectedPlace.gpsMeter}m圏内に近づくとスタンプを押すことができます。",
                )
              : null,
          actions: <Widget>[
            // キャンセルボタン
            TextButton(
              onPressed: () {
                context.pop();
              },
              style: TextButton.styleFrom(foregroundColor: colors.primary),
              child: Text(
                "戻る",
                style: TextStyle(color: colors.primary),
              ),
            ),
            // 登録ボタン
            TextButton(
              onPressed: () async {
                await notifier.invoke(selectedPlace.historicSpotId);
              },
              style: TextButton.styleFrom(foregroundColor: colors.primary),
              child: Text("はい", style: TextStyle(color: colors.primary)),
            )
          ],
        )
    };
  }
}
