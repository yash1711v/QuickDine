import '../controller/home_controller.dart';
import '../models/listrectanglefiftyfive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';

// ignore: must_be_immutable
class ListrectanglefiftyfiveItemWidget extends StatelessWidget {
  ListrectanglefiftyfiveItemWidget(this.listrectanglefiftyfiveItemModelObj,
      {this.onTapStackrectanglefiftyfive});

  ListrectanglefiftyfiveItemModel listrectanglefiftyfiveItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapStackrectanglefiftyfive;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapStackrectanglefiftyfive!();
          },
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              top: 3,
              right: 17,
            ),
            color: ColorConstant.whiteA700,
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
                114.00,
              ),
              width: getHorizontalSize(
                93.00,
              ),
              padding: getPadding(
                left: 17,
                top: 12,
                right: 17,
                bottom: 12,
              ),
              decoration: AppDecoration.outlineAmber5001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: getVerticalSize(
                        19.00,
                      ),
                      width: getHorizontalSize(
                        49.00,
                      ),
                      margin: getMargin(
                        right: 1,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.amber500,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            5.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: getPadding(
                        right: 12,
                      ),
                      child: Text(
                        "lbl_flat".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium12,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: getPadding(
                        top: 18,
                      ),
                      child: Text(
                        "lbl_40".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold24,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: getPadding(
                        top: 24,
                        right: 10,
                      ),
                      child: Text(
                        "lbl".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold15,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: getPadding(
                        right: 6,
                        bottom: 29,
                      ),
                      child: Text(
                        "lbl_off".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium15,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: getHorizontalSize(
                        50.00,
                      ),
                      margin: getMargin(
                        bottom: 1,
                      ),
                      child: Text(
                        "msg_instant_discount".tr,
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtPoppinsRegular12Amber500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
