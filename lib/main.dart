import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navi/count_controller.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

//Screen 1
class Home extends StatelessWidget {
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Controller>(
                builder: (_) => Text(
                      'clicks: ${controller.count}',
                    )),
            ElevatedButton(
              child: Text('Next Route'),
              onPressed: () {
                Get.to(Second());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () =>
            controller.increment(), // Use a function reference here
      ),
    );
  }
}

//Screen 2
// Using Get.find() to retrieve the value of ctrl (Controller class -> where store count value)
class Second extends StatelessWidget {
  final Controller ctrl = Get.find();
  @override
  Widget build(context) {
    return Scaffold(body: Center(child: Text("${ctrl.count}")));
  }
}
