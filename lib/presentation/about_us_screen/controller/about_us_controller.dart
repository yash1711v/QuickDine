import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/about_us_screen/models/about_us_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class AboutUsController extends GetxController {
  Rx<AboutUsModel> aboutUsModelObj = AboutUsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
