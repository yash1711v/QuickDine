import 'controller/add_to_order_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_button.dart';
import 'package:quickdine/widgets/custom_icon_button.dart';

class AddToOrderScreen extends GetWidget<AddToOrderController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  width: size.width,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 45, right: 33),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Text(
                                                              "lbl_masala_dosa2"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium20)),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  25.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  23.00),
                                                          margin: getMargin(
                                                              left: 88,
                                                              bottom: 21),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVectorBlack900,
                                                                    height:
                                                                        getSize(
                                                                            2.00),
                                                                    width:
                                                                        getSize(
                                                                            2.00),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    margin: getMargin(
                                                                        left: 8,
                                                                        bottom:
                                                                            2)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVectorBlack900,
                                                                    height:
                                                                        getSize(
                                                                            2.00),
                                                                    width:
                                                                        getSize(
                                                                            2.00),
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    margin: getMargin(
                                                                        right:
                                                                            2,
                                                                        bottom:
                                                                            2)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCartBlack900,
                                                                    height:
                                                                        getVerticalSize(
                                                                            16.00),
                                                                    width: getHorizontalSize(
                                                                        22.00),
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Container(
                                                                        width: getHorizontalSize(
                                                                            19.00),
                                                                        padding: getPadding(
                                                                            left:
                                                                                4,
                                                                            top:
                                                                                1,
                                                                            right:
                                                                                4,
                                                                            bottom:
                                                                                1),
                                                                        decoration: AppDecoration.txtFillRed500.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .txtRoundedBorder5),
                                                                        child: Text(
                                                                            "lbl_02"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsRegular8)))
                                                              ]))
                                                    ]))),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle27,
                                            height: getVerticalSize(277.00),
                                            width: getHorizontalSize(247.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(20.00)),
                                            margin: getMargin(top: 39)),
                                        Padding(
                                            padding: getPadding(top: 39),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: getMargin(top: 2),
                                                      color: ColorConstant
                                                          .amber50042,
                                                      shape: RoundedRectangleBorder(
                                                          side: BorderSide(
                                                              color:
                                                                  ColorConstant
                                                                      .amber500,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00)),
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder5),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  56.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  59.00),
                                                          padding: getPadding(
                                                              left: 17,
                                                              top: 16,
                                                              right: 17,
                                                              bottom: 16),
                                                          decoration: AppDecoration
                                                              .outlineAmber5004
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder5),
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCheckmark,
                                                                height: getSize(
                                                                    24.00),
                                                                width: getSize(
                                                                    24.00),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ]))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 29,
                                                          top: 7,
                                                          bottom: 12),
                                                      child: Text("lbl_02".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular25)),
                                                  CustomIconButton(
                                                      height: 58,
                                                      width: 59,
                                                      margin:
                                                          getMargin(left: 35),
                                                      shape: IconButtonShape
                                                          .RoundedBorder5,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgPlusBlack900))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 52, top: 58),
                                                child: Text(
                                                    "lbl_masala_dosa2".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtPoppinsMedium19Black900))),
                                        Padding(
                                            padding: getPadding(
                                                left: 53, top: 14, right: 44),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgSalad,
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      margin:
                                                          getMargin(bottom: 1)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 4,
                                                          top: 1,
                                                          bottom: 2),
                                                      child: Text(
                                                          "lbl_15_minutes".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtPoppinsRegular11)),
                                                  Spacer(flex: 45),
                                                  CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgFood,
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      margin:
                                                          getMargin(top: 1)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 5,
                                                          top: 2,
                                                          bottom: 1),
                                                      child: Text("lbl_600g".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular11)),
                                                  Spacer(flex: 54),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgClockBlack900,
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      margin:
                                                          getMargin(top: 1)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 3,
                                                          top: 1,
                                                          bottom: 2),
                                                      child: Text(
                                                          "lbl_421kcal".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtPoppinsRegular11))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 34, top: 13),
                                                child: Text(
                                                    "lbl_ingredients".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtPoppinsRegular19))),
                                        Container(
                                            width: getHorizontalSize(357.00),
                                            margin: getMargin(top: 2),
                                            child: Text(
                                                "msg_masala_dosa_is_one".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsLight12)),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 37, top: 11),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 58),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_price"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold16),
                                                                Text(
                                                                    "lbl_500"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsMedium15Black900)
                                                              ])),
                                                      Spacer(),
                                                      CustomButton(
                                                          height: 45,
                                                          width: 146,
                                                          text:
                                                              "lbl_add_to_order"
                                                                  .tr,
                                                          margin: getMargin(
                                                              top: 3,
                                                              bottom: 54),
                                                          onTap:
                                                              onTapAddtoorder),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgFood90x5,
                                                          height:
                                                              getVerticalSize(
                                                                  90.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  5.00),
                                                          margin: getMargin(
                                                              left: 22,
                                                              top: 12))
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapAddtoorder() {
    Get.toNamed(AppRoutes.myOrderScreen);
  }
}
