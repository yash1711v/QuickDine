import '../controller/confirmed_controller.dart';
import 'package:get/get.dart';

class ConfirmedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmedController());
  }
}
