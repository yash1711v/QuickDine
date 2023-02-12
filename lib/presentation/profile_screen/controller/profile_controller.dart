import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/profile_screen/models/profile_model.dart';
import 'package:flutter/material.dart';

class ProfileController extends GetxController {
  TextEditingController languageController = TextEditingController();

  TextEditingController lastNameFormTextFieldController =
      TextEditingController();

  TextEditingController groupSixtySixController = TextEditingController();

  TextEditingController emailFormTextFeildController = TextEditingController();

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
    lastNameFormTextFieldController.dispose();
    groupSixtySixController.dispose();
    emailFormTextFeildController.dispose();
  }
}
