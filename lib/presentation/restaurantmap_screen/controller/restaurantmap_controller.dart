import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/restaurantmap_screen/models/restaurantmap_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class RestaurantmapController extends GetxController {
  TextEditingController groupNineController = TextEditingController();

  Rx<RestaurantmapModel> restaurantmapModelObj = RestaurantmapModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupNineController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    restaurantmapModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    restaurantmapModelObj.value.dropdownItemList.refresh();
  }
}
