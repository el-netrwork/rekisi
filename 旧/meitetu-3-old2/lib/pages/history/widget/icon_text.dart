import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally/app/themes/custom_theme.dart';

import '../../../assets/assets.gen.dart';

class IconText extends HookConsumerWidget {
  const IconText(
      {super.key, required this.topWidget, required this.bottomWidget});

  final Widget topWidget;
  final Widget bottomWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.png.siori.image(height: 25, width: 25),
        Text("しおり",
            style: TextStyle(
              fontSize: 14,
              color: context.colors.primary,
              decorationColor: context.colors.primary,
            )),
      ],
    );
  }
}
