import 'package:flutter/material.dart';

import '../../../core/assets_manager.dart';

class AdvertismentOfQuickOrders extends StatelessWidget {
  const AdvertismentOfQuickOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          //todo category of medicines
        },
        child: Image.asset(AssetsValuesManager.advertismentViewCategory,));
  }
}
