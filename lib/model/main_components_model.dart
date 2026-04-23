import 'package:flutter/cupertino.dart';

import '../core/route_manager.dart';

class MainComponentsModel{
  final String title;
  final IconData? icon;
  final RouteName route;
  MainComponentsModel({
    required this.title,
    this.icon,
    required this.route
});
}