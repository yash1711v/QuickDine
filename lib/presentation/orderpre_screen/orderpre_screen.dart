import 'controller/orderpre_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_button.dart';
import 'package:quickdine/widgets/custom_search_view.dart';
import 'package:quickdine/widgets/custom_text_form_field.dart';


class OrderpreScreen extends StatefulWidget {
  const OrderpreScreen({Key? key}) : super(key: key);

  @override
  State<OrderpreScreen> createState() => _OrderpreScreenState();
}

class _OrderpreScreenState extends State<OrderpreScreen> {
  get controller=>OrderpreController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                padding: getPadding(top: 47, bottom: 47),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(360.00),
                          margin: getMargin(left: 26, top: 10, right: 28),
                          padding: getPadding(
                              left: 10, top: 24, right: 10, bottom: 24),
                          decoration: AppDecoration.outlineBlack90014.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 13, right: 12),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 6),
                                              child: Text("lbl_sagar_ratna".tr,
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtPoppinsMedium25)),
                                          CustomButton(
                                              height: 41,
                                              width: 78,
                                              text: "lbl_02".tr,
                                              margin: getMargin(bottom: 3),
                                              variant:
                                              ButtonVariant.FillAmber200,
                                              shape:
                                              ButtonShape.RoundedBorder20,
                                              padding: ButtonPadding.PaddingT8,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsSemiBold16,
                                              prefixWidget: Container(
                                                  margin: getMargin(right: 7),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCart)))
                                        ])),
                                CustomSearchView(
                                    width: 337,
                                    focusNode: FocusNode(),
                                    controller:
                                    controller.groupFiftyFiveController,
                                    hintText: "msg_search_for_something".tr,
                                    margin: getMargin(top: 26, bottom: 21),
                                    variant:
                                    SearchViewVariant.OutlineBlack9000f,
                                    padding: SearchViewPadding.PaddingT14,
                                    fontStyle:
                                    SearchViewFontStyle.PoppinsRegular13,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 17,
                                            top: 15,
                                            right: 11,
                                            bottom: 17),
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgSearch)),
                                    prefixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(50.00)),
                                    suffix: Padding(
                                        padding: EdgeInsets.only(
                                            right: getHorizontalSize(15.00)),
                                        child: IconButton(
                                            onPressed: () {
                                              controller
                                                  .groupFiftyFiveController
                                                  .clear;
                                            },
                                            icon: Icon(Icons.clear,
                                                color: Colors.grey.shade600))),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(50.00)))
                              ])),
                      CustomTextFormField(
                          width: 360,
                          focusNode: FocusNode(),
                          controller: controller.group137Controller,
                          hintText: "msg_repeat_last_order".tr,
                          margin: getMargin(top: 20),
                          variant: TextFormFieldVariant.UnderLineGray4005b,
                          padding: TextFormFieldPadding.PaddingT1,
                          fontStyle: TextFormFieldFontStyle.PoppinsRegular15,
                          prefix: Container(
                              margin:
                              getMargin(left: 15, right: 13, bottom: 10),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgRefreshBlack900)),
                          prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(30.00))),
                      CustomTextFormField(
                          width: 360,
                          focusNode: FocusNode(),
                          controller: controller.group139Controller,
                          hintText: "lbl_help".tr,
                          margin: getMargin(top: 16),
                          variant: TextFormFieldVariant.UnderLineGray4005b,
                          padding: TextFormFieldPadding.PaddingT1,
                          fontStyle: TextFormFieldFontStyle.PoppinsRegular15,
                          prefix: Container(
                              margin:
                              getMargin(left: 15, right: 10, bottom: 17),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgQuestionBlack900)),
                          prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(37.00))),
                      CustomTextFormField(
                          width: 360,
                          focusNode: FocusNode(),
                          controller: controller.group141Controller,
                          hintText: "lbl_surprise".tr,
                          margin: getMargin(top: 18),
                          variant: TextFormFieldVariant.UnderLineGray4005b,
                          padding: TextFormFieldPadding.PaddingT1,
                          fontStyle: TextFormFieldFontStyle.PoppinsRegular15,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(left: 15, right: 9, bottom: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgTrash)),
                          prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(36.00))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 25, top: 15, right: 48),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_top_categories".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtPoppinsMedium20),
                                    Padding(
                                        padding: getPadding(top: 2, bottom: 8),
                                        child: Text("lbl_see_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                            AppStyle.txtPoppinsRegular12))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 27, top: 9),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            padding: getPadding(
                                                left: 3,
                                                top: 4,
                                                right: 3,
                                                bottom: 4),
                                            decoration: AppDecoration
                                                .outlineWhiteA7001
                                                .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath:
                                                  ImageConstant.imgEllipse44,
                                                  height: getSize(36.00),
                                                  width: getSize(36.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(18.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 6,
                                                      right: 23,
                                                      bottom: 6),
                                                  child: Text("lbl_all".tr,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular15))
                                            ])),
                                        Container(
                                            margin: getMargin(left: 16),
                                            padding: getPadding(
                                                left: 3,
                                                top: 4,
                                                right: 3,
                                                bottom: 4),
                                            decoration: AppDecoration
                                                .outlineBlack90005
                                                .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath:
                                                  ImageConstant.imgEllipse45,
                                                  height: getSize(36.00),
                                                  width: getSize(36.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(18.00))),
                                              Container(
                                                  width: getHorizontalSize(35.00),
                                                  margin: getMargin(
                                                      left: 8,
                                                      top: 4,
                                                      right: 5,
                                                      bottom: 1),
                                                  child: Text("lbl_north_indian".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.center,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12))
                                            ])),
                                        Container(
                                            margin: getMargin(left: 12),
                                            padding: getPadding(
                                                left: 3,
                                                top: 4,
                                                right: 3,
                                                bottom: 4),
                                            decoration: AppDecoration
                                                .outlineBlack90005
                                                .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath:
                                                  ImageConstant.imgEllipse48,
                                                  height: getSize(36.00),
                                                  width: getSize(36.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(18.00))),
                                              Container(
                                                  width: getHorizontalSize(35.00),
                                                  margin: getMargin(
                                                      left: 7,
                                                      top: 4,
                                                      right: 6,
                                                      bottom: 1),
                                                  child: Text("lbl_south_indian".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.center,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12))
                                            ])),
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(left: 20),
                                            color: ColorConstant.whiteA700,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color: ColorConstant.black90005,
                                                    width: getHorizontalSize(1.00)),
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                            child: Container(
                                                height: getVerticalSize(44.00),
                                                width: getHorizontalSize(92.00),
                                                padding: getPadding(
                                                    left: 3,
                                                    top: 4,
                                                    right: 3,
                                                    bottom: 4),
                                                decoration: AppDecoration
                                                    .outlineBlack90005
                                                    .copyWith(
                                                    borderRadius:
                                                    BorderRadiusStyle
                                                        .roundedBorder10),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse47,
                                                      height: getSize(36.00),
                                                      width: getSize(36.00),
                                                      radius: BorderRadius.circular(
                                                          getHorizontalSize(18.00)),
                                                      alignment:
                                                      Alignment.centerLeft)
                                                ])))
                                      ])))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 19, right: 41),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("msg_recommended_for".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtPoppinsMedium20),
                                    Padding(
                                        padding: getPadding(top: 2, bottom: 8),
                                        child: Text("lbl_see_all".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                            AppStyle.txtPoppinsRegular12))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 33, top: 21, right: 38),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapColumnellipsefortynine();
                                    },
                                    child: Container(
                                        padding: getPadding(
                                            left: 17,
                                            top: 11,
                                            right: 17,
                                            bottom: 11),
                                        decoration: AppDecoration
                                            .outlineBlack9000c
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse49,
                                                  height:
                                                  getVerticalSize(121.00),
                                                  width:
                                                  getHorizontalSize(115.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          60.00))),
                                              Container(
                                                  width:
                                                  getHorizontalSize(73.00),
                                                  margin: getMargin(top: 10),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                            "lbl_masala_dosa"
                                                                .tr,
                                                            style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                    12),
                                                                fontFamily:
                                                                'Poppins',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                        TextSpan(
                                                            text: "lbl_250_inr"
                                                                .tr,
                                                            style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                    14),
                                                                fontFamily:
                                                                'Poppins',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w600))
                                                      ]),
                                                      textAlign:
                                                      TextAlign.center))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapColumnellipsefifty();
                                    },
                                    child: Container(
                                        padding: getPadding(
                                            left: 17,
                                            top: 11,
                                            right: 17,
                                            bottom: 11),
                                        decoration: AppDecoration
                                            .outlineBlack9000c
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse50,
                                                  height:
                                                  getVerticalSize(121.00),
                                                  width:
                                                  getHorizontalSize(115.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          60.00))),
                                              Container(
                                                  width:
                                                  getHorizontalSize(50.00),
                                                  margin: getMargin(top: 10),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "lbl_chotpoti"
                                                                .tr,
                                                            style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                    12),
                                                                fontFamily:
                                                                'Poppins',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                        TextSpan(
                                                            text: "lbl_250_inr"
                                                                .tr,
                                                            style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                    14),
                                                                fontFamily:
                                                                'Poppins',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w600))
                                                      ]),
                                                      textAlign:
                                                      TextAlign.center))
                                            ])))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 71, right: 77, bottom: 43),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                          height: 45,
                          width: 266,
                          text: "msg_checkout_2_products".tr)
                    ]))));
  }

  onTapColumnellipsefortynine() {
    Get.toNamed(AppRoutes.addToOrderScreen);
  }

  onTapColumnellipsefifty() {
    Get.toNamed(AppRoutes.addToOrderScreen);
  }
}


