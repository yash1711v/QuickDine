import '../controller/waiter_call_details_controller.dart';
import 'package:get/get.dart';

class WaiterCallDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WaiterCallDetailsController());
  }
}
