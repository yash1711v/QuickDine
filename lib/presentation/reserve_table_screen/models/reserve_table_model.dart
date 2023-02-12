import 'package:get/get.dart';
import 'package:quickdine/data/models/selectionPopupModel/selection_popup_model.dart';

class ReserveTableModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Closes at 10 : 00 PM",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Open at 10 : 00 AM",
    ),

  ].obs;
}
