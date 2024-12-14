import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/common/components/custom_network_image.dart';

class TopPageContent extends StatelessWidget {
  const TopPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomNetworkImage.fromAsset('TOP.png', width: double.infinity),
          const Gap(20),
          CustomNetworkImage.fromAsset('TOP-1.png', width: double.infinity),
        ],
      ),
    );
  }
}
