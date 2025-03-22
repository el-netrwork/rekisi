import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stamp_rally/app/configuration/production/config_production.dart';
import 'package:stamp_rally/common/use_case/fetch_map_url_use_case.dart';
import '../../assets/assets.gen.dart';
import '../../common/components/custom_network_image.dart';
import '../../common/services/open_another_url_service.dart';

class MapPageContent extends HookConsumerWidget {
  const MapPageContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // ページ部分
          CustomNetworkImage.fromAsset('map.png', width: double.infinity),
          const GoogleMapIcon(),
        ],
      ),
    );
  }
}

class GoogleMapIcon extends HookConsumerWidget {
  const GoogleMapIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(fetchMapUrlUseCaseProvider);
    return switch (asyncValue) {
      AsyncData(:final value) => GestureDetector(
          onTap: () {
            OpenAnotherUrlService.openUrl(value.url);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            child: Assets.png.googleMap.image(width: 50),
          )),
      _ => Container()
    };
  }
}
