import 'dart:ui';

class PopularProductsModel{
  final String medicineImage;
  final String medicineName;
  final String medicinePieces;
  final String medicinePrice;
  final VoidCallback? onTap;


  PopularProductsModel({
    required this.medicineImage,
    required this.medicineName,
    required this.medicinePieces,
    required this.medicinePrice,
    required this.onTap,
});
}