import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/color_manager.dart';
import 'package:tasneem_rosheta/core/font_manager.dart';
import 'package:tasneem_rosheta/model/recent_doctors_model.dart';

import '../../../../core/height_manager.dart';

class ListViewDesignOfRecentDoctors extends StatelessWidget {
  const ListViewDesignOfRecentDoctors({super.key, required this.model});
final RecentDoctorModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      InkWell(
        onTap:  model.onTap,
        child: Align(
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: HeightManager.h40,
            backgroundImage: AssetImage(model.drImage),
          ),
        ),

      ),
      SizedBox(height: HeightManager.h10,),
      Text(model.drName,style: TextStyle(color: ColorManager.grey,fontSize: FontSizeManagers.f15,fontWeight: FontWeight.bold),)

    ],
    );
  }
}
