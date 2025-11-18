import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/instance_manager.dart';
import 'package:pas_mobile_11pplg1_14/Controller/ProductView_Controller.dart';

class ProductViewPage extends StatelessWidget {
  ProductViewPage({super.key});

  final controller = Get.put(ProductviewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Viewing the Detail of - Product")),
      body: Container(child: Text(controller.indexes.toString())),
    );
  }
}
