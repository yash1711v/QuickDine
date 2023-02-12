import '../controller/order_history_controller.dart';
import '../models/order_history_item_model.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';

// ignore: must_be_immutable
class OrderHistoryItemWidget extends StatelessWidget {
  OrderHistoryItemWidget(this.orderHistoryItemModelObj);

  OrderHistoryItemModel orderHistoryItemModelObj;

  var controller = Get.find<OrderHistoryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 19,
        top: 9,
        right: 19,
        bottom: 9,
      ),
      decoration: AppDecoration.outlineGray40035.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle97,
            height: getVerticalSize(
              79.00,
            ),
            width: getHorizontalSize(
              105.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                5.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 11,
              top: 9,
              right: 5,
              bottom: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_indian_accent".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 9,
                      ),
                      child: Text(
                        "lbl_6_items".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold12Black9008c,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 105,
                        top: 9,
                      ),
                      child: Text(
                        "lbl_yesterday".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold12Black9004c,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
