import '../controller/reserver_table_details_controller.dart';
import 'package:get/get.dart';

class ReserverTableDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReserverTableDetailsController());
  }
}
