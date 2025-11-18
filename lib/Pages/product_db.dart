import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Components/CustomCard_components.dart';
import 'package:pas_mobile_11pplg1_14/Controller/bookmark_db_controller.dart';
import 'package:pas_mobile_11pplg1_14/Controller/products_db_controller.dart';

class ProductDb extends StatelessWidget {
  ProductDb({super.key});
  final controller = Get.find<ProductsDbController>();
  final favController = Get.find<BookmarkDbController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Item List")),
      body: Obx(() {
        if (controller.productList.isEmpty) {
          return Text("No Itmes yet osehting happende to API frfr");
        }

        return RefreshIndicator(
          onRefresh: () async => controller.fetchProducts(),
          child: ListView.builder(
            itemCount: controller.productList.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) {
              final store = controller.productList[index];

              return Obx(() {
                return CustomcardComponents(
                  imageUrl: store.image,
                  title: store.title,
                  subtitle:
                      "Price: ${store.price} | Category: ${store.category}",
                  isFavorite: favController.isBookmark(store.toJson()),
                  onFavorite: () {
                    favController.toggleFavorite(store.toJson());
                  },
                );
              });
            },
          ),
        );
      }),
    );
  }
}
