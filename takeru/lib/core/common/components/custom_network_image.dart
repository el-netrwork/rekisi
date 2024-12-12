import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:stamp_rally/app/configuration/configuration.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit,
    this.shape,
    this.border,
    this.borderRadius,
    this.overlay,
  });

  CustomNetworkImage.fromAsset(
    name, {
    super.key,
    this.width,
    this.height,
    this.fit,
    this.shape,
    this.border,
    this.borderRadius,
    this.overlay,
  }) : url = '${Configuration.instance.assetHostUrl}/image/$name';

  const CustomNetworkImage.square({
    super.key,
    required this.url,
    required double? size,
    this.fit,
    this.shape,
    this.border,
    this.borderRadius,
    this.overlay,
  })  : width = size,
        height = size;

  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final BoxShape? shape;
  final Border? border;
  final BorderRadius? borderRadius;
  final Widget? overlay;

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(
      url,
      width: width,
      height: height,
      fit: fit ?? BoxFit.cover,
      cache: true,
      shape: shape,
      border: border,
      borderRadius: borderRadius,
      loadStateChanged: (state) {
        switch (state.extendedImageLoadState) {
          case LoadState.loading:
            return const Center(child: CircularProgressIndicator());
          case LoadState.completed:
            if (overlay != null) {
              return Stack(
                children: [state.completedWidget, overlay!],
              );
            } else {
              return state.completedWidget;
            }
          case LoadState.failed:
            return const Icon(Icons.error);
        }
      },
    );
  }
}
