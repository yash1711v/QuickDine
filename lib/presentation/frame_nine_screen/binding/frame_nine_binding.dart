import '../controller/frame_nine_controller.dart';
import 'package:get/get.dart';

class FrameNineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FrameNineController());
  }
}
