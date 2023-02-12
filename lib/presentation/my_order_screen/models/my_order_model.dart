import 'package:get/get.dart';
import 'my_order_item_model.dart';

class MyOrderModel {
  RxList<MyOrderItemModel> myOrderItemList =
      RxList.filled(2, MyOrderItemModel());
}
