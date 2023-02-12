import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/add_to_order_screen/models/add_to_order_model.dart';

class AddToOrderController extends GetxController {
  Rx<AddToOrderModel> addToOrderModelObj = AddToOrderModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
