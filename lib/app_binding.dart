import 'package:get/get.dart';
import 'package:getx_navi/count_controller.dart';
import 'package:getx_navi/dice_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiceController>(() => DiceController());
    Get.lazyPut<CountController>(() => CountController());
  }
}
