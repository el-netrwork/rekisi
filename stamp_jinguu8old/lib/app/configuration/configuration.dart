import 'package:flutter/foundation.dart';
import 'package:stamp_rally/app/configuration/develop/config_develop.dart';
import 'package:stamp_rally/app/configuration/production/config_production.dart';
import 'package:stamp_rally/app/setup/flavor.dart';

class Configuration {
  static Configuration? _instance;

  static Configuration get instance {
    if (_instance == null) {
      throw Exception(
          'Configuration not set. You need to call `setup` before using it.');
    }
    return _instance!;
  }

  Configuration({required this.flavor});

  final Flavor flavor;

  bool get releaseMode => kReleaseMode && flavor == Flavor.production;

  // int get validMeter => switch (flavor) {
  //       Flavor.develop => ConfigDevelop.validMeter,
  //       Flavor.production => ConfigProduction.validMeter,
  //     };

  String get assetHostUrl => switch (flavor) {
        Flavor.develop => ConfigDevelop.assetHostUrl,
        Flavor.production => ConfigProduction.assetHostUrl,
      };

  static Future<void> setup({required Flavor flavor}) async {
    _instance = Configuration(flavor: flavor);
  }
}
