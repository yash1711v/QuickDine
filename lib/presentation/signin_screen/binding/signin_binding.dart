import '../controller/signin_controller.dart';
import 'package:get/get.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigninController());
  }
}
