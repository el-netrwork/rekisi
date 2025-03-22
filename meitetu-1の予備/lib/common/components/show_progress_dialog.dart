import 'package:flutter/material.dart';

// 全画面プログレスダイアログを表示する関数
void showProgressDialog(context) {
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
}

