import '../controller/paid_successfull_controller.dart';
import 'package:get/get.dart';

class PaidSuccessfullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaidSuccessfullController());
  }
}
