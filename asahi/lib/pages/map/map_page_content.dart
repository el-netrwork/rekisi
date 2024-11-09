import 'package:flutter/material.dart';
import 'package:stamp_rally/common/components/custom_network_image.dart';

class MapPageContent extends StatelessWidget {
  const MapPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomNetworkImage.fromAsset('map.png', width: double.infinity),
    );
  }
}
