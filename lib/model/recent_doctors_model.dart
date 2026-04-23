import 'dart:ui';

class RecentDoctorModel{
  final String drImage;
  final String drName;
  final VoidCallback? onTap;
  RecentDoctorModel({
    required this.drImage,
    required this.drName,
    required this.onTap

  });
}