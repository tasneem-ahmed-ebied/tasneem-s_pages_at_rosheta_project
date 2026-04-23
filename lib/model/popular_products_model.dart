
import 'package:flutter/material.dart';

import '../core/route_manager.dart';

class PopularProductsModel{
  final String medicineImage;
  final String medicineName;
  final String medicinePieces;
  final String medicinePrice;
  final RouteName route;
  PopularProductsModel({
    required this.medicineImage,
    required this.medicineName,
    required this.medicinePieces,
    required this.medicinePrice,
    required this.route,
});
}