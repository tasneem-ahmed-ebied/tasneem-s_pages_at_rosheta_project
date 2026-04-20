import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/assets_manager.dart';
import 'package:tasneem_rosheta/core/font_manager.dart';
import 'package:tasneem_rosheta/core/icons_size_manager.dart';
import 'package:tasneem_rosheta/core/padding_manager.dart';
import 'package:tasneem_rosheta/core/radius_manager.dart';
import 'package:tasneem_rosheta/core/width_manager.dart';
import '../../../core/color_manager.dart';
import '../../../core/const_values_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/utils.dart';
import '../../widget/app_bar_widget.dart';
import '../../widget/text_title_of_categories.dart';
import '../widget/advertisment_of_quick_orders.dart';
import '../widget/list_view_main_components.dart';
import '../widget/popular_product_widgets/list_view_design_of_popular_madicines.dart';
import '../widget/popular_product_widgets/widget_of_popular_medicines_widget.dart';
import '../widget/text_field_search_homepage_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Utils.home,
        icon: Icons.shopping_cart_rounded,
      ),
      backgroundColor: ColorManager.likeWhiteBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: HorizontalPaddingManager.p10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: HeightManager.h20),
              TextFieldSearchHomePage(),
              SizedBox(height: HeightManager.h20),
              ListViewMainComponents(),
              SizedBox(height: HeightManager.h15),
              AdvertismentOfQuickOrders(),
              SizedBox(height: HeightManager.h10),
              TextTitleOfCategories(title: Utils.popularProduct,),
              SizedBox(height: HeightManager.h15),
              WidgetOfPopularMedicinesWidget(),
              SizedBox(height: HeightManager.h20),
              TextTitleOfCategories(title: Utils.productOnSale,),


            ],
          ),
        ),
      ),
    );
  }
}



