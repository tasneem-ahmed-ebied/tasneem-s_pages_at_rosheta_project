import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/padding_manager.dart';
import '../../../core/utils.dart';
import '../../../model/popular_products_model.dart';
import '../../../model/product_on_sale_model.dart';
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
    final model = ModalRoute.of(context)?.settings.arguments;

    String image = "";
    String medicineName = "";
    String medicinePrice = "";
    String medicinePieces = "";
    double rating = 0.0;
    String description = "";

    if (model is PopularProductsModel) {
      image = model.medicineImage ?? "";
      medicineName = model.medicineName ?? "";
      medicinePrice = model.medicinePrice ?? "";
      medicinePieces = model.medicinePieces ?? "";
      rating = model.rating ?? 0.0;
      description = model.des ?? "";
    } else if (model is ProductOnSaleModel) {
      image = model.medicineImage ?? "";
      medicineName = model.medicineName ?? "";
      medicinePrice = model.medicinePrice ?? "";
      medicinePieces = model.medicinePieces ?? "";
      rating = model.rating ?? 0.0;
      description = model.des ?? "";
    }

    if (image.isEmpty) {
      return const Scaffold(
        body: Center(child: Text("Not found any product")),
      );
    }

    return Scaffold(
      bottomNavigationBar: const ButtonNavBarWidget(),
      backgroundColor: ColorManager.white,
      appBar: AppBarWidget(title: Utils.details),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: HorizontalPaddingManager.p20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MedicineImage(image: image),
            SizedBox(height: HeightManager.h10),

            MedicineNameTitle(medicineName: medicineName),
            SizedBox(height: HeightManager.h10),

            MedicineMlAndFavorite(
              mlMedicine: medicinePieces,
            ),
            SizedBox(height: HeightManager.h15),

            RateOfMedicine(
              initialRating: rating,
              onRatingUpdate: (double value) {},
            ),
            SizedBox(height: HeightManager.h20),

            PriceOfMedicineAndCounter(
              priceMedicine: medicinePrice,
            ),
            SizedBox(height: HeightManager.h20),

            DescriptionOfMedicine(desc: description),
          ],
        ),
      ),
    );
  }
}