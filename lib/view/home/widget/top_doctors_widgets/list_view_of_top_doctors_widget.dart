import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/view/home/widget/product_on_sale_widgets/list_view_design_of_products_on_sale.dart';

import '../../../../core/const_values_manager.dart';
import '../../../../core/height_manager.dart';
import '../../../../core/padding_manager.dart';
import '../../../../core/width_manager.dart';
import 'list_view_design_of_top_doctors.dart';

class ListViewOfTopDoctorsWidget extends StatelessWidget {
  const ListViewOfTopDoctorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightManager.h230,
      child: ListView.separated(
        padding:  EdgeInsetsGeometry.symmetric(
          horizontal: HorizontalPaddingManager.p20,

        ),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: ConstValueManager.listTopDoctors.length,
        separatorBuilder: (context, index) => SizedBox(width: WidthManagers.w20),
        itemBuilder: (context, index) {
          return ListViewDesignOfTopDoctors(
            model: ConstValueManager.listTopDoctors[index],
          );
        },
      ),
    );
  }
}
