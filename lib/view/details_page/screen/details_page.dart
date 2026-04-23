import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/assets_manager.dart';
import 'package:tasneem_rosheta/core/color_manager.dart';
import 'package:tasneem_rosheta/core/font_manager.dart';
import 'package:tasneem_rosheta/core/height_manager.dart';
import 'package:tasneem_rosheta/core/icons_size_manager.dart';
import 'package:tasneem_rosheta/core/width_manager.dart';

import '../../../controller/count_controller.dart';
import '../../../core/padding_manager.dart';
import '../../../core/utils.dart';
import '../../widget/app_bar_widget.dart';
import '../widget/button_nav_bar_widget.dart';
import '../widget/description_of_medicine.dart';
import '../widget/medicien_name_title.dart';
import '../widget/medicine_image.dart';
import '../widget/medicine_ml_and_favorite.dart';
import '../widget/price_of_medicine_and_counter.dart';
import '../widget/rate_of_medicine.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtonNavBarWidget(),
      backgroundColor: ColorManager.white,
      appBar: AppBarWidget(title: Utils.details),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: HorizontalPaddingManager.p20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MedicineImage(),
            SizedBox(height: HeightManager.h10),
            MedicineNameTitle(),
            SizedBox(height: HeightManager.h10),
            MedicineMlAndFavorite(),
            SizedBox(height: HeightManager.h15,),
            RateOfMedicine(),
            SizedBox(height: HeightManager.h20,),
            PriceOfMedicineAndCounter(),
            SizedBox(height: HeightManager.h20,),
            DescriptionOfMedicine(),

          ],
        ),
      ),
    );
  }
}






