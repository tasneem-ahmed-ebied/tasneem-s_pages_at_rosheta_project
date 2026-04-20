import 'package:flutter/material.dart';

import '../../../core/assets_manager.dart';
import '../../../core/padding_manager.dart';

class AdvertismentOfQuickOrders extends StatelessWidget {
  const AdvertismentOfQuickOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: HorizontalPaddingManager.p8),
        child: Image.asset(AssetsValuesManager.viewCategory,));
  }
}
