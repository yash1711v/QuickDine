import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/order_history_screen/models/order_history_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class OrderHistoryController extends GetxController {
  Rx<OrderHistoryModel> orderHistoryModelObj = OrderHistoryModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
