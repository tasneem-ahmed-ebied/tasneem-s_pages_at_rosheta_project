import 'package:flutter/material.dart';
import 'package:tasneem_rosheta/core/padding_manager.dart';
import 'package:tasneem_rosheta/view/home/widget/product_on_sale_widgets/list_view_of_products_on_sale_widget.dart';
import '../../../core/color_manager.dart';
import '../../../core/height_manager.dart';
import '../../../core/utils.dart';
import '../../widget/app_bar_widget.dart';
import '../../widget/button_navigator_bar_widget.dart';
import '../../widget/text_title_of_categories.dart';
import '../widget/advertisment_of_doctors.dart';
import '../widget/advertisment_of_quick_orders.dart';
import '../widget/list_view_main_components.dart';
import '../widget/popular_product_widgets/list_view_of_popular_medicines_widget.dart';
import '../widget/recent_doctors_widget/list_view_of_recent_doctors_widget.dart';
import '../widget/text_field_search_homepage_widget.dart';
import '../widget/top_doctors_widgets/list_view_of_top_doctors_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavBarUI(),
      appBar: AppBarWidget(
        title: Utils.home,
        icon: Icons.shopping_cart_rounded,
      ),
      backgroundColor: ColorManager.likeWhiteBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: HorizontalPaddingManager.p20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: HeightManager.h20),
              TextFieldSearchHomePage(),
              SizedBox(height: HeightManager.h20),
              //main components of app
              ListViewMainComponents(),
              //image of advertisment advertisement
              AdvertismentOfQuickOrders(),
              //creating list view of popular on sale
              SizedBox(height: HeightManager.h10),
              TextTitleOfCategories(title: Utils.popularProduct,),
              SizedBox(height: HeightManager.h15),
              ListViewOfPopularMedicineWidget(),
              //creating list view of products on sale
              SizedBox(height: HeightManager.h20),
              TextTitleOfCategories(title: Utils.productOnSale,),
              SizedBox(height: HeightManager.h15),
              ListViewOfProductsOnSaleWidget(),
              //image of advertisment doctors
              SizedBox(height: HeightManager.h15),
              TextTitleOfCategories(title: Utils.doctors,),
              SizedBox(height: HeightManager.h15),
              AdvertismentOfDoctors(),
              SizedBox(height: HeightManager.h15),
              //start at making doctor's place at page
              TextTitleOfCategories(title: Utils.topDoctors,),
              SizedBox(height: HeightManager.h15),
              ListViewOfTopDoctorsWidget(),
              ////////////////////////////////////
              SizedBox(height: HeightManager.h15,),
              TextTitleOfCategories(title: Utils.yourRecentDoctors),
              SizedBox(height: HeightManager.h15,),
              ListViewOfRecentDoctorsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}



