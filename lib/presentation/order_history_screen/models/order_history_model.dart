import 'package:get/get.dart';
import 'order_history_item_model.dart';

class OrderHistoryModel {
  RxList<OrderHistoryItemModel> orderHistoryItemList =
      RxList.filled(8, OrderHistoryItemModel());
}
