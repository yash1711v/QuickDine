import '../explore2afterclickingonsearch_screen/widgets/restaurantnear4_item_widget.dart';
import 'controller/explore2afterclickingonsearch_controller.dart';
import 'models/restaurantnear4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/app_bar/appbar_dropdown_1.dart';
import 'package:quickdine/widgets/app_bar/appbar_stack.dart';
import 'package:quickdine/widgets/app_bar/custom_app_bar.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:quickdine/widgets/custom_text_form_field.dart';

class Explore2afterclickingonsearchScreen
    extends GetWidget<Explore2afterclickingonsearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(37.00),
                title: AppbarDropdown1(
                    hintText: "lbl_delhi".tr,
                    items: controller.explore2afterclickingonsearchModelObj
                        .value.dropdownItemList,
                    onTap: (value) {
                      controller.onSelected(value);
                    },
                    margin: getMargin(left: 18)),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 19, top: 3, right: 19),
                      onTap: onTapProfileIcon4)
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 11, top: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(30.00),
                                  width: getHorizontalSize(351.00),
                                  margin: getMargin(left: 7),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                "msg_quickk_dine_fun".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium20)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                "msg_quickk_dine_fun".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium20))
                                      ])),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller: controller.searchButtonController,
                                  hintText: "msg_search_for_restaurants".tr,
                                  margin: getMargin(top: 22),
                                  variant:
                                      TextFormFieldVariant.OutlineBlack90007,
                                  shape: TextFormFieldShape.RoundedBorder5,
                                  padding: TextFormFieldPadding.PaddingT10,
                                  fontStyle:
                                      TextFormFieldFontStyle.PoppinsRegular12,
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 18,
                                          top: 12,
                                          right: 22,
                                          bottom: 13),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgRefresh)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(40.00))),
                              Padding(
                                  padding:
                                      getPadding(left: 3, top: 23, right: 25),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_categories".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium20),
                                        Padding(
                                            padding:
                                                getPadding(top: 4, bottom: 6),
                                            child: Text("lbl_see_all".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12))
                                      ])),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(top: 6),
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
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse44,
                                                  height: getSize(36.00),
                                                  width: getSize(36.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          18.00))),
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
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse45,
                                                  height: getSize(36.00),
                                                  width: getSize(36.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          18.00))),
                                              Container(
                                                  width:
                                                      getHorizontalSize(35.00),
                                                  margin: getMargin(
                                                      left: 8,
                                                      top: 4,
                                                      right: 5,
                                                      bottom: 1),
                                                  child: Text(
                                                      "lbl_north_indian".tr,
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
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
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse48,
                                                  height: getSize(36.00),
                                                  width: getSize(36.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          18.00))),
                                              Container(
                                                  width:
                                                      getHorizontalSize(35.00),
                                                  margin: getMargin(
                                                      left: 7,
                                                      top: 4,
                                                      right: 6,
                                                      bottom: 1),
                                                  child: Text(
                                                      "lbl_south_indian".tr,
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12))
                                            ])),
                                        Container(
                                            margin: getMargin(left: 20),
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
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse47,
                                                      height: getSize(36.00),
                                                      width: getSize(36.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  18.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 6,
                                                          right: 2,
                                                          bottom: 15),
                                                      child: Text(
                                                          "lbl_chines".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12))
                                                ]))
                                      ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 9, top: 17, right: 29),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("msg_restaurants_near".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium20),
                                        Padding(
                                            padding:
                                                getPadding(top: 3, bottom: 7),
                                            child: Text("lbl_see_all".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(180.00),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(top: 6),
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(11.00));
                                          },
                                          itemCount: controller
                                              .explore2afterclickingonsearchModelObj
                                              .value
                                              .restaurantnear4ItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            Restaurantnear4ItemModel model = controller
                                                .explore2afterclickingonsearchModelObj
                                                .value
                                                .restaurantnear4ItemList[index];
                                            return Restaurantnear4ItemWidget(
                                                model);
                                          })))),
                              Padding(
                                  padding: getPadding(left: 7, top: 19),
                                  child: Text("msg_featured_restaurants".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium20)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle13,
                                  height: getVerticalSize(154.00),
                                  width: getHorizontalSize(340.00),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(5.00)),
                                  margin: getMargin(left: 7, top: 12)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 8, top: 1, right: 22),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: getVerticalSize(65.00),
                                                width:
                                                    getHorizontalSize(270.00),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Row(children: [
                                                            Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin:
                                                                    getMargin(
                                                                        top: 3,
                                                                        bottom:
                                                                            2),
                                                                color:
                                                                    ColorConstant
                                                                        .amber500,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            16.00),
                                                                        width: getHorizontalSize(
                                                                            17.00),
                                                                        padding: getPadding(
                                                                            left:
                                                                                5,
                                                                            top:
                                                                                4,
                                                                            right:
                                                                                5,
                                                                            bottom:
                                                                                4),
                                                                        decoration: AppDecoration
                                                                            .fillAmber500
                                                                            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                        child: Stack(children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgAirplane,
                                                                              height: getSize(6.00),
                                                                              width: getSize(6.00),
                                                                              alignment: Alignment.center)
                                                                        ]))),
                                                            Text(
                                                                "lbl_flat_30_off"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsMedium15Red500)
                                                          ])),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 3,
                                                                      bottom:
                                                                          19),
                                                              child: Text(
                                                                  "msg_pragati_vihar_new"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular12Black900d1))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Text(
                                                              "msg_baluchi_indian"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium20))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 8, bottom: 39),
                                                child: RatingBar.builder(
                                                    initialRating: 4,
                                                    minRating: 0,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: false,
                                                    itemSize:
                                                        getVerticalSize(17.00),
                                                    unratedColor:
                                                        ColorConstant.amber500,
                                                    itemCount: 4,
                                                    updateOnDrag: true,
                                                    onRatingUpdate: (rating) {},
                                                    itemBuilder: (context, _) {
                                                      return Icon(Icons.star,
                                                          color: ColorConstant
                                                              .amber500);
                                                    }))
                                          ]))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle13,
                                  height: getVerticalSize(154.00),
                                  width: getHorizontalSize(340.00),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(5.00)),
                                  margin: getMargin(left: 12, top: 11)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 14, top: 5, right: 17),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("msg_baluchi_indian".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsMedium20),
                                            Padding(
                                                padding: getPadding(
                                                    top: 5, bottom: 2),
                                                child: RatingBar.builder(
                                                    initialRating: 4,
                                                    minRating: 0,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: false,
                                                    itemSize:
                                                        getVerticalSize(17.00),
                                                    unratedColor:
                                                        ColorConstant.amber500,
                                                    itemCount: 4,
                                                    updateOnDrag: true,
                                                    onRatingUpdate: (rating) {},
                                                    itemBuilder: (context, _) {
                                                      return Icon(Icons.star,
                                                          color: ColorConstant
                                                              .amber500);
                                                    }))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 16),
                                  child: Text("msg_pragati_vihar_new".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsRegular12Black900d1)),
                              Container(
                                  height: getVerticalSize(19.00),
                                  width: getHorizontalSize(109.00),
                                  margin: getMargin(left: 13, top: 1),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Text("lbl_flat_30_off".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsMedium15Red500)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                color: ColorConstant.amber500,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(16.00),
                                                    width: getHorizontalSize(
                                                        17.00),
                                                    padding: getPadding(
                                                        left: 5,
                                                        top: 4,
                                                        right: 5,
                                                        bottom: 4),
                                                    decoration: AppDecoration
                                                        .fillAmber500
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgAirplane,
                                                          height: getSize(6.00),
                                                          width: getSize(6.00),
                                                          alignment:
                                                              Alignment.center)
                                                    ]))))
                                      ])),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle13,
                                  height: getVerticalSize(154.00),
                                  width: getHorizontalSize(340.00),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(5.00)),
                                  margin: getMargin(left: 17, top: 13)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 19, top: 5, right: 12),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("msg_baluchi_indian".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsMedium20),
                                            Padding(
                                                padding: getPadding(
                                                    top: 5, bottom: 2),
                                                child: RatingBar.builder(
                                                    initialRating: 4,
                                                    minRating: 0,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: false,
                                                    itemSize:
                                                        getVerticalSize(17.00),
                                                    unratedColor:
                                                        ColorConstant.amber500,
                                                    itemCount: 4,
                                                    updateOnDrag: true,
                                                    onRatingUpdate: (rating) {},
                                                    itemBuilder: (context, _) {
                                                      return Icon(Icons.star,
                                                          color: ColorConstant
                                                              .amber500);
                                                    }))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 21),
                                  child: Text("msg_pragati_vihar_new".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsRegular12Black900d1)),
                              Container(
                                  height: getVerticalSize(19.00),
                                  width: getHorizontalSize(109.00),
                                  margin: getMargin(left: 18, top: 1),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Text("lbl_flat_30_off".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsMedium15Red500)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                color: ColorConstant.amber500,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(16.00),
                                                    width: getHorizontalSize(
                                                        17.00),
                                                    padding: getPadding(
                                                        left: 5,
                                                        top: 4,
                                                        right: 5,
                                                        bottom: 4),
                                                    decoration: AppDecoration
                                                        .fillAmber500
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgAirplane,
                                                          height: getSize(6.00),
                                                          width: getSize(6.00),
                                                          alignment:
                                                              Alignment.center)
                                                    ]))))
                                      ])),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle13,
                                  height: getVerticalSize(154.00),
                                  width: getHorizontalSize(340.00),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(5.00)),
                                  margin: getMargin(left: 22, top: 13)),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 24, top: 5, right: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("msg_baluchi_indian".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsMedium20),
                                            Padding(
                                                padding: getPadding(
                                                    top: 5, bottom: 2),
                                                child: RatingBar.builder(
                                                    initialRating: 4,
                                                    minRating: 0,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: false,
                                                    itemSize:
                                                        getVerticalSize(17.00),
                                                    unratedColor:
                                                        ColorConstant.amber500,
                                                    itemCount: 4,
                                                    updateOnDrag: true,
                                                    onRatingUpdate: (rating) {},
                                                    itemBuilder: (context, _) {
                                                      return Icon(Icons.star,
                                                          color: ColorConstant
                                                              .amber500);
                                                    }))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 26),
                                  child: Text("msg_pragati_vihar_new".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsRegular12Black900d1)),
                              Container(
                                  height: getVerticalSize(19.00),
                                  width: getHorizontalSize(109.00),
                                  margin: getMargin(left: 23, top: 1),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Text("lbl_flat_30_off".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtPoppinsMedium15Red500)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                color: ColorConstant.amber500,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(16.00),
                                                    width: getHorizontalSize(
                                                        17.00),
                                                    padding: getPadding(
                                                        left: 5,
                                                        top: 4,
                                                        right: 5,
                                                        bottom: 4),
                                                    decoration: AppDecoration
                                                        .fillAmber500
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgAirplane,
                                                          height: getSize(6.00),
                                                          width: getSize(6.00),
                                                          alignment:
                                                              Alignment.center)
                                                    ]))))
                                      ]))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  onTapProfileIcon4() {
    Get.toNamed(AppRoutes.profileSettingScreen);
  }
}
