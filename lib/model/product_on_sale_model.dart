import 'dart:ui';

import '../core/route_manager.dart';

class ProductOnSaleModel{
  final String medicineImage;
  final String medicineName;
  final String medicinePieces;
  final String medicinePrice;
  final String olderPrice;
  final RouteName route;

  ProductOnSaleModel({
    required this.medicineImage,
    required this.medicineName,
    required this.medicinePieces,
    required this.medicinePrice,
    required this.olderPrice,
    required this.route
  });
}