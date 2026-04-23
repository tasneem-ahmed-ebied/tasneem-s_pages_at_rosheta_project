import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/assets_manager.dart';
import 'package:tasneem_rosheta/core/utils.dart';
import 'package:tasneem_rosheta/model/main_components_model.dart';
import 'package:tasneem_rosheta/model/popular_products_model.dart';
import 'package:tasneem_rosheta/model/product_on_sale_model.dart';
import 'package:tasneem_rosheta/model/recent_doctors_model.dart';

import '../model/top_doctors_model.dart';

class ConstValueManager {
  ConstValueManager._();

  static List<MainComponentsModel> listAllCategories = [
    MainComponentsModel(
      title: Utils.scan,
      icon: Icons.document_scanner_rounded,
      onTap: () {},
    ),
    MainComponentsModel(
      title: Utils.nearby,
      icon: Icons.place_outlined,
      onTap: () {},
    ),
    MainComponentsModel(
      title: Utils.donates,
      icon: Icons.favorite_border,
      onTap: () {},
    ),
    MainComponentsModel(
      title: Utils.efforts,
      icon: Icons.star_border,
      onTap: () {},
    ),
    MainComponentsModel(
      title: Utils.doctors,
      icon: Icons.medical_services,
      onTap: () {},
    ),
  ];

  /////////////////////////////////
  static List<PopularProductsModel> listPopularProductSales = [
    PopularProductsModel(
      medicineImage: AssetsValuesManager.panadolImage,
      medicineName: Utils.panadol,
      medicinePieces: Utils.x20pcs,
      medicinePrice: Utils.$15x99,
      onTap: () {},
    ),
    PopularProductsModel(
      medicineImage: AssetsValuesManager.bodrexHerbalImage,
      medicineName: Utils.bodrexHerbal,
      medicinePieces: Utils.x100pcs,
      medicinePrice: Utils.$7x99,
      onTap: () {},
    ),
    PopularProductsModel(
      medicineImage: AssetsValuesManager.konidenImage,
      medicineName: Utils.konidin,
      medicinePieces: Utils.x3pcs,
      medicinePrice: Utils.$5x99,
      onTap: () {},
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
      onTap: () {
        //todo to product details page
      },
    ),
    ProductOnSaleModel(
      medicineImage: AssetsValuesManager.bodrexHerbalImage,
      medicineName: Utils.bodrexHerbal,
      medicinePieces: Utils.x100pcs,
      medicinePrice: Utils.$7x99,
      olderPrice: Utils.$8x99Before,
      onTap: () {},
    ),
    ProductOnSaleModel(
      medicineImage: AssetsValuesManager.konidenImage,
      medicineName: Utils.konidin,
      medicinePieces: Utils.x3pcs,
      medicinePrice: Utils.$5x99,
      olderPrice: Utils.$7x99Before,
      onTap: () {},
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
      onTap: () {
        //todo doctor details
      },
    ),
    TopDoctorsModel(
      doctorImage: AssetsValuesManager.doctorMariaImage,
      doctorName: Utils.drMariaElena,
      doctorSpecialty: Utils.mariaSpecialty,
      doctorRate: Utils.mariaRate,
      doctorDistanceAway: Utils.marcusDistanceAway,
      onTap: () {
        //todo doctor details
      },
    ),
    TopDoctorsModel(
      doctorImage: AssetsValuesManager.doctorSteviImage,
      doctorName: Utils.drSteviJessi,
      doctorSpecialty: Utils.steviSpecialty,
      doctorRate: Utils.steviRate,
      doctorDistanceAway: Utils.steviDistanceAway,
      onTap: () {
        //todo doctor details
      },
    ),
  ];
  /////////////////////////////////
  static List<RecentDoctorModel> listRecentDoctors = [
    RecentDoctorModel(drImage: AssetsValuesManager.doctorHorizoImage, drName: Utils.drMarcusHorizon, onTap: () {
      //todo doctor details
    },),
    RecentDoctorModel(drImage: AssetsValuesManager.doctorMariaImage, drName: Utils.drMariaElena, onTap: () {
      //todo doctor details
    },),
    RecentDoctorModel(drImage: AssetsValuesManager.doctorLukeImage, drName: Utils.drLuke, onTap: () {
      //todo doctor details
    },),
    RecentDoctorModel(drImage: AssetsValuesManager.doctorSteviImage, drName: Utils.drSteviJessi , onTap: () {
      //todo doctor details
    },)
  ];

}
