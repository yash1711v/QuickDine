import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  TextEditingController languageController = TextEditingController();

  TextEditingController lastNameTextFieldController = TextEditingController();

  TextEditingController phoneNumberTextController = TextEditingController();

  TextEditingController emailTextFieldController = TextEditingController();

  TextEditingController groupSixtyOneController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
    lastNameTextFieldController.dispose();
    phoneNumberTextController.dispose();
    emailTextFieldController.dispose();
    groupSixtyOneController.dispose();
  }
}
