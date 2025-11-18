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

              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Stack(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () => controller.gotodetails(
                        idx,
                      ), // navigate with the original index
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue,
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
                    // Unbookmark button overlay
                    Positioned(
                      top: 8,
                      right: 8,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () => controller.toggleBookmark(idx),
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.bookmark, // it's bookmarked in this list
                            color: Colors.amber,
                          ),
                        ),
                      ),
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
