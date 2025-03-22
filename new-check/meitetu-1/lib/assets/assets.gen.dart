/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/complete.png
  AssetGenImage get complete => const AssetGenImage('assets/png/complete.png');

  /// File path: assets/png/complete_card_sign.png
  AssetGenImage get completeCardSign =>
      const AssetGenImage('assets/png/complete_card_sign.png');

  /// File path: assets/png/complete_card_up.png
  AssetGenImage get completeCardUp =>
      const AssetGenImage('assets/png/complete_card_up.png');

  /// File path: assets/png/conguraturation.png
  AssetGenImage get conguraturation =>
      const AssetGenImage('assets/png/conguraturation.png');

  /// File path: assets/png/dummy_item_bg.png
  AssetGenImage get dummyItemBg =>
      const AssetGenImage('assets/png/dummy_item_bg.png');

  /// File path: assets/png/get.png
  AssetGenImage get get => const AssetGenImage('assets/png/get.png');

  /// File path: assets/png/google_map.png
  AssetGenImage get googleMap =>
      const AssetGenImage('assets/png/google_map.png');

  /// File path: assets/png/siori.png
  AssetGenImage get siori => const AssetGenImage('assets/png/siori.png');

  /// File path: assets/png/stamp.png
  AssetGenImage get stamp => const AssetGenImage('assets/png/stamp.png');

  /// File path: assets/png/worship_card.png
  AssetGenImage get worshipCard =>
      const AssetGenImage('assets/png/worship_card.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        complete,
        completeCardSign,
        completeCardUp,
        conguraturation,
        dummyItemBg,
        get,
        googleMap,
        siori,
        stamp,
        worshipCard
      ];
}

class Assets {
  Assets._();

  static const $AssetsPngGen png = $AssetsPngGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
