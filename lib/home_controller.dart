import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 0.obs;
  void increase() => count++;
}
