import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/utils.dart';

class DescriptionOfMedicine extends StatelessWidget {
  const DescriptionOfMedicine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            Utils.description,
            style: TextStyle(
              color: ColorManager.black,
              fontWeight: FontWeight.bold,
              fontSize: FontSizeManagers.f20,
            ),
          ),
        ),
        SizedBox(height: HeightManager.h15,),
        Text(Utils.obhDescription,style: TextStyle(color: ColorManager.grey,fontWeight: FontWeight.bold,fontSize: FontSizeManagers.f15),),

      ],
    );
  }
}
