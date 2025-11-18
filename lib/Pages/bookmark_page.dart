import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Components/CustomCard2_components.dart';
import 'package:pas_mobile_11pplg1_14/Controller/product_controller.dart';

class BookmarkPage extends StatelessWidget {
  BookmarkPage({super.key});

  final controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bookmarked Items")),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        final bookmarkedIndices = controller.bookmarks.toList();

        if (bookmarkedIndices.isEmpty) {
          return Center(child: Text('No bookmarked items'));
        }

        return RefreshIndicator(
          onRefresh: controller.fetchProductTable,
          child: ListView.builder(
            itemCount: bookmarkedIndices.length,
            itemBuilder: (context, index) {
              final idx = bookmarkedIndices[index];

              final product = controller.Product[idx];

              return CustomCard(
                imageUrl: product.image,
                title: product.title,
                subtitle: product.description,
                prices: product.price.toString(),
              );
            },
          ),
        );
      }),
    );
  }
}
