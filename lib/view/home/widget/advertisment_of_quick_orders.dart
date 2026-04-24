import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/color_manager.dart';
import 'package:tasneem_rosheta/core/radius_manager.dart';
import 'package:tasneem_rosheta/core/width_manager.dart';
import 'package:tasneem_rosheta/view/widget/main_button_design.dart';

import '../../../core/assets_manager.dart';
import '../../../core/padding_manager.dart';

class AdvertismentOfQuickOrders extends StatelessWidget {
  const AdvertismentOfQuickOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.symmetric(
        horizontal: HorizontalPaddingManager.p20,
      ),
      padding: EdgeInsetsGeometry.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("we"),
                MainButtonDesign(
                  width: MediaQuery.of(context).size.width /3,
                  text: "text",
                ),
              ],
            ),
          ),
          SizedBox(width: WidthManagers.w5),
          Image.asset(AssetsValuesManager.doctorLukeImage),
        ],
      ),
      decoration: BoxDecoration(
        color: ColorManager.lightBlue,
        borderRadius: BorderRadius.circular(RadiusValuesManager.r15),
      ),
    );
  }
}
