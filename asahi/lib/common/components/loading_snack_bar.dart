import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoadingAction {
  static Future<void> showSnackBar(
      Future<void> Function() future,
      BuildContext context,
      String successMessage,
      String errorMessage,
      bool showSuccessSnackBar) async {
    try {
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

      await future();
      // Widgetがツリーに存在する場合に
      if (context.mounted) {
        if (showSuccessSnackBar) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.green,
              content: Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                  Text(
                    successMessage,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
              behavior: SnackBarBehavior.floating));
        }
      }
    } catch (e) {
      // Widgetがツリーに存在する場合に
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Row(
              children: [
                const Icon(
                  Icons.warning,
                  color: Colors.white,
                ),
                Text(
                  errorMessage,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
            behavior: SnackBarBehavior.floating));
      }
    } finally {
      if (context.mounted) {
        context.pop();
      }
    }
  }
}
