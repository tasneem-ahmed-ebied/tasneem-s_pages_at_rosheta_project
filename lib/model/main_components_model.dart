import 'package:flutter/cupertino.dart';

class MainComponentsModel{
  final String title;
  final IconData? icon;
  final VoidCallback? onTap;
  MainComponentsModel({
    required this.title,
    this.icon,
    required this.onTap
});
}