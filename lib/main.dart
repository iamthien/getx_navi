import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navi/count_controller.dart';
import 'package:getx_navi/dice_controller.dart';

void main() {
  runApp(GetMaterialApp(
    // Use GetMaterialApp instead of MaterialApp
    home: Home(),
  ));
}

//Screen 1
class Home extends StatelessWidget {
  final controller = Get.put(CountController());
  final diceController = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter & Dice")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Counter section
            // GetX<CountController>(
            //   builder: (_) => Text(
            //     'Clicks: ${controller.count}',
            //     style: const TextStyle(fontSize: 24),
            //   ),
            // ),

            Obx(() => Text(
                  "Clicks: ${controller.count}",
                  style: const TextStyle(fontSize: 24),
                )),
            ElevatedButton(
              child: const Text('Next Route'),
              onPressed: () {
                Get.to(Second()); // Navigate to the second screen
              },
            ),

            // Dice section
            // GetX<DiceController>(
            //   builder: (_) => Image.asset(
            //     "assets/dices/dice-${diceController.diceNum}.png",
            //     height: 200,
            //     width: 200,
            //   ),
            // ),
            Obx(() => Image.asset(
                  "assets/dices/dice-${diceController.diceNum}.png",
                  height: 200,
                  width: 200,
                )),
            ElevatedButton(
              onPressed: () =>
                  diceController.random(), // Call the random function
              child: const Text("Random Dice"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () =>
            controller.increment(), // Function reference for increment
      ),
    );
  }
}

//Screen 2
class Second extends StatelessWidget {
  final CountController ctrl = Get.find();
  final DiceController diceCtrl = Get.find();

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count: ${ctrl.count}",
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              "Dice: ${diceCtrl.diceNum}",
              style: const TextStyle(fontSize: 24),
            ),
            Image.asset(
              "assets/dices/dice-${diceCtrl.diceNum}.png",
              height: 200,
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
