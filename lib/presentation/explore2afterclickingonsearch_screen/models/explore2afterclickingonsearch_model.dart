import 'package:get/get.dart';
import 'restaurantnear4_item_model.dart';
import 'package:quickdine/data/models/selectionPopupModel/selection_popup_model.dart';

class Explore2afterclickingonsearchModel {
  RxList<Restaurantnear4ItemModel> restaurantnear4ItemList =
      RxList.filled(4, Restaurantnear4ItemModel());

  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ].obs;
}
