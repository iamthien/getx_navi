import 'package:get/get.dart';
import 'package:getx_navi/app_binding.dart';
import 'package:getx_navi/main.dart';
import 'package:getx_navi/routes/app_routes.dart';

class AppPages {
  AppPages._();
  static const Transition _kTransitions = Transition.leftToRight;
  static const Duration _kTransitionDuration = Duration(milliseconds: 200);
  static List<GetPage> pages = [
    GetPage(
        name: AppRoute.homeScreen,
        page: () => Home(),
        binding: AppBinding(),
        transition: _kTransitions,
        transitionDuration: _kTransitionDuration),
    GetPage(
        name: AppRoute.secondScreen,
        page: () => Second(),
        transition: _kTransitions,
        transitionDuration: _kTransitionDuration)
  ];
}
