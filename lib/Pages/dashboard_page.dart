import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pas_mobile_11pplg1_14/Controller/dashboard_controller.dart';
import 'package:pas_mobile_11pplg1_14/Pages/bookmark_page.dart';
import 'package:pas_mobile_11pplg1_14/Pages/product_page.dart';
import 'package:pas_mobile_11pplg1_14/Pages/profile_page.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final navigation = Get.put(DashboardController());
  final List<Widget> pages = [ProductPage(), BookmarkPage(), ProfilePage()];
  final List<String> pagenames = [
    "Product List",
    'Bookmarked Product',
    "Profile",
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pages[navigation.selectedIndex.value],

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.lightGreen,
          type: BottomNavigationBarType.fixed,
          currentIndex: navigation.selectedIndex.value,
          onTap: navigation.changeTab,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          selectedLabelStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(color: Colors.white10),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Products'),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Bookmark',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
