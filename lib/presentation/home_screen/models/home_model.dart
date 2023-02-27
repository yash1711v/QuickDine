import 'package:get/get.dart';
<<<<<<< HEAD
=======
import 'Restaurants.dart';
>>>>>>> 199f182 (Restaurant Cards)
import 'listrectanglefiftyfive_item_model.dart';
import 'restaurantnear_item_model.dart';
import 'package:quickdine/data/models/selectionPopupModel/selection_popup_model.dart';

class HomeModel {
  RxList<ListrectanglefiftyfiveItemModel> listrectanglefiftyfiveItemList =
      RxList.filled(5, ListrectanglefiftyfiveItemModel());

  RxList<RestaurantnearItemModel> restaurantnearItemList =
      RxList.filled(4, RestaurantnearItemModel());
<<<<<<< HEAD
=======
  RxList<Restaurants> restaurants=RxList.filled(5, Restaurants());
>>>>>>> 199f182 (Restaurant Cards)

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
