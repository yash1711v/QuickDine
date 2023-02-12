import '../controller/reserve_table_controller.dart';
import 'package:get/get.dart';

class ReserveTableBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReserveTableController());
  }
}
