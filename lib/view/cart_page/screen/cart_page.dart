import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/height_manager.dart';
import 'package:tasneem_rosheta/core/radius_manager.dart';
import 'package:tasneem_rosheta/core/utils.dart';
import 'package:tasneem_rosheta/core/width_manager.dart';
import 'package:tasneem_rosheta/view/widget/main_button_design.dart';

import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/padding_manager.dart';
import '../../widget/app_bar_widget.dart';
import '../../widget/normalTitleDesign.dart';
import '../widget/list_view_of_medicines_cart_widget.dart';
import '../widget/payment_details/button_nav_bar_cart_page.dart';
import '../widget/payment_details/list_veiw_of_payment_details.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtonNavBarCartPage(),
      backgroundColor: ColorManager.white,
      appBar: AppBarWidget(title: Utils.myCart),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: HorizontalPaddingManager.p20,vertical: VerticalPaddingManager.p20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListViewOfMedicinesCartWidget(),
            SizedBox(height: HeightManager.h10),
            NormalTitleDesign(text: Utils.paymentDetails),
            SizedBox(height: HeightManager.h20),
            ListViewOfPaymentDetails(),
            Divider(thickness: 1, color: ColorManager.semiDarkGray),
            //////////////////////////////////
            SizedBox(height: HeightManager.h10),
            NormalTitleDesign(text: Utils.paymentMethod),
            SizedBox(height: HeightManager.h20,),
            //////////////////////////////
            Container(
              height: HeightManager.h61,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(RadiusValuesManager.r20),
                border: Border.all(color: ColorManager.semiDarkGray,width: 2)

              ),
              child: Padding(
                padding:EdgeInsetsGeometry.symmetric(horizontal: HorizontalPaddingManager.p20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Utils.visa,style: TextStyle(color: ColorManager.darkBlue,fontWeight: FontWeight.w800,fontSize: FontSizeManagers.f20),),
                    Text(Utils.change,style: TextStyle(color: ColorManager.grey,fontWeight: FontWeight.bold,fontSize: FontSizeManagers.f16),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
