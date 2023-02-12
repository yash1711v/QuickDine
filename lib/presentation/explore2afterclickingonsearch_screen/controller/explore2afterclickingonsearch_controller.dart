import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/explore2afterclickingonsearch_screen/models/explore2afterclickingonsearch_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class Explore2afterclickingonsearchController extends GetxController {
  TextEditingController searchButtonController = TextEditingController();

  Rx<Explore2afterclickingonsearchModel> explore2afterclickingonsearchModelObj =
      Explore2afterclickingonsearchModel().obs;

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
    explore2afterclickingonsearchModelObj.value.dropdownItemList
        .forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    explore2afterclickingonsearchModelObj.value.dropdownItemList.refresh();
  }
}
