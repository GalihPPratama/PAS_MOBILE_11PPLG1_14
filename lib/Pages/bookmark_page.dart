import 'package:flutter/material.dart';
import 'package:get/get.dart';
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

        return RefreshIndicator(
          onRefresh: controller.fetchProductTable,
          child: ListView.builder(
            itemCount: controller.Product.length,
            itemBuilder: (context, index) {
              final product = controller.Product[index];
              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(
                          3,
                        ), // thickness of the border
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue, // border/background color
                        ),
                        child: CircleAvatar(
                          radius: 40,
                          foregroundImage: NetworkImage(product.image),
                          backgroundColor: Colors.white, // inner fallback
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        product.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        product.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
