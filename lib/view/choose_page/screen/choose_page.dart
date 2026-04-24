import 'package:flutter/cupertino.dart';
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
            colors: [ColorManager.backGround1, ColorManager.lightPrimary],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              AssetsValuesManager.logo,
              height: HeightManager.h300,
              width: WidthManagers.w255,
            ),
            ContinueAsWidget(
              choice: Utils.user,
              description: Utils.browseAndOrderMedicines,
              icon: Icons.people,
              onTap: () {
                //todo page to login in user
                AppNavigation.pushNamed(context, RouteName.homePage);
              },
            ),
            SizedBox(height: HeightManager.h20),
            ContinueAsWidget(
              choice: Utils.pharmacy,
              description: Utils.manageYourPharmacy,
              icon: Icons.apartment,
              onTap: () {
                //todo page to login in pharmacy
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) => PopScope(
                    canPop: false,
                    child: Dialog(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            onPressed: () {

                            },
                            child: Text("No"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                             Navigator.of(context).pop();
                            },
                            child: Text("yes"),
                          ),
                        ],
                      ),
                    ),
                  ),
                );

                // showModalBottomSheet(
                //   context: context,
                //   isDismissible: false,
                //   builder: (context) => SizedBox(
                //     width: double.infinity,
                //     child: Column(
                //       children: [
                //         ElevatedButton(
                //           onPressed: () {
                //             Navigator.pop(context);
                //           },
                //           child: Text("back"),
                //         ),
                //         Text("Adsf"),
                //       ],
                //     ),
                //   ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
