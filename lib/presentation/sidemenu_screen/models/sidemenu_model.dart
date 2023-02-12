import 'package:get/get.dart';
import 'listrectanglefiftyfive1_item_model.dart';
import 'restaurantnear2_item_model.dart';
import 'package:quickdine/data/models/selectionPopupModel/selection_popup_model.dart';

class SidemenuModel {
  RxList<Listrectanglefiftyfive1ItemModel> listrectanglefiftyfive1ItemList =
      RxList.filled(5, Listrectanglefiftyfive1ItemModel());

  RxList<Restaurantnear2ItemModel> restaurantnear2ItemList =
      RxList.filled(4, Restaurantnear2ItemModel());

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
