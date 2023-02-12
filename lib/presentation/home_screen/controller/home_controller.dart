import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/home_screen/models/home_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  TextEditingController searchButtonController = TextEditingController();

  Rx<HomeModel> homeModelObj = HomeModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchButtonController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    homeModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    homeModelObj.value.dropdownItemList.refresh();
  }
}
