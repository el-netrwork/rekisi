import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension GlobalKeyEntention on GlobalKey {
  // Widgetを画像化するメソッド
  Future<Uint8List> createWidgetImage() async {
    final boundary =
        currentContext!.findRenderObject()! as RenderRepaintBoundary;
    await Future.delayed(const Duration(milliseconds: 300));
    final image = await boundary.toImage();
    final byteData = await image.toByteData(format: ImageByteFormat.png);
    final pngBytes = byteData!.buffer.asUint8List();
    return pngBytes;
  }
}

extension AsyncValueExtension<T> on AsyncValue<T> {
  Widget mapContentState<R>({
    Widget Function(AsyncLoading<T> loading)? loading,
    Widget Function(AsyncError<T> error)? error,
    required Widget Function(AsyncData<T> data) data,
    required Refreshable provider,
  }) {
    return map(
      loading: loading ??
          (loading) => const Center(child: CircularProgressIndicator()),
      error: error ??
          (error) {
            if (error.isRefreshing) {
              return const Center(child: CircularProgressIndicator());
            }
            return Row(
                children: [const Icon(Icons.error), Text(error.toString())]);
          },
      data: data,
    );
  }
}
