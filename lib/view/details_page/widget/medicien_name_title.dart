import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/utils.dart';

class MedicineNameTitle extends StatelessWidget {
  const MedicineNameTitle({
    super.key, required this.medicineName,
  });
  final String medicineName;

  @override
  Widget build(BuildContext context) {
    return Text(
      medicineName,
      style: TextStyle(
        color: ColorManager.black,
        fontWeight: FontWeight.bold,
        fontSize: FontSizeManagers.f24,
      ),
    );
  }
}
