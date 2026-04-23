import 'package:flutter/material.dart';

import '../../../core/assets_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/width_manager.dart';

class MedicineImage extends StatelessWidget {
  const MedicineImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        AssetsValuesManager.obhCombi,
        height: HeightManager.h200,
        width: WidthManagers.w500,
      ),
    );
  }
}
