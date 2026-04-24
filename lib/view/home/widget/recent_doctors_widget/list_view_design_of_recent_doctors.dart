import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/color_manager.dart';
import 'package:tasneem_rosheta/core/font_manager.dart';
import 'package:tasneem_rosheta/core/width_manager.dart';
import 'package:tasneem_rosheta/model/recent_doctors_model.dart';

import '../../../../core/height_manager.dart';
import '../../../../core/navigation/app_navigation.dart';

class ItemRecentDoctor extends StatelessWidget {
  const ItemRecentDoctor({super.key, required this.model});

  final RecentDoctorModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: WidthManagers.w100,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              AppNavigation.pushNamed(context, model.route);
            },
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: HeightManager.h40,
                backgroundImage: AssetImage(model.drImage),
              ),
            ),
          ),
          SizedBox(height: HeightManager.h10),
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              model.drName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: ColorManager.grey,
                fontSize: FontSizeManagers.f15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
