import '../controller/pay_bill_controller.dart';
import 'package:get/get.dart';

class PayBillBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PayBillController());
  }
}
