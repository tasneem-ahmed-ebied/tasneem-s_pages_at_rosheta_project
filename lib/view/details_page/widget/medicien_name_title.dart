import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/utils.dart';

class MedicineNameTitle extends StatelessWidget {
  const MedicineNameTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      Utils.oBHCombi,
      style: TextStyle(
        color: ColorManager.black,
        fontWeight: FontWeight.bold,
        fontSize: FontSizeManagers.f24,
      ),
    );
  }
}
