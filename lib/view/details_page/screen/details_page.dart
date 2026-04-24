import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/color_manager.dart';
import 'package:tasneem_rosheta/core/height_manager.dart';
import 'package:tasneem_rosheta/model/popular_products_model.dart';
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
    var popularModel = ModalRoute.of(context)?.settings.arguments;
    ////////
    if (popularModel is! PopularProductsModel ) {
      return Scaffold(body: Center(child: Text("Not found any product")));
    } else {
      /////////
      PopularProductsModel mPopular = popularModel;
      //////////
      return Scaffold(
        bottomNavigationBar: ButtonNavBarWidget(),
        backgroundColor: ColorManager.white,
        appBar: AppBarWidget(title: Utils.details),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: HorizontalPaddingManager.p20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MedicineImage(image: mPopular.medicineImage),
              SizedBox(height: HeightManager.h10),
              MedicineNameTitle(medicineName: mPopular.medicineName),
              SizedBox(height: HeightManager.h10),
              MedicineMlAndFavorite(mlMedicine: mPopular.medicinePieces,),
              SizedBox(height: HeightManager.h15),
              RateOfMedicine(
                initialRating: mPopular.rating,
                onRatingUpdate: (double value) {},
              ),
              SizedBox(height: HeightManager.h20),
              PriceOfMedicineAndCounter(priceMedicine: mPopular.medicinePrice,),
              SizedBox(height: HeightManager.h20),
              DescriptionOfMedicine(desc: mPopular.des),
            ],
          ),
        ),
      );
    }
  }
}
