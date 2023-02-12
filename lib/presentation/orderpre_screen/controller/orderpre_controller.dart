import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/orderpre_screen/models/orderpre_model.dart';
import 'package:flutter/material.dart';

class OrderpreController extends GetxController {
  TextEditingController groupFiftyFiveController = TextEditingController();

  TextEditingController group137Controller = TextEditingController();

  TextEditingController group139Controller = TextEditingController();

  TextEditingController group141Controller = TextEditingController();

  Rx<OrderpreModel> orderpreModelObj = OrderpreModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFiftyFiveController.dispose();
    group137Controller.dispose();
    group139Controller.dispose();
    group141Controller.dispose();
  }
}
