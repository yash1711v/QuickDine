import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/my_order_screen/models/my_order_model.dart';

class MyOrderController extends GetxController {
  Rx<MyOrderModel> myOrderModelObj = MyOrderModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
