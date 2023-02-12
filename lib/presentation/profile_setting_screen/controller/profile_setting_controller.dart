import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/profile_setting_screen/models/profile_setting_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class ProfileSettingController extends GetxController {
  Rx<ProfileSettingModel> profileSettingModelObj = ProfileSettingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
