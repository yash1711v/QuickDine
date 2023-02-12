import '../controller/restaurantmap_controller.dart';
import 'package:get/get.dart';

class RestaurantmapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestaurantmapController());
  }
}
