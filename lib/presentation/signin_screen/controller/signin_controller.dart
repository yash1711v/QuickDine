import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/signin_screen/models/signin_model.dart';
import 'package:flutter/material.dart';

class SigninController extends GetxController {
  TextEditingController groupEightController = TextEditingController();

  Rx<SigninModel> signinModelObj = SigninModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupEightController.dispose();
  }
}
