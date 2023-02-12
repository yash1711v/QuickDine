import '../controller/paid_fail_controller.dart';
import 'package:get/get.dart';

class PaidFailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaidFailController());
  }
}
