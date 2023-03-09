import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/reserve_table_screen/models/reserve_table_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ReserveTableController extends GetxController {
  TextEditingController groupNinetyNineController = TextEditingController();

  Rx<ReserveTableModel> reserveTableModelObj = ReserveTableModel().obs;

  SelectionPopupModel? selectedDropDownValue;
  var count=0.obs;

  @override
  void onReady() {
    super.onReady();
  }
    void AddcOUNT(){
      count.value=count.value;
      print(count.value);
    }
  @override
  void onClose() {
    super.onClose();
    groupNinetyNineController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    reserveTableModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    reserveTableModelObj.value.dropdownItemList.refresh();
  }
}
