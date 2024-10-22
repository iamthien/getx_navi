import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navi/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter")),
      body: Center(
        child: Obx(() => Text("${controller.count}")), // Bỏ const ở đây
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: controller.increase,
      ),
    );
  }
}
