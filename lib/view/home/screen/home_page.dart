import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/assets_manager.dart';
import 'package:tasneem_rosheta/core/const_values_manager.dart';
import 'package:tasneem_rosheta/core/width_manager.dart';
import 'package:tasneem_rosheta/view/home/widget/category_page_design.dart';

import '../../../core/color_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/utils.dart';
import '../../widget/app_bar_widget.dart';
import '../widget/text_field_search_homepage_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: Utils.home),
      backgroundColor: ColorManager.likeWhiteBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: HeightManager.h20,),
            TextFieldSearchHomePage(),
            SizedBox(height: HeightManager.h20,),
            SizedBox(
              height: HeightManager.h100,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: ConstValueManager.listAllCategories.length,
                separatorBuilder: (context, index) => SizedBox(width: WidthManagers.w20),
                itemBuilder: (context, index) {
                  return CategoriesBoxDesign(
                    model: ConstValueManager.listAllCategories[index],
                  );
                },
              ),
            ),
            SizedBox(height: HeightManager.h15,),
            Image.asset(AssetsValuesManager.viewCategory,)
          ],
        ),
      ),
    );
  }
}

