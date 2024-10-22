import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
    //update();
    // GetX is reactive, so you dont need to define update() function. Instead using .obs in the variables
  }
}
