import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/model/product_on_sale_model.dart';

import '../../../../core/color_manager.dart';
import '../../../../core/font_manager.dart';
import '../../../../core/height_manager.dart';
import '../../../../core/icons_size_manager.dart';
import '../../../../core/navigation/app_navigation.dart';
import '../../../../core/padding_manager.dart';
import '../../../../core/radius_manager.dart';
import '../../../../core/width_manager.dart';

class ListViewDesignOfProductsOnSale extends StatelessWidget {
  const ListViewDesignOfProductsOnSale({
    super.key, required this.model,
  });
  final ProductOnSaleModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HeightManager.h230,
      width: WidthManagers.w171,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorManager.semiDarkGray,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(RadiusValuesManager.r15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: HorizontalPaddingManager.p8,
          vertical: VerticalPaddingManager.p10,
        ),
        child: InkWell(
          onTap: () {
            AppNavigation.pushNamed(context, model.route);
          },
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(model.medicineImage,height: HeightManager.h100,)),
                SizedBox(height: HeightManager.h20,),
                Text(model.medicineName,style: TextStyle(color: ColorManager.black,fontSize: FontSizeManagers.f16,fontWeight: FontWeight.bold),),
                Text(model.medicinePieces,style: TextStyle(color: ColorManager.grey,fontSize: FontSizeManagers.f14,fontWeight: FontWeight.bold),),
                SizedBox(height: HeightManager.h20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(model.medicinePrice,style: TextStyle(color: ColorManager.primary,fontSize: FontSizeManagers.f18,fontWeight: FontWeight.bold),),
                    Text(model.olderPrice,style: TextStyle(color: ColorManager.grey,fontSize: FontSizeManagers.f16,decoration: TextDecoration.lineThrough,fontWeight: FontWeight.bold),),
                    InkWell(
                        onTap: () {
                          //todo cart page
                        },
                        child: Icon(Icons.add_box_rounded,color: ColorManager.primary,size: IconSizeManager.i25,))
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
