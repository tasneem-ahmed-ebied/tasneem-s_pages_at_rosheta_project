import 'package:flutter/cupertino.dart';

import '../../../controller/count_controller.dart';
import '../../../core/color_manager.dart';
import '../../../core/font_manager.dart';
import '../../../core/utils.dart';

class PriceOfMedicineAndCounter extends StatelessWidget {
  const PriceOfMedicineAndCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CounterControl(
          initialValue: 1,
          onChanged: (value) {
            //*the value will change
          },
        ),
        Text(Utils.$7x99,style: TextStyle(color: ColorManager.black,fontSize: FontSizeManagers.f30,fontWeight: FontWeight.bold),),
      ],
    );
  }
}
