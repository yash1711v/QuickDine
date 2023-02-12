import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/explore_screen/models/explore_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ExploreController extends GetxController {
  TextEditingController searchButtonController = TextEditingController();

  Rx<ExploreModel> exploreModelObj = ExploreModel().obs;

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
    exploreModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    exploreModelObj.value.dropdownItemList.refresh();
  }
}
