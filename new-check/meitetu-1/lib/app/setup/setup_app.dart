import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally/app/configuration/configuration.dart';
import 'package:stamp_rally/app/setup/flavor.dart';
import 'package:stamp_rally/core/flogger.dart';

Future<void> setupApp({required Flavor flavor, required ProviderContainer providerContainer}) async {
  WidgetsFlutterBinding.ensureInitialized();

  Flogger.init(flavor);
  await Configuration.setup(flavor: flavor);

  PaintingBinding.instance.imageCache.maximumSize = 100;
  PaintingBinding.instance.imageCache.maximumSizeBytes = 200 << 20;
}
