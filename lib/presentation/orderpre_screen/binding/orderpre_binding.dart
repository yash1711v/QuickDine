import '../controller/orderpre_controller.dart';
import 'package:get/get.dart';

class OrderpreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderpreController());
  }
}
