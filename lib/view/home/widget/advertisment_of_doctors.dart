import 'package:flutter/material.dart';

import '../../../core/assets_manager.dart';

class AdvertismentOfDoctors extends StatelessWidget {
  const AdvertismentOfDoctors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          //todo doctors category
        },
        child: Image.asset(AssetsValuesManager.advertismentOfDoctors,));
  }
}
