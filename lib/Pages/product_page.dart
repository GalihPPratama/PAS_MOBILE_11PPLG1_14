import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Controller/product_controller.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  final controller = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FakeStore Products!")),
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
                child: Stack(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () => controller.gotodetails(index),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(
                                3,
                              ), 
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors
                                    .lightGreen, 
                              ),
                              child: CircleAvatar(
                                radius: 40,
                                foregroundImage: NetworkImage(product.image),
                                backgroundColor: Colors.white,
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
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Obx(() {
                        final bookmarked = controller.bookmarks.contains(index);
                        return InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () => controller.toggleBookmark(index),
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              bookmarked
                                  ? Icons.bookmark
                                  : Icons.bookmark_border,
                              color: bookmarked ? Colors.amber : Colors.grey,
                            ),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
