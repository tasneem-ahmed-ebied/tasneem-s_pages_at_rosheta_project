import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/color_manager.dart';
import 'package:tasneem_rosheta/core/height_manager.dart';
import 'package:tasneem_rosheta/core/icons_size_manager.dart';
import 'package:tasneem_rosheta/core/navigation/app_navigation.dart';
import 'package:tasneem_rosheta/core/padding_manager.dart';
import 'package:tasneem_rosheta/core/radius_manager.dart';
import 'package:tasneem_rosheta/core/route_manager.dart';
import 'package:tasneem_rosheta/core/width_manager.dart';
import 'package:tasneem_rosheta/view/widget/main_button_design.dart';

import '../../../core/utils.dart';

class ButtonNavBarWidget extends StatelessWidget {
  const ButtonNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsetsGeometry.all(PaddingManager.p20),
        child: SizedBox(
          height: HeightManager.h50,
          child: Row(
            children: [
              Container(
                height: HeightManager.h50,
                width: WidthManagers.w50,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: ColorManager.lightBlue,borderRadius: BorderRadius.circular(RadiusValuesManager.r12)),
                child: Icon(CupertinoIcons.cart,size: IconSizeManager.i25,),
              ),
              SizedBox(width: WidthManagers.w17,),
              InkWell(
                  onTap: () {
                    AppNavigation.pushReplacementNamed(context, RouteName.cartPage);
                  },
                  child: MainButtonDesign(width: WidthManagers.w252, text: Utils.buyNow, height: HeightManager.h50,))
            ],
          ),
        ),
      ),
    );
  }
}
