import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/height_manager.dart';
import 'package:tasneem_rosheta/core/utils.dart';

import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/padding_manager.dart';
import '../../widget/app_bar_widget.dart';
import '../widget/list_view_of_medicines_cart_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBarWidget(title: Utils.myCart),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: HorizontalPaddingManager.p20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
        [
          ListViewOfMedicinesCartWidget(),
          SizedBox(height: HeightManager.h20,),
          Text(
            Utils.paymentDetails,
            style: TextStyle(
              color: ColorManager.black,
              fontWeight: FontWeight.bold,
              fontSize: FontSizeManagers.f20,
            ),
          ),


        ]
        ),
      ),
    );
  }
}
