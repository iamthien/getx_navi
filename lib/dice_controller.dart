import 'dart:math';
import 'package:get/get.dart';

class DiceController extends GetxController {
  var diceNum = (Random().nextInt(6) + 1).obs;
  //only use .obs when declare variable

  void random() {
    //when update value, use .value to access value of getx .obs variable
    diceNum.value =
        Random().nextInt(6) + 1; // Generate a random number from 1 to 6
    update(); // Call update to rebuild the widget
  }
}
