import 'package:get/get.dart';
import 'restaurantnear1_item_model.dart';
import 'package:quickdine/data/models/selectionPopupModel/selection_popup_model.dart';

class ExploreModel {
  RxList<Restaurantnear1ItemModel> restaurantnear1ItemList =
      RxList.filled(4, Restaurantnear1ItemModel());

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
