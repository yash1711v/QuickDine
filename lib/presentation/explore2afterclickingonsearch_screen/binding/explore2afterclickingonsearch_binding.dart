import '../controller/explore2afterclickingonsearch_controller.dart';
import 'package:get/get.dart';

class Explore2afterclickingonsearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Explore2afterclickingonsearchController());
  }
}
