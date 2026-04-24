import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/navigation/app_navigation.dart';
import 'package:tasneem_rosheta/core/padding_manager.dart';
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
        Padding(
          padding:EdgeInsets.symmetric(horizontal: PaddingManager.p5),
          child: InkWell(
            onTap: () {
              AppNavigation.pushNamed(context, model.route);
            },
            child: Container(
              alignment: Alignment.center,
              width: WidthManagers.w65,
              height: HeightManager.h60,
              decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(RadiusValuesManager.r15),
                border: Border.all(
                  color: ColorManager.semiDarkGray
                )

              ),
              child: Icon(model.icon,size: FontSizeManagers.f25,color: ColorManager.primary,),
            ),
          ),
        ),
        SizedBox(height: HeightManager.h7,),
        Text(model.title,style: TextStyle(color: ColorManager.primary,fontSize: FontSizeManagers.f13,fontWeight: FontWeight.w400),)
      ],
    );
  }
}
