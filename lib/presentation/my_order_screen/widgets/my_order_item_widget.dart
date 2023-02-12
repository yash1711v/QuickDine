import '../controller/my_order_controller.dart';
import '../models/my_order_item_model.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';

// ignore: must_be_immutable
class MyOrderItemWidget extends StatelessWidget {
  MyOrderItemWidget(this.myOrderItemModelObj);

  MyOrderItemModel myOrderItemModelObj;

  var controller = Get.find<MyOrderController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 8,
        right: 8,
      ),
      decoration: AppDecoration.outlineBlack9000f1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle27,
            height: getVerticalSize(
              120.00,
            ),
            width: getHorizontalSize(
              116.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                60.00,
              ),
            ),
            margin: getMargin(
              left: 11,
              top: 5,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 5,
              bottom: 21,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: Text(
                        "lbl_masala_dosa2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular15,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgCloseGray900,
                      height: getVerticalSize(
                        27.00,
                      ),
                      width: getHorizontalSize(
                        24.00,
                      ),
                      margin: getMargin(
                        left: 46,
                        bottom: 4,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    left: 26,
                    top: 7,
                  ),
                  child: Text(
                    "lbl_5002".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular15,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 5,
                    top: 7,
                  ),
                  child: Row(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: getMargin(
                          top: 1,
                        ),
                        color: ColorConstant.amber50042,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: ColorConstant.amber500,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            28.00,
                          ),
                          width: getHorizontalSize(
                            26.00,
                          ),
                          padding: getPadding(
                            all: 7,
                          ),
                          decoration: AppDecoration.outlineAmber5004.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgCheckmark,
                                height: getSize(
                                  11.00,
                                ),
                                width: getSize(
                                  11.00,
                                ),
                                alignment: Alignment.topLeft,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 11,
                          top: 2,
                          bottom: 3,
                        ),
                        child: Text(
                          "lbl_02".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular15,
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: getMargin(
                          left: 12,
                        ),
                        color: ColorConstant.amber50042,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: ColorConstant.amber500,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            29.00,
                          ),
                          width: getHorizontalSize(
                            26.00,
                          ),
                          padding: getPadding(
                            all: 7,
                          ),
                          decoration: AppDecoration.outlineAmber5004.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgPlusBlack900,
                                height: getSize(
                                  11.00,
                                ),
                                width: getSize(
                                  11.00,
                                ),
                                alignment: Alignment.topLeft,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
