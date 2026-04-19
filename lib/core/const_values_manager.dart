import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/utils.dart';
import 'package:tasneem_rosheta/model/main_components_model.dart';

class ConstValueManager{
  ConstValueManager._();
  static List<MainComponentsModel> listAllCategories = [
    MainComponentsModel(title: Utils.scan, icon: Icons.document_scanner_rounded ),
    MainComponentsModel(title: Utils.nearby, icon: Icons.place_outlined,),
    MainComponentsModel(title: Utils.donates, icon: Icons.favorite_border,),
    MainComponentsModel(title: Utils.efforts, icon: Icons.star_border,),
    MainComponentsModel(title: Utils.doctors, icon: Icons.medical_services,),
];}