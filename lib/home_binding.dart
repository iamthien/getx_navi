import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx_navi/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
