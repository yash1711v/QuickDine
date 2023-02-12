import '../controller/add_to_order_controller.dart';
import 'package:get/get.dart';

class AddToOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddToOrderController());
  }
}
