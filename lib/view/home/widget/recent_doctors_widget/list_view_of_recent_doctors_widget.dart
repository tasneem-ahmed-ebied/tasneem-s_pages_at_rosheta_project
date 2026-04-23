import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/view/home/widget/product_on_sale_widgets/list_view_design_of_products_on_sale.dart';

import '../../../../core/const_values_manager.dart';
import '../../../../core/height_manager.dart';
import '../../../../core/width_manager.dart';
import 'list_view_design_of_recent_doctors.dart';

class ListViewOfRecentDoctorsWidget extends StatelessWidget {
  const ListViewOfRecentDoctorsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightManager.h124,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: ConstValueManager.listRecentDoctors.length,
        separatorBuilder: (context, index) => SizedBox(width: WidthManagers.w20),
        itemBuilder: (context, index) {
          return ListViewDesignOfRecentDoctors(
            model: ConstValueManager.listRecentDoctors[index],
          );
        },
      ),
    );
  }
}
