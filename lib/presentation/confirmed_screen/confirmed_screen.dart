import 'controller/confirmed_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_button.dart';

class ConfirmedScreen extends GetWidget<ConfirmedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 34,
            top: 28,
            right: 34,
            bottom: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getSize(
                    312.00,
                  ),
                  width: getSize(
                    312.00,
                  ),
                  margin: getMargin(
                    top: 26,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFamilyhavingdinner,
                        height: getSize(
                          312.00,
                        ),
                        width: getSize(
                          312.00,
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckmark70x70,
                        height: getSize(
                          70.00,
                        ),
                        width: getSize(
                          70.00,
                        ),
                        alignment: Alignment.topRight,
                        margin: getMargin(
                          top: 7,
                          right: 112,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 43,
                  top: 11,
                ),
                child: Text(
                  "msg_table_status_confirmed".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium20Amber500,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 5,
                  ),
                  child: Text(
                    "msg_your_reservation".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium12Black9008e,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 6,
                  top: 35,
                ),
                child: Text(
                  "msg_reservation_details".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsMedium20,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 24,
                ),
                child: Text(
                  "lbl_juliya".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium18,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Text(
                  "msg_saturday_10_june".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium18,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  "lbl_2_guest_s".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium18,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                  right: 29,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "msg_id_234455096097".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium18,
                    ),
                    Text(
                      "lbl_cancel".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsMedium18Red500,
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  81.00,
                ),
                width: getHorizontalSize(
                  342.00,
                ),
                margin: getMargin(
                  top: 38,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: getPadding(
                          left: 34,
                          top: 4,
                          right: 34,
                          bottom: 4,
                        ),
                        decoration: AppDecoration.outlineAmber5002.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 8,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_flat_30_off_the".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold15,
                                  ),
                                  Text(
                                    "msg_get_instant_discount".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium10,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 9,
                                    ),
                                    child: Text(
                                      "msg_additional_10_off".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtPoppinsMedium12Green900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgPayicon,
                              height: getSize(
                                24.00,
                              ),
                              width: getSize(
                                24.00,
                              ),
                              margin: getMargin(
                                top: 5,
                                right: 5,
                                bottom: 44,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          342.00,
                        ),
                        margin: getMargin(
                          bottom: 37,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.black9000f,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                height: 59,
                width: 311,
                text: "lbl_pay_bill".tr,
                margin: getMargin(
                  top: 16,
                ),
                variant: ButtonVariant.FillGray40044,
                padding: ButtonPadding.PaddingAll13,
                fontStyle: ButtonFontStyle.PoppinsMedium18,
                alignment: Alignment.center,
              ),
              Padding(
                padding: getPadding(
                  left: 34,
                  top: 12,
                ),
                child: Text(
                  "msg_payment_will_be".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
