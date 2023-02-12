import '../sidemenu_screen/widgets/listrectanglefiftyfive1_item_widget.dart';
import '../sidemenu_screen/widgets/restaurantnear2_item_widget.dart';
import 'controller/sidemenu_controller.dart';
import 'models/listrectanglefiftyfive1_item_model.dart';
import 'models/restaurantnear2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/app_bar/appbar_image.dart';
import 'package:quickdine/widgets/app_bar/appbar_stack.dart';
import 'package:quickdine/widgets/app_bar/custom_app_bar.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:quickdine/widgets/custom_drop_down.dart';

class SidemenuScreen extends GetWidget<SidemenuController> {
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
                                  height: size.height,
                                  width: size.width,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                                height: size.height,
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        padding: getPadding(
                                                            left: 11,
                                                            top: 227,
                                                            bottom: 552),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        physics:
                                                            BouncingScrollPhysics(),
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      17.00));
                                                        },
                                                        itemCount: controller
                                                            .sidemenuModelObj
                                                            .value
                                                            .listrectanglefiftyfive1ItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          Listrectanglefiftyfive1ItemModel
                                                              model = controller
                                                                  .sidemenuModelObj
                                                                  .value
                                                                  .listrectanglefiftyfive1ItemList[index];
                                                          return Listrectanglefiftyfive1ItemWidget(
                                                              model);
                                                        })))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 365,
                                                    right: 29,
                                                    bottom: 500),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          "msg_restaurants_near"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium20),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 3,
                                                              bottom: 7),
                                                          child: Text(
                                                              "lbl_see_all".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                                height: getVerticalSize(895.00),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        padding: getPadding(
                                                            left: 11,
                                                            top: 402,
                                                            bottom: 319),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        physics:
                                                            BouncingScrollPhysics(),
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      11.00));
                                                        },
                                                        itemCount: controller
                                                            .sidemenuModelObj
                                                            .value
                                                            .restaurantnear2ItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          Restaurantnear2ItemModel
                                                              model = controller
                                                                  .sidemenuModelObj
                                                                  .value
                                                                  .restaurantnear2ItemList[index];
                                                          return Restaurantnear2ItemWidget(
                                                              model);
                                                        })))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 18, bottom: 270),
                                                child: Text(
                                                    "msg_featured_restaurants"
                                                        .tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium20))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 18, right: 7),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle13,
                                                          height:
                                                              getVerticalSize(
                                                                  154.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  340.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      5.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1,
                                                              top: 1,
                                                              right: 15),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            65.00),
                                                                    width: getHorizontalSize(
                                                                        270.00),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.bottomLeft,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.bottomLeft,
                                                                              child: Row(children: [
                                                                                Card(
                                                                                    clipBehavior: Clip.antiAlias,
                                                                                    elevation: 0,
                                                                                    margin: getMargin(top: 4, bottom: 2),
                                                                                    color: ColorConstant.amber500,
                                                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                    child: Container(
                                                                                        height: getVerticalSize(16.00),
                                                                                        width: getHorizontalSize(17.00),
                                                                                        padding: getPadding(left: 5, top: 4, right: 5, bottom: 4),
                                                                                        decoration: AppDecoration.fillAmber500.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                        child: Stack(children: [
                                                                                          CustomImageView(svgPath: ImageConstant.imgAirplane, height: getSize(6.00), width: getSize(6.00), alignment: Alignment.center)
                                                                                        ]))),
                                                                                Text("lbl_flat_30_off".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium15Red500)
                                                                              ])),
                                                                          Align(
                                                                              alignment: Alignment.bottomLeft,
                                                                              child: Padding(padding: getPadding(left: 3, bottom: 19), child: Text("msg_pragati_vihar_new".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12Black900d1))),
                                                                          Align(
                                                                              alignment: Alignment.topCenter,
                                                                              child: Text("msg_baluchi_indian".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium20))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 8,
                                                                        bottom:
                                                                            39),
                                                                    child: RatingBar.builder(
                                                                        initialRating: 4,
                                                                        minRating: 0,
                                                                        direction: Axis.horizontal,
                                                                        allowHalfRating: false,
                                                                        itemSize: getVerticalSize(17.00),
                                                                        unratedColor: ColorConstant.amber500,
                                                                        itemCount: 4,
                                                                        updateOnDrag: true,
                                                                        onRatingUpdate: (rating) {},
                                                                        itemBuilder: (context, _) {
                                                                          return Icon(
                                                                              Icons.star,
                                                                              color: ColorConstant.amber500);
                                                                        }))
                                                              ])),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle13,
                                                          height:
                                                              getVerticalSize(
                                                                  154.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  340.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      5.00)),
                                                          margin: getMargin(
                                                              left: 5,
                                                              top: 12)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 7,
                                                              top: 5,
                                                              right: 10),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "msg_baluchi_indian"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtPoppinsMedium20),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 5,
                                                                        bottom:
                                                                            2),
                                                                    child: RatingBar.builder(
                                                                        initialRating: 4,
                                                                        minRating: 0,
                                                                        direction: Axis.horizontal,
                                                                        allowHalfRating: false,
                                                                        itemSize: getVerticalSize(17.00),
                                                                        unratedColor: ColorConstant.amber500,
                                                                        itemCount: 4,
                                                                        updateOnDrag: true,
                                                                        onRatingUpdate: (rating) {},
                                                                        itemBuilder: (context, _) {
                                                                          return Icon(
                                                                              Icons.star,
                                                                              color: ColorConstant.amber500);
                                                                        }))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 9),
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
                                                                  .txtPoppinsRegular12Black900d1)),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  19.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  109.00),
                                                          margin: getMargin(
                                                              left: 6, top: 1),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child: Text(
                                                                        "lbl_flat_30_off"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium15Red500)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Card(
                                                                        clipBehavior:
                                                                            Clip
                                                                                .antiAlias,
                                                                        elevation:
                                                                            0,
                                                                        margin:
                                                                            EdgeInsets.all(
                                                                                0),
                                                                        color: ColorConstant
                                                                            .amber500,
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadiusStyle.roundedBorder10),
                                                                        child: Container(
                                                                            height: getVerticalSize(16.00),
                                                                            width: getHorizontalSize(17.00),
                                                                            padding: getPadding(left: 5, top: 4, right: 5, bottom: 4),
                                                                            decoration: AppDecoration.fillAmber500.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                            child: Stack(children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgAirplane, height: getSize(6.00), width: getSize(6.00), alignment: Alignment.center)
                                                                            ]))))
                                                              ])),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle13,
                                                          height:
                                                              getVerticalSize(
                                                                  154.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  340.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      5.00)),
                                                          margin: getMargin(
                                                              left: 10,
                                                              top: 13)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 12,
                                                              top: 5,
                                                              right: 5),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "msg_baluchi_indian"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtPoppinsMedium20),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 5,
                                                                        bottom:
                                                                            2),
                                                                    child: RatingBar.builder(
                                                                        initialRating: 4,
                                                                        minRating: 0,
                                                                        direction: Axis.horizontal,
                                                                        allowHalfRating: false,
                                                                        itemSize: getVerticalSize(17.00),
                                                                        unratedColor: ColorConstant.amber500,
                                                                        itemCount: 4,
                                                                        updateOnDrag: true,
                                                                        onRatingUpdate: (rating) {},
                                                                        itemBuilder: (context, _) {
                                                                          return Icon(
                                                                              Icons.star,
                                                                              color: ColorConstant.amber500);
                                                                        }))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 14),
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
                                                                  .txtPoppinsRegular12Black900d1)),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  19.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  109.00),
                                                          margin: getMargin(
                                                              left: 11, top: 1),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child: Text(
                                                                        "lbl_flat_30_off"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium15Red500)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Card(
                                                                        clipBehavior:
                                                                            Clip
                                                                                .antiAlias,
                                                                        elevation:
                                                                            0,
                                                                        margin:
                                                                            EdgeInsets.all(
                                                                                0),
                                                                        color: ColorConstant
                                                                            .amber500,
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadiusStyle.roundedBorder10),
                                                                        child: Container(
                                                                            height: getVerticalSize(16.00),
                                                                            width: getHorizontalSize(17.00),
                                                                            padding: getPadding(left: 5, top: 4, right: 5, bottom: 4),
                                                                            decoration: AppDecoration.fillAmber500.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                            child: Stack(children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgAirplane, height: getSize(6.00), width: getSize(6.00), alignment: Alignment.center)
                                                                            ]))))
                                                              ])),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle13,
                                                          height:
                                                              getVerticalSize(
                                                                  154.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  340.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      5.00)),
                                                          margin: getMargin(
                                                              left: 15,
                                                              top: 13)),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 17,
                                                                      top: 5),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                        "msg_baluchi_indian"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium20),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                5,
                                                                            bottom:
                                                                                2),
                                                                        child: RatingBar.builder(
                                                                            initialRating: 4,
                                                                            minRating: 0,
                                                                            direction: Axis.horizontal,
                                                                            allowHalfRating: false,
                                                                            itemSize: getVerticalSize(17.00),
                                                                            unratedColor: ColorConstant.amber500,
                                                                            itemCount: 4,
                                                                            updateOnDrag: true,
                                                                            onRatingUpdate: (rating) {},
                                                                            itemBuilder: (context, _) {
                                                                              return Icon(Icons.star, color: ColorConstant.amber500);
                                                                            }))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 19),
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
                                                                  .txtPoppinsRegular12Black900d1)),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  19.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  109.00),
                                                          margin: getMargin(
                                                              left: 16, top: 1),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child: Text(
                                                                        "lbl_flat_30_off"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium15Red500)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Card(
                                                                        clipBehavior:
                                                                            Clip
                                                                                .antiAlias,
                                                                        elevation:
                                                                            0,
                                                                        margin:
                                                                            EdgeInsets.all(
                                                                                0),
                                                                        color: ColorConstant
                                                                            .amber500,
                                                                        shape: RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadiusStyle.roundedBorder10),
                                                                        child: Container(
                                                                            height: getVerticalSize(16.00),
                                                                            width: getHorizontalSize(17.00),
                                                                            padding: getPadding(left: 5, top: 4, right: 5, bottom: 4),
                                                                            decoration: AppDecoration.fillAmber500.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                            child: Stack(children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgAirplane, height: getSize(6.00), width: getSize(6.00), alignment: Alignment.center)
                                                                            ]))))
                                                              ]))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width: size.width,
                                                padding: getPadding(
                                                    left: 6,
                                                    top: 10,
                                                    right: 6,
                                                    bottom: 10),
                                                decoration: AppDecoration
                                                    .fillWhiteA70051
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder20),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  399.00),
                                                          margin: getMargin(
                                                              right: 1,
                                                              bottom: 182),
                                                          padding: getPadding(
                                                              left: 11,
                                                              top: 27,
                                                              right: 11,
                                                              bottom: 27),
                                                          decoration: AppDecoration
                                                              .outlineBlack900
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder20),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 6,
                                                                        right:
                                                                            24),
                                                                    child: Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgEllipse60,
                                                                              height: getVerticalSize(83.00),
                                                                              width: getHorizontalSize(77.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(41.00))),
                                                                          Container(
                                                                              width: getHorizontalSize(104.00),
                                                                              margin: getMargin(left: 24, top: 8, bottom: 22),
                                                                              child: RichText(
                                                                                  text: TextSpan(children: [
                                                                                    TextSpan(text: "lbl_hello".tr, style: TextStyle(color: ColorConstant.amber500, fontSize: getFontSize(15), fontFamily: 'Poppins', fontWeight: FontWeight.w600)),
                                                                                    TextSpan(text: " ", style: TextStyle(color: ColorConstant.amber500, fontSize: getFontSize(19), fontFamily: 'Poppins', fontWeight: FontWeight.w600)),
                                                                                    TextSpan(text: "lbl_vaibhav".tr, style: TextStyle(color: ColorConstant.amber500, fontSize: getFontSize(25), fontFamily: 'Poppins', fontWeight: FontWeight.w600))
                                                                                  ]),
                                                                                  textAlign: TextAlign.center)),
                                                                          Spacer(),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgClose,
                                                                              height: getVerticalSize(29.00),
                                                                              width: getHorizontalSize(27.00),
                                                                              margin: getMargin(bottom: 53))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            17,
                                                                        top: 6),
                                                                    child: Row(
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgArrowright,
                                                                              height: getVerticalSize(24.00),
                                                                              width: getHorizontalSize(23.00)),
                                                                          Padding(
                                                                              padding: getPadding(left: 15, bottom: 1),
                                                                              child: Text("msg_look_into_your_profile".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium15WhiteA700))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            17,
                                                                        top: 9),
                                                                    child: Row(
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgArrowright,
                                                                              height: getVerticalSize(24.00),
                                                                              width: getHorizontalSize(23.00),
                                                                              margin: getMargin(top: 1)),
                                                                          Padding(
                                                                              padding: getPadding(left: 13, bottom: 3),
                                                                              child: Text("lbl_your_orders".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtPoppinsMedium15WhiteA700))
                                                                        ])),
                                                                Container(
                                                                    height: getVerticalSize(
                                                                        415.00),
                                                                    width: getHorizontalSize(
                                                                        274.00),
                                                                    margin: getMargin(
                                                                        top: 53,
                                                                        bottom:
                                                                            21),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Container(height: getVerticalSize(415.00), width: getHorizontalSize(62.00), decoration: BoxDecoration(color: ColorConstant.blueGray1005b, borderRadius: BorderRadius.circular(getHorizontalSize(20.00))))),
                                                                          Align(
                                                                              alignment: Alignment.topCenter,
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 13, top: 18, right: 16, bottom: 360),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgInfo, height: getVerticalSize(30.00), width: getHorizontalSize(28.00), margin: getMargin(top: 4)),
                                                                                    Padding(padding: getPadding(bottom: 6), child: Text("lbl_who_we_are".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium19WhiteA700))
                                                                                  ]))),
                                                                          Align(
                                                                              alignment: Alignment.topLeft,
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 13, top: 106, right: 81, bottom: 277),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgUserWhiteA700, height: getVerticalSize(30.00), width: getHorizontalSize(28.00)),
                                                                                    Padding(padding: getPadding(top: 2), child: Text("lbl_profile".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium19WhiteA700))
                                                                                  ]))),
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 15, top: 191, right: 41, bottom: 189),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgMap, height: getVerticalSize(29.00), width: getHorizontalSize(27.00), margin: getMargin(top: 4)),
                                                                                    Padding(padding: getPadding(bottom: 5), child: Text("lbl_pre_order".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium19WhiteA700))
                                                                                  ]))),
                                                                          Align(
                                                                              alignment: Alignment.bottomRight,
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 15, top: 265, bottom: 102),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgOffer, height: getVerticalSize(29.00), width: getHorizontalSize(27.00), margin: getMargin(top: 17)),
                                                                                    Padding(padding: getPadding(bottom: 18), child: Text("lbl_offers_promos".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium19WhiteA700))
                                                                                  ]))),
                                                                          Align(
                                                                              alignment: Alignment.bottomLeft,
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 17, bottom: 24),
                                                                                  child: Row(children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgQuestion, height: getVerticalSize(29.00), width: getHorizontalSize(27.00), margin: getMargin(top: 1)),
                                                                                    Padding(padding: getPadding(left: 78, bottom: 1), child: Text("lbl_help".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium19WhiteA700))
                                                                                  ])))
                                                                        ]))
                                                              ]))
                                                    ])))
                                      ])))),
                      Container(
                          width: size.width,
                          margin: getMargin(bottom: 617),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(34.00),
                                    leadingWidth: 42,
                                    leading: AppbarImage(
                                        height: getSize(24.00),
                                        width: getSize(24.00),
                                        svgPath: ImageConstant.imgMenu,
                                        margin: getMargin(
                                            left: 18, top: 8, bottom: 2)),
                                    centerTitle: true,
                                    title: Container(
                                        padding: getPadding(
                                            left: 14,
                                            top: 2,
                                            right: 14,
                                            bottom: 2),
                                        decoration: AppDecoration
                                            .outlineAmber5001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AppbarImage(
                                                  height: getSize(15.00),
                                                  width: getSize(15.00),
                                                  svgPath:
                                                      ImageConstant.imgLocation,
                                                  margin: getMargin(
                                                      left: 14,
                                                      top: 7,
                                                      bottom: 9)),
                                              CustomDropDown(
                                                  width: 114,
                                                  focusNode: FocusNode(),
                                                  icon: Container(
                                                      margin:
                                                          getMargin(left: 30),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdown)),
                                                  hintText: "lbl_delhi".tr,
                                                  margin: getMargin(
                                                      left: 65,
                                                      top: 2,
                                                      right: 14,
                                                      bottom: 5),
                                                  variant: DropDownVariant.None,
                                                  items: controller
                                                      .sidemenuModelObj
                                                      .value
                                                      .dropdownItemList,
                                                  onChanged: (value) {
                                                    controller
                                                        .onSelected(value);
                                                  })
                                            ])),
                                    actions: [
                                      AppbarStack(
                                          margin:
                                              getMargin(left: 19, right: 19),
                                          onTap: onTapProfileIcon2)
                                    ]),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(30.00),
                                        width: getHorizontalSize(351.00),
                                        margin: getMargin(left: 18, top: 16),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                      "msg_quickk_dine_fun".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium20)),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                      "msg_quickk_dine_fun".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium20))
                                            ]))),
                                Container(
                                    margin:
                                        getMargin(left: 39, top: 22, right: 32),
                                    padding: getPadding(
                                        left: 18,
                                        top: 10,
                                        right: 18,
                                        bottom: 10),
                                    decoration: AppDecoration.outlineBlack90007
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgSearch,
                                          height: getSize(15.00),
                                          width: getSize(15.00),
                                          margin: getMargin(top: 1, bottom: 2)),
                                      Padding(
                                          padding:
                                              getPadding(left: 22, right: 34),
                                          child: Text(
                                              "msg_search_for_restaurants".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray5007a))
                                    ])),
                                Padding(
                                    padding: getPadding(
                                        left: 19, top: 20, right: 25),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_best_offers".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsMedium20),
                                          GestureDetector(
                                              onTap: () {
                                                onTapTxtSeeallOne();
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      top: 6, bottom: 4),
                                                  child: Text("lbl_see_all".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12)))
                                        ]))
                              ]))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  onTapProfileIcon2() {
    Get.toNamed(AppRoutes.profileSettingScreen);
  }

  onTapTxtSeeallOne() {
    Get.toNamed(AppRoutes.promoScreen);
  }
}
