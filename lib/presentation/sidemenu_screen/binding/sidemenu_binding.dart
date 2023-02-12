import '../controller/sidemenu_controller.dart';
import 'package:get/get.dart';

class SidemenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SidemenuController());
  }
}
