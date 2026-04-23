import 'dart:ui';

class TopDoctorsModel{
  final String doctorImage;
  final String doctorName;
  final String doctorSpecialty;
  final String doctorRate;
  final String doctorDistanceAway;
  final VoidCallback? onTap;
  TopDoctorsModel({
    required this.doctorImage,
    required this.doctorName,
    required this.doctorSpecialty,
    required this.doctorRate,
    required this.doctorDistanceAway,
    required this.onTap,
});
}
