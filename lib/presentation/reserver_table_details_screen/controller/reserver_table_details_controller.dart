import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/reserver_table_details_screen/models/reserver_table_details_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class ReserverTableDetailsController extends GetxController {
  Rx<ReserverTableDetailsModel> reserverTableDetailsModelObj =
      ReserverTableDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
