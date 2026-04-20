import 'package:flutter/material.dart';

import '../../../../core/const_values_manager.dart';
import '../../../../core/height_manager.dart';
import '../../../../core/width_manager.dart';
import 'list_view_design_of_popular_madicines.dart';

class WidgetOfPopularMedicinesWidget extends StatelessWidget {
  const WidgetOfPopularMedicinesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightManager.h230,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: ConstValueManager.listPopularProductSales.length,
        separatorBuilder: (context, index) => SizedBox(width: WidthManagers.w20),
        itemBuilder: (context, index) {
          return ListViewDesignOfPopularMedicines(
            model: ConstValueManager.listPopularProductSales[index],
          );
        },
      ),
    );
  }
}
