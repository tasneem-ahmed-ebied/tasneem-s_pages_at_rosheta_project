import 'dart:ui';

class ProductOnSaleModel{
  final String medicineImage;
  final String medicineName;
  final String medicinePieces;
  final String medicinePrice;
  final String olderPrice;
  final VoidCallback? onTap;

  ProductOnSaleModel({
    required this.medicineImage,
    required this.medicineName,
    required this.medicinePieces,
    required this.medicinePrice,
    required this.olderPrice,
    required this.onTap
  });
}