import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/assets_manager.dart';
import 'package:tasneem_rosheta/core/route_manager.dart';
import 'package:tasneem_rosheta/core/utils.dart';
import 'package:tasneem_rosheta/model/main_components_model.dart';
import 'package:tasneem_rosheta/model/popular_products_model.dart';
import 'package:tasneem_rosheta/model/product_on_sale_model.dart';
import 'package:tasneem_rosheta/model/recent_doctors_model.dart';

import '../model/medicine_cart_model.dart';
import '../model/top_doctors_model.dart';
import 'navigation/app_navigation.dart';

class ConstValueManager {
  ConstValueManager._();

  static List<MainComponentsModel> listAllCategories = [
    MainComponentsModel(
      title: Utils.scan,
      icon: Icons.document_scanner_rounded,
      route: RouteName.detailsPage,
      //todo try route the page will go to another page
    ),
    MainComponentsModel(
      title: Utils.nearby,
      icon: Icons.place_outlined,
      route: RouteName.locationPage,
    ),
    MainComponentsModel(
      title: Utils.donates,
      icon: Icons.favorite_border,
      route: RouteName.detailsPage,

      //todo try route the page will go to another page
    ),
    MainComponentsModel(
      title: Utils.efforts,
      icon: Icons.star_border,
      route: RouteName.detailsPage,

      //todo try route the page will go to another page
    ),
    MainComponentsModel(
      title: Utils.doctors,
      icon: Icons.medical_services,
      route: RouteName.detailsPage,

      //todo try route the page will go to another page
    ),
  ];

  /////////////////////////////////
  static List<PopularProductsModel> listPopularProductSales = [
    PopularProductsModel(
      medicineImage: AssetsValuesManager.panadolImage,
      medicineName: Utils.panadol,
      medicinePieces: Utils.x20pcs,
      medicinePrice: Utils.$15x99,
      route: RouteName.detailsPage,
    ),
    PopularProductsModel(
      medicineImage: AssetsValuesManager.bodrexHerbalImage,
      medicineName: Utils.bodrexHerbal,
      medicinePieces: Utils.x75ml,
      medicinePrice: Utils.$7x99,
      route: RouteName.detailsPage,
    ),
    PopularProductsModel(
      medicineImage: AssetsValuesManager.konidenImage,
      medicineName: Utils.konidin,
      medicinePieces: Utils.x3pcs,
      medicinePrice: Utils.$5x99,
      route: RouteName.detailsPage,
    ),
  ];

  /////////////////////////////////////
  static List<ProductOnSaleModel> listProductsOnSale = [
    ProductOnSaleModel(
      medicineImage: AssetsValuesManager.obhCombi,
      medicineName: Utils.oBHCombi,
      medicinePieces: Utils.x20pcs,
      medicinePrice: Utils.$15x99,
      olderPrice: Utils.$10x99Before,
        route: RouteName.detailsPage

    ),
    ProductOnSaleModel(
      medicineImage: AssetsValuesManager.bodrexHerbalImage,
      medicineName: Utils.bodrexHerbal,
      medicinePieces: Utils.x75ml,
      medicinePrice: Utils.$7x99,
      olderPrice: Utils.$8x99Before,
        route: RouteName.detailsPage

    ),
    ProductOnSaleModel(
      medicineImage: AssetsValuesManager.konidenImage,
      medicineName: Utils.konidin,
      medicinePieces: Utils.x3pcs,
      medicinePrice: Utils.$5x99,
      olderPrice: Utils.$7x99Before,
        route: RouteName.detailsPage

    ),
  ];

  /////////////////////////////////////
  static List<TopDoctorsModel> listTopDoctors = [
    TopDoctorsModel(
      doctorImage: AssetsValuesManager.doctorHorizoImage,
      doctorName: Utils.drMarcusHorizon,
      doctorSpecialty: Utils.marcusSpecialty,
      doctorRate: Utils.marcusRate,
      doctorDistanceAway: Utils.marcusDistanceAway,
        route: RouteName.detailsPage

    ),
    TopDoctorsModel(
      doctorImage: AssetsValuesManager.doctorMariaImage,
      doctorName: Utils.drMariaElena,
      doctorSpecialty: Utils.mariaSpecialty,
      doctorRate: Utils.mariaRate,
      doctorDistanceAway: Utils.marcusDistanceAway,
        route: RouteName.detailsPage

    ),
    TopDoctorsModel(
      doctorImage: AssetsValuesManager.doctorSteviImage,
      doctorName: Utils.drSteviJessi,
      doctorSpecialty: Utils.steviSpecialty,
      doctorRate: Utils.steviRate,
      doctorDistanceAway: Utils.steviDistanceAway,
        route: RouteName.detailsPage

    ),
  ];

  /////////////////////////////////
  static List<RecentDoctorModel> listRecentDoctors = [
    RecentDoctorModel(
      drImage: AssetsValuesManager.doctorHorizoImage,
      drName: Utils.drMarcusHorizon,
     route: RouteName.detailsPage
    ),
    RecentDoctorModel(
      drImage: AssetsValuesManager.doctorMariaImage,
      drName: Utils.drMariaElena,
        route: RouteName.detailsPage

    ),
    RecentDoctorModel(
      drImage: AssetsValuesManager.doctorLukeImage,
      drName: Utils.drLuke,
      route: RouteName.detailsPage
    ),
    RecentDoctorModel(
      drImage: AssetsValuesManager.doctorSteviImage,
      drName: Utils.drSteviJessi,
      route: RouteName.detailsPage
  ),
  ];

  //////////////////////////////////////////////////
static List<MedicineCartModel> listMedicineCartModel = [
MedicineCartModel(medicineImage: AssetsValuesManager.bodrexHerbalImage, medicineName: Utils.bodrexHerbal, medicinePieces: Utils.x75ml, medicinePrice:Utils.$7x99, ),
MedicineCartModel(medicineImage: AssetsValuesManager.panadolImage, medicineName: Utils.panadol, medicinePieces: Utils.x20pcs, medicinePrice: Utils.$15x99)
];
}
