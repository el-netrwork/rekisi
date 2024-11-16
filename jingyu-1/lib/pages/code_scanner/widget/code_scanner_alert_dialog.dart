import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally/app/themes/custom_theme.dart';
import 'package:stamp_rally/assets/localization/strings.g.dart';

class CodeScannerAlertDialog {
  CodeScannerAlertDialog(this.context);

  final BuildContext context;

  Future<bool?> show() async {
    return await showDialog<bool>(
      context: context,
      builder: (context) => createAlertDialog(),
    );
  }

  Widget createAlertDialog() {
    final colors = context.colors;
    return AlertDialog(
      content: SingleChildScrollView(
        child: Text(t.alert.outOfBounds,
            style: context.textStyles.body
                .copyWith(color: colors.onSurface, fontSize: 19)),
      ),
      backgroundColor: colors.surface,
      surfaceTintColor: colors.surface,
      actions: [
        Consumer(
          builder: (context, ref, _) => TextButton(
            onPressed: () {
              context.pop();
            },
            style: TextButton.styleFrom(foregroundColor: colors.primary),
            child: Text(t.close),
          ),
        ),
      ],
    );
  }
}
