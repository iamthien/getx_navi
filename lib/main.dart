import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  var count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("counter"),
        ),
        body: Center(
          child: Obx(() => Text("$count")),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.plus_one), onPressed: () => count++));
  }
}
