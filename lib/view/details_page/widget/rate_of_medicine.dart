import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/utils.dart';
import '../../../core/width_manager.dart';

class RateOfMedicine extends StatelessWidget {
  const RateOfMedicine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(
            4,
                (index) => const Icon(
              Icons.star,
              color: ColorManager.primary,
            ),
          ),

        ),
        SizedBox(width: WidthManagers.w4,),
        Text(Utils.r400,style: TextStyle(color: ColorManager.primary,fontWeight: FontWeight.bold,fontSize: FontSizeManagers.f16),)
      ],
    );
  }
}
