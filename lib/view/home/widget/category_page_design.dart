import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/model/main_components_model.dart';

import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/radius_manager.dart';
import '../../../core/width_manager.dart';

class CategoriesBoxDesign extends StatelessWidget {
  const CategoriesBoxDesign({super.key, required this.model});
  final MainComponentsModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: WidthManagers.w80,
          height: HeightManager.h80,
          decoration: BoxDecoration(
              color: ColorManager.grey,
              borderRadius: BorderRadius.circular(RadiusValuesManager.r15)

          ),
          child: Icon(model.icon,size: FontSizeManagers.f25,color: ColorManager.black,),
        ),
        SizedBox(height: HeightManager.h7,),
        Text(model.title,style: TextStyle(color: ColorManager.black,fontSize: FontSizeManagers.f13,fontWeight: FontWeight.w400),)
      ],
    );
  }
}
