import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/color_manager.dart';
import 'package:tasneem_rosheta/core/font_manager.dart';
import 'package:tasneem_rosheta/core/height_manager.dart';
import 'package:tasneem_rosheta/core/radius_manager.dart';

class MainButtonDesign extends StatelessWidget {
  const MainButtonDesign({super.key, required this.width, required this.text});
final double width;
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: HeightManager.h50,
      width: width,
      decoration: BoxDecoration(color: ColorManager.primary,borderRadius: BorderRadius.circular(RadiusValuesManager.r30)),
      child: Text(text,style: TextStyle(color: ColorManager.white,fontSize: FontSizeManagers.f15,fontWeight: FontWeight.bold),),
    );
  }
}
