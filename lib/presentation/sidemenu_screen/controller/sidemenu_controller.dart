import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/presentation/sidemenu_screen/models/sidemenu_model.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class SidemenuController extends GetxController {
  Rx<SidemenuModel> sidemenuModelObj = SidemenuModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    sidemenuModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    sidemenuModelObj.value.dropdownItemList.refresh();
  }
}
