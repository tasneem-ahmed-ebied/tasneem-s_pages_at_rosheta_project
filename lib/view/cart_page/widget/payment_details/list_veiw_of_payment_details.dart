import 'package:flutter/material.dart';

import '../../../../core/const_values_manager.dart';
import '../../../../core/height_manager.dart';
import '../../../../core/padding_manager.dart';
import '../../../../core/width_manager.dart';
import 'design_of_list_view_payment_details.dart';

class ListViewOfPaymentDetails extends StatelessWidget {
  const ListViewOfPaymentDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HeightManager.h100,
      child: ListView.separated(
        padding:  EdgeInsetsGeometry.symmetric(
          horizontal: HorizontalPaddingManager.p20,

        ),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: ConstValueManager.listPaymentDetails.length,
        separatorBuilder: (context, index) => SizedBox(width: WidthManagers.w20),
        itemBuilder: (context, index) {
          return DesignOfListViewPaymentDetails(
            model: ConstValueManager.listPaymentDetails[index],
          );
        },
      ),
    );
  }
}
