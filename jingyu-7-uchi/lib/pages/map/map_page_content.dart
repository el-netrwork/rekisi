import 'package:flutter/material.dart';
import 'package:stamp_rally/app/configuration/production/config_production.dart';
import 'package:stamp_rally/core/common/services/open_another_url_service.dart';

import '../../assets/assets.gen.dart';
import '../../core/common/components/custom_network_image.dart';

class MapPageContent extends StatelessWidget {
  const MapPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // ページ部分
          CustomNetworkImage.fromAsset('map.png', width: double.infinity),
          GestureDetector(
              onTap: () {
                OpenAnotherUrlService.openUrl(ConfigProduction.googleMapUrl);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 30),
                child: Assets.png.googleMaps.image(width: 50),
              )),
        ],
      ),
    );
  }
}
