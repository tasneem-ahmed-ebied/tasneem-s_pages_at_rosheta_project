import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/width_manager.dart';

import '../../../core/assets_manager.dart';
import '../../../core/color_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/navigation/app_navigation.dart';
import '../../../core/route_manager.dart';
import '../../../core/utils.dart';
import '../widget/continue_as_widget.dart';

class ChoosePage extends StatelessWidget {
  const ChoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ColorManager.backGround1, ColorManager.backGround2],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetsValuesManager.logo,),
            ContinueAsWidget(title: Utils.continueAsUser, description: Utils.browseAndOrderMedicines, icon: Icons.people,onTap: () {
              //todo page to login in user
              AppNavigation.pushNamed(context , RouteName.homePage);
            },),
            SizedBox(height: HeightManager.h20),
            ContinueAsWidget(title: Utils.continueAsPharmacy, description: Utils.manageYourPharmacy, icon: Icons.apartment,onTap: () {
              //todo page to login in pharmacy
            },),

          ],
        ),
      ),
    );
  }
}
