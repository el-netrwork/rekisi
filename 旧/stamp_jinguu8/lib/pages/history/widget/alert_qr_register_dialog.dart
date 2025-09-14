import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally/app/themes/custom_theme.dart';
import 'package:stamp_rally/features/place/provider/place_scoped_provider.dart';

import '../../home/home_page_child.dart';
import '../../home/home_state.dart';

class AlertQrRegisterDialog extends HookConsumerWidget {
  const AlertQrRegisterDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPlace = ref.watch(placeModelScopedProvider);
    final colors = context.colors;
    return AlertDialog(
      backgroundColor: colors.surface,
      surfaceTintColor: colors.surface,
      title: Text(
        "${selectedPlace.name}のスタンプを押しますか？",
        style: TextStyle(color: colors.onSurface),
      ),
      content: Text(
        "QRコードを読み取ってください。",
        style: TextStyle(color: colors.onSurface),
      ),
      actions: [
        TextButton(
            onPressed: () {
              context.pop();
              ref
                  .read(homeStateNotifierProvider.notifier)
                  .setPage(HomePageChild.codeScanner);
            },
            style: TextButton.styleFrom(foregroundColor: colors.primary),
            child: Text(
              "QRコード読み取り画面に遷移する。",
              style: TextStyle(color: colors.onSurface),
            ))
      ],
    );
  }
}
