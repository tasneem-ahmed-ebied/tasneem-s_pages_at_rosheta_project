import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/view/cart_page/screen/cart_page.dart';
import 'package:tasneem_rosheta/view/choose_page/screen/choose_page.dart';
import 'package:tasneem_rosheta/view/details_page/screen/details_page.dart';
import 'package:tasneem_rosheta/view/home/screen/home_page.dart';
import 'package:tasneem_rosheta/view/location_page/screen/location_page.dart';

import '../view/widget/un_known_page.dart';

class RoutesManager {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget screen;
    String? name = settings.name;
    if (name == RouteName.choosePage.routeName) {
      screen = const ChoosePage();
    } else if (name == RouteName.homePage.routeName) {
      screen = const HomePage();
    }else if (name == RouteName.detailsPage.routeName) {
      screen = const DetailsPage();
    }else if (name == RouteName.cartPage.routeName) {
      screen = const CartPage();
    }else if (name == RouteName.locationPage.routeName) {
      screen = const LocationPage();
    }

    else {
      screen = UnknownRouteScreen(route: settings.name ?? "");}
    return MaterialPageRoute(builder: (context) => screen, settings: settings);
  }

}

enum RouteName {
  choosePage("/"),
  homePage("/homePage"),
  detailsPage("/detailsPage"),
  cartPage("/cartPage"),
  locationPage("/locationPage");

  final String routeName;
  const RouteName(this.routeName);
}
///////////////////
