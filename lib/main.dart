import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navi/home_binding.dart';
import 'package:getx_navi/home_view.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: "/home",
    getPages: [
      GetPage(name: "/home", page: () => HomeView(), binding: HomeBinding())
    ],
  ));
}
