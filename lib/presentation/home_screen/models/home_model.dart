import 'package:get/get.dart';
import 'listrectanglefiftyfive_item_model.dart';
import 'restaurantnear_item_model.dart';
import 'package:quickdine/data/models/selectionPopupModel/selection_popup_model.dart';

class HomeModel {
  RxList<ListrectanglefiftyfiveItemModel> listrectanglefiftyfiveItemList =
      RxList.filled(5, ListrectanglefiftyfiveItemModel());

  RxList<RestaurantnearItemModel> restaurantnearItemList =
      RxList.filled(4, RestaurantnearItemModel());

  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Delhi",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Mumbai",
    ),
    SelectionPopupModel(
      id: 3,
      title: "UttarPradesh",
    )
  ].obs;
}
