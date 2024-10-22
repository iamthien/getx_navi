import 'package:get/get.dart';
import 'package:getx_navi/count_controller.dart';

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Controller>(() => Controller());
  }
}
