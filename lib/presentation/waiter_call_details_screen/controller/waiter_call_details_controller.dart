import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/waiter_call_details_screen/models/waiter_call_details_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class WaiterCallDetailsController extends GetxController {
  Rx<WaiterCallDetailsModel> waiterCallDetailsModelObj =
      WaiterCallDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
