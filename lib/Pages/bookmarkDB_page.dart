import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Components/CustomCard_components.dart';
import 'package:pas_mobile_11pplg1_14/Controller/bookmark_db_controller.dart';

class BookmarkdbPage extends StatelessWidget {
  BookmarkdbPage({super.key});

  final controller = Get.find<BookmarkDbController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bookmarked Items"), centerTitle: true),
      body: Obx(() {
        if (controller.favorites.isEmpty) {
          return const Center(child: Text("No Bookmarked Items"));
        }

        return ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: controller.favorites.length,
          itemBuilder: (context, index) {
            final store = controller.favorites[index];

            return CustomcardComponents(
              imageUrl: store["image"],
              title: store["title"],
              subtitle:
                  "Price: ${store["price"]} | Category: ${store["category"]}",
              isFavorite: true,
              onFavorite: () => controller.toggleFavorite(store),
            );
          },
        );
      }),
    );
  }
}
