import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/utils.dart';

class AddressOfPharmacyText extends StatelessWidget {
  const AddressOfPharmacyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        Utils.locationOfPharmacy,
        style: TextStyle(
            fontSize: FontSizeManagers.f12,
            color: ColorManager.grey,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
