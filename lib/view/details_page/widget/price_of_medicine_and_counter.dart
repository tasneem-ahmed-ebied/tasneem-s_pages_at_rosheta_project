import 'package:flutter/cupertino.dart';
import 'package:tasneem_rosheta/core/icons_size_manager.dart';

import '../../../controller/count_controller.dart';
import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';

class PriceOfMedicineAndCounter extends StatelessWidget {
  const PriceOfMedicineAndCounter({super.key, required this.priceMedicine});
final String priceMedicine;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CounterControl(
          initialValue: 1,
          iconSize: IconSizeManager.i50,
          numberSize: FontSizeManagers.f30,
          onChanged: (value) {
            //*the value will change
          },
        ),
        Text(
          priceMedicine,
          style: TextStyle(
            color: ColorManager.black,
            fontSize: FontSizeManagers.f30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