// old Code
// class OrderpreScreen extends GetWidget<OrderpreController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         top: false,
//         bottom: false,
//         child: Scaffold(
//             resizeToAvoidBottomInset: false,
//             backgroundColor: ColorConstant.whiteA700,
//             body: Container(
//                 width: size.width,
//                 padding: getPadding(top: 47, bottom: 47),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                           width: getHorizontalSize(360.00),
//                           margin: getMargin(left: 26, top: 10, right: 28),
//                           padding: getPadding(
//                               left: 10, top: 24, right: 10, bottom: 24),
//                           decoration: AppDecoration.outlineBlack90014.copyWith(
//                               borderRadius: BorderRadiusStyle.roundedBorder5),
//                           child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Padding(
//                                     padding: getPadding(left: 13, right: 12),
//                                     child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Padding(
//                                               padding: getPadding(top: 6),
//                                               child: Text("lbl_sagar_ratna".tr,
//                                                   overflow:
//                                                       TextOverflow.ellipsis,
//                                                   textAlign: TextAlign.center,
//                                                   style: AppStyle
//                                                       .txtPoppinsMedium25)),
//                                           CustomButton(
//                                               height: 41,
//                                               width: 78,
//                                               text: "lbl_02".tr,
//                                               margin: getMargin(bottom: 3),
//                                               variant:
//                                                   ButtonVariant.FillAmber200,
//                                               shape:
//                                                   ButtonShape.RoundedBorder20,
//                                               padding: ButtonPadding.PaddingT8,
//                                               fontStyle: ButtonFontStyle
//                                                   .PoppinsSemiBold16,
//                                               prefixWidget: Container(
//                                                   margin: getMargin(right: 7),
//                                                   child: CustomImageView(
//                                                       svgPath: ImageConstant
//                                                           .imgCart)))
//                                         ])),
//                                 CustomSearchView(
//                                     width: 337,
//                                     focusNode: FocusNode(),
//                                     controller:
//                                         controller.groupFiftyFiveController,
//                                     hintText: "msg_search_for_something".tr,
//                                     margin: getMargin(top: 26, bottom: 21),
//                                     variant:
//                                         SearchViewVariant.OutlineBlack9000f,
//                                     padding: SearchViewPadding.PaddingT14,
//                                     fontStyle:
//                                         SearchViewFontStyle.PoppinsRegular13,
//                                     prefix: Container(
//                                         margin: getMargin(
//                                             left: 17,
//                                             top: 15,
//                                             right: 11,
//                                             bottom: 17),
//                                         child: CustomImageView(
//                                             svgPath: ImageConstant.imgSearch)),
//                                     prefixConstraints: BoxConstraints(
//                                         maxHeight: getVerticalSize(50.00)),
//                                     suffix: Padding(
//                                         padding: EdgeInsets.only(
//                                             right: getHorizontalSize(15.00)),
//                                         child: IconButton(
//                                             onPressed: () {
//                                               controller
//                                                   .groupFiftyFiveController
//                                                   .clear;
//                                             },
//                                             icon: Icon(Icons.clear,
//                                                 color: Colors.grey.shade600))),
//                                     suffixConstraints: BoxConstraints(
//                                         maxHeight: getVerticalSize(50.00)))
//                               ])),
//                       CustomTextFormField(
//                           width: 360,
//                           focusNode: FocusNode(),
//                           controller: controller.group137Controller,
//                           hintText: "msg_repeat_last_order".tr,
//                           margin: getMargin(top: 20),
//                           variant: TextFormFieldVariant.UnderLineGray4005b,
//                           padding: TextFormFieldPadding.PaddingT1,
//                           fontStyle: TextFormFieldFontStyle.PoppinsRegular15,
//                           prefix: Container(
//                               margin:
//                                   getMargin(left: 15, right: 13, bottom: 10),
//                               child: CustomImageView(
//                                   svgPath: ImageConstant.imgRefreshBlack900)),
//                           prefixConstraints: BoxConstraints(
//                               maxHeight: getVerticalSize(30.00))),
//                       CustomTextFormField(
//                           width: 360,
//                           focusNode: FocusNode(),
//                           controller: controller.group139Controller,
//                           hintText: "lbl_help".tr,
//                           margin: getMargin(top: 16),
//                           variant: TextFormFieldVariant.UnderLineGray4005b,
//                           padding: TextFormFieldPadding.PaddingT1,
//                           fontStyle: TextFormFieldFontStyle.PoppinsRegular15,
//                           prefix: Container(
//                               margin:
//                                   getMargin(left: 15, right: 10, bottom: 17),
//                               child: CustomImageView(
//                                   svgPath: ImageConstant.imgQuestionBlack900)),
//                           prefixConstraints: BoxConstraints(
//                               maxHeight: getVerticalSize(37.00))),
//                       CustomTextFormField(
//                           width: 360,
//                           focusNode: FocusNode(),
//                           controller: controller.group141Controller,
//                           hintText: "lbl_surprise".tr,
//                           margin: getMargin(top: 18),
//                           variant: TextFormFieldVariant.UnderLineGray4005b,
//                           padding: TextFormFieldPadding.PaddingT1,
//                           fontStyle: TextFormFieldFontStyle.PoppinsRegular15,
//                           textInputAction: TextInputAction.done,
//                           prefix: Container(
//                               margin: getMargin(left: 15, right: 9, bottom: 15),
//                               child: CustomImageView(
//                                   svgPath: ImageConstant.imgTrash)),
//                           prefixConstraints: BoxConstraints(
//                               maxHeight: getVerticalSize(36.00))),
//                       Align(
//                           alignment: Alignment.centerLeft,
//                           child: Padding(
//                               padding: getPadding(left: 25, top: 15, right: 48),
//                               child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text("lbl_top_categories".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.center,
//                                         style: AppStyle.txtPoppinsMedium20),
//                                     Padding(
//                                         padding: getPadding(top: 2, bottom: 8),
//                                         child: Text("lbl_see_all".tr,
//                                             overflow: TextOverflow.ellipsis,
//                                             textAlign: TextAlign.left,
//                                             style:
//                                                 AppStyle.txtPoppinsRegular12))
//                                   ]))),
//                       Align(
//                           alignment: Alignment.centerRight,
//                           child: SingleChildScrollView(
//                               scrollDirection: Axis.horizontal,
//                               padding: getPadding(left: 27, top: 9),
//                               child: IntrinsicWidth(
//                                   child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                     Container(
//                                         padding: getPadding(
//                                             left: 3,
//                                             top: 4,
//                                             right: 3,
//                                             bottom: 4),
//                                         decoration: AppDecoration
//                                             .outlineWhiteA7001
//                                             .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .roundedBorder10),
//                                         child: Row(children: [
//                                           CustomImageView(
//                                               imagePath:
//                                                   ImageConstant.imgEllipse44,
//                                               height: getSize(36.00),
//                                               width: getSize(36.00),
//                                               radius: BorderRadius.circular(
//                                                   getHorizontalSize(18.00))),
//                                           Padding(
//                                               padding: getPadding(
//                                                   left: 9,
//                                                   top: 6,
//                                                   right: 23,
//                                                   bottom: 6),
//                                               child: Text("lbl_all".tr,
//                                                   overflow:
//                                                       TextOverflow.ellipsis,
//                                                   textAlign: TextAlign.left,
//                                                   style: AppStyle
//                                                       .txtPoppinsRegular15))
//                                         ])),
//                                     Container(
//                                         margin: getMargin(left: 16),
//                                         padding: getPadding(
//                                             left: 3,
//                                             top: 4,
//                                             right: 3,
//                                             bottom: 4),
//                                         decoration: AppDecoration
//                                             .outlineBlack90005
//                                             .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .roundedBorder10),
//                                         child: Row(children: [
//                                           CustomImageView(
//                                               imagePath:
//                                                   ImageConstant.imgEllipse45,
//                                               height: getSize(36.00),
//                                               width: getSize(36.00),
//                                               radius: BorderRadius.circular(
//                                                   getHorizontalSize(18.00))),
//                                           Container(
//                                               width: getHorizontalSize(35.00),
//                                               margin: getMargin(
//                                                   left: 8,
//                                                   top: 4,
//                                                   right: 5,
//                                                   bottom: 1),
//                                               child: Text("lbl_north_indian".tr,
//                                                   maxLines: null,
//                                                   textAlign: TextAlign.center,
//                                                   style: AppStyle
//                                                       .txtPoppinsRegular12))
//                                         ])),
//                                     Container(
//                                         margin: getMargin(left: 12),
//                                         padding: getPadding(
//                                             left: 3,
//                                             top: 4,
//                                             right: 3,
//                                             bottom: 4),
//                                         decoration: AppDecoration
//                                             .outlineBlack90005
//                                             .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .roundedBorder10),
//                                         child: Row(children: [
//                                           CustomImageView(
//                                               imagePath:
//                                                   ImageConstant.imgEllipse48,
//                                               height: getSize(36.00),
//                                               width: getSize(36.00),
//                                               radius: BorderRadius.circular(
//                                                   getHorizontalSize(18.00))),
//                                           Container(
//                                               width: getHorizontalSize(35.00),
//                                               margin: getMargin(
//                                                   left: 7,
//                                                   top: 4,
//                                                   right: 6,
//                                                   bottom: 1),
//                                               child: Text("lbl_south_indian".tr,
//                                                   maxLines: null,
//                                                   textAlign: TextAlign.center,
//                                                   style: AppStyle
//                                                       .txtPoppinsRegular12))
//                                         ])),
//                                     Card(
//                                         clipBehavior: Clip.antiAlias,
//                                         elevation: 0,
//                                         margin: getMargin(left: 20),
//                                         color: ColorConstant.whiteA700,
//                                         shape: RoundedRectangleBorder(
//                                             side: BorderSide(
//                                                 color: ColorConstant.black90005,
//                                                 width: getHorizontalSize(1.00)),
//                                             borderRadius: BorderRadiusStyle
//                                                 .roundedBorder10),
//                                         child: Container(
//                                             height: getVerticalSize(44.00),
//                                             width: getHorizontalSize(92.00),
//                                             padding: getPadding(
//                                                 left: 3,
//                                                 top: 4,
//                                                 right: 3,
//                                                 bottom: 4),
//                                             decoration: AppDecoration
//                                                 .outlineBlack90005
//                                                 .copyWith(
//                                                     borderRadius:
//                                                         BorderRadiusStyle
//                                                             .roundedBorder10),
//                                             child: Stack(children: [
//                                               CustomImageView(
//                                                   imagePath: ImageConstant
//                                                       .imgEllipse47,
//                                                   height: getSize(36.00),
//                                                   width: getSize(36.00),
//                                                   radius: BorderRadius.circular(
//                                                       getHorizontalSize(18.00)),
//                                                   alignment:
//                                                       Alignment.centerLeft)
//                                             ])))
//                                   ])))),
//                       Align(
//                           alignment: Alignment.centerLeft,
//                           child: Padding(
//                               padding: getPadding(left: 24, top: 19, right: 41),
//                               child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text("msg_recommended_for".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.center,
//                                         style: AppStyle.txtPoppinsMedium20),
//                                     Padding(
//                                         padding: getPadding(top: 2, bottom: 8),
//                                         child: Text("lbl_see_all".tr,
//                                             overflow: TextOverflow.ellipsis,
//                                             textAlign: TextAlign.left,
//                                             style:
//                                                 AppStyle.txtPoppinsRegular12))
//                                   ]))),
//                       Padding(
//                           padding: getPadding(left: 33, top: 21, right: 38),
//                           child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 GestureDetector(
//                                     onTap: () {
//                                       onTapColumnellipsefortynine();
//                                     },
//                                     child: Container(
//                                         padding: getPadding(
//                                             left: 17,
//                                             top: 11,
//                                             right: 17,
//                                             bottom: 11),
//                                         decoration: AppDecoration
//                                             .outlineBlack9000c
//                                             .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .roundedBorder20),
//                                         child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.start,
//                                             children: [
//                                               CustomImageView(
//                                                   imagePath: ImageConstant
//                                                       .imgEllipse49,
//                                                   height:
//                                                       getVerticalSize(121.00),
//                                                   width:
//                                                       getHorizontalSize(115.00),
//                                                   radius: BorderRadius.circular(
//                                                       getHorizontalSize(
//                                                           60.00))),
//                                               Container(
//                                                   width:
//                                                       getHorizontalSize(73.00),
//                                                   margin: getMargin(top: 10),
//                                                   child: RichText(
//                                                       text: TextSpan(children: [
//                                                         TextSpan(
//                                                             text:
//                                                                 "lbl_masala_dosa"
//                                                                     .tr,
//                                                             style: TextStyle(
//                                                                 color:
//                                                                     ColorConstant
//                                                                         .black900,
//                                                                 fontSize:
//                                                                     getFontSize(
//                                                                         12),
//                                                                 fontFamily:
//                                                                     'Poppins',
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w400)),
//                                                         TextSpan(
//                                                             text: "lbl_250_inr"
//                                                                 .tr,
//                                                             style: TextStyle(
//                                                                 color:
//                                                                     ColorConstant
//                                                                         .black900,
//                                                                 fontSize:
//                                                                     getFontSize(
//                                                                         14),
//                                                                 fontFamily:
//                                                                     'Poppins',
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w600))
//                                                       ]),
//                                                       textAlign:
//                                                           TextAlign.center))
//                                             ]))),
//                                 GestureDetector(
//                                     onTap: () {
//                                       onTapColumnellipsefifty();
//                                     },
//                                     child: Container(
//                                         padding: getPadding(
//                                             left: 17,
//                                             top: 11,
//                                             right: 17,
//                                             bottom: 11),
//                                         decoration: AppDecoration
//                                             .outlineBlack9000c
//                                             .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .roundedBorder20),
//                                         child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.start,
//                                             children: [
//                                               CustomImageView(
//                                                   imagePath: ImageConstant
//                                                       .imgEllipse50,
//                                                   height:
//                                                       getVerticalSize(121.00),
//                                                   width:
//                                                       getHorizontalSize(115.00),
//                                                   radius: BorderRadius.circular(
//                                                       getHorizontalSize(
//                                                           60.00))),
//                                               Container(
//                                                   width:
//                                                       getHorizontalSize(50.00),
//                                                   margin: getMargin(top: 10),
//                                                   child: RichText(
//                                                       text: TextSpan(children: [
//                                                         TextSpan(
//                                                             text: "lbl_chotpoti"
//                                                                 .tr,
//                                                             style: TextStyle(
//                                                                 color:
//                                                                     ColorConstant
//                                                                         .black900,
//                                                                 fontSize:
//                                                                     getFontSize(
//                                                                         12),
//                                                                 fontFamily:
//                                                                     'Poppins',
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w400)),
//                                                         TextSpan(
//                                                             text: "lbl_250_inr"
//                                                                 .tr,
//                                                             style: TextStyle(
//                                                                 color:
//                                                                     ColorConstant
//                                                                         .black900,
//                                                                 fontSize:
//                                                                     getFontSize(
//                                                                         14),
//                                                                 fontFamily:
//                                                                     'Poppins',
//                                                                 fontWeight:
//                                                                     FontWeight
//                                                                         .w600))
//                                                       ]),
//                                                       textAlign:
//                                                           TextAlign.center))
//                                             ])))
//                               ]))
//                     ])),
//             bottomNavigationBar: Padding(
//                 padding: getPadding(left: 71, right: 77, bottom: 43),
//                 child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       CustomButton(
//                           height: 45,
//                           width: 266,
//                           text: "msg_checkout_2_products".tr)
//                     ]))));
//   }
//
//   onTapColumnellipsefortynine() {
//     Get.toNamed(AppRoutes.addToOrderScreen);
//   }
//
//   onTapColumnellipsefifty() {
//     Get.toNamed(AppRoutes.addToOrderScreen);
//   }
// }
