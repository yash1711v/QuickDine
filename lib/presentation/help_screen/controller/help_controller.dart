import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/help_screen/models/help_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HelpController extends GetxController {
  TextEditingController languageController = TextEditingController();

  TextEditingController groupThirtyFourController = TextEditingController();

  TextEditingController mobileNoController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<HelpModel> helpModelObj = HelpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
    groupThirtyFourController.dispose();
    mobileNoController.dispose();
    emailController.dispose();
  }
}
