import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/color_manager.dart';
import 'package:tasneem_rosheta/core/font_manager.dart';
import 'package:tasneem_rosheta/core/icons_size_manager.dart';
import 'package:tasneem_rosheta/core/width_manager.dart';

class CounterControl extends StatefulWidget {
  final int initialValue;
  final Function(int)? onChanged;

  const CounterControl({super.key, this.initialValue = 0, this.onChanged});

  @override
  _CounterControlState createState() => _CounterControlState();
}

class _CounterControlState extends State<CounterControl> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = widget.initialValue;
  }

  void increment() {
    setState(() {
      count++;
    });
    widget.onChanged?.call(count);
  }

  void decrement() {
    if (count > 0) {
      setState(() {
        count--;
      });
      widget.onChanged?.call(count);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: decrement,
          icon: Icon(Icons.remove, size: IconSizeManager.i50),
        ),

        Text('$count', style: TextStyle(fontSize: FontSizeManagers.f30,fontWeight: FontWeight.bold)),

        SizedBox(width: WidthManagers.w8),
        InkWell(
          onTap: () {
            increment();
          },
          child: Icon(
            Icons.add_box_rounded,
            color: ColorManager.primary,
            size: IconSizeManager.i50,
          ),
        ),
      ],
    );
  }
}
