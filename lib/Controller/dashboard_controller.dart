import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Pages/bookmark_page.dart';
import 'package:pas_mobile_11pplg1_14/Pages/product_page.dart';
import 'package:pas_mobile_11pplg1_14/Pages/profile_page.dart';

class DashboardController {
  var selectedIndex = 0.obs;
  final List<Widget> pages = [ProductPage(), BookmarkPage(), ProfilePage()];
  final List<String> pagenames = [
    "Product List",
    'Bookmarked Product',
    "Profile",
  ];

  void changeTab(int index) {
    selectedIndex.value = index;
  }
}
