import 'package:google_nav_bar/google_nav_bar.dart';

import 'controller/restaurantmap_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/app_bar/appbar_image.dart';
import 'package:quickdine/widgets/app_bar/custom_app_bar.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:quickdine/widgets/custom_drop_down.dart';
import 'package:quickdine/widgets/custom_search_view.dart';

class RestaurantmapScreen extends GetWidget<RestaurantmapController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getVerticalSize(21.00),
                    width: getHorizontalSize(20.00),
                    svgPath: ImageConstant.imgLocationBlack90021x20,
                    margin: getMargin(left: 28, top: 15, bottom: 19)),
                title: Row(children: [
                  CustomDropDown(
                      width: 53,
                      focusNode: FocusNode(),
                      icon: Container(
                          margin: getMargin(left: 3),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdownBlack900)),
                      hintText: "lbl_delhi".tr,
                      margin: getMargin(left: 2, top: 11, bottom: 21),
                      variant: DropDownVariant.None,
                      items: controller
                          .restaurantmapModelObj.value.dropdownItemList,
                      onChanged: (value) {
                        controller.onSelected(value);
                      }),
                  Padding(
                      padding: getPadding(left: 81, top: 14, bottom: 11),
                      child: Text("lbl_map".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium20))
                ]),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(21.00),
                      width: getHorizontalSize(20.00),
                      svgPath: ImageConstant.imgMapBlack900,
                      margin:
                          getMargin(left: 41, top: 14, right: 41, bottom: 20))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 27),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomSearchView(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller: controller.groupNineController,
                                  hintText: "lbl_search".tr,
                                  variant: SearchViewVariant.OutlineAmber500,
                                  padding: SearchViewPadding.PaddingT8,
                                  fontStyle:
                                      SearchViewFontStyle.PoppinsRegular15,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 13,
                                          top: 10,
                                          right: 6,
                                          bottom: 10),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSearch)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(43.00)),
                                  suffix: Padding(
                                      padding: EdgeInsets.only(
                                          right: getHorizontalSize(15.00)),
                                      child: IconButton(
                                          onPressed: () {
                                            controller
                                                .groupNineController.clear;
                                          },
                                          icon: Icon(Icons.clear,
                                              color: Colors.grey.shade600))),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(43.00))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgBasemapimage,
                                  height: getVerticalSize(338.00),
                                  width: getHorizontalSize(414.00),
                                  margin: getMargin(top: 13),
                                  onTap: () {
                                    onTapImgBasemapimage();
                                  }),
                              GestureDetector(
                                  onTap: () {
                                    onTapColumnrectanglefifteen();
                                  },
                                  child: Container(
                                      width: getHorizontalSize(385.00),
                                      margin: getMargin(
                                          left: 17, top: 19, right: 12),
                                      padding: getPadding(
                                          left: 15,
                                          top: 8,
                                          right: 15,
                                          bottom: 8),
                                      decoration: AppDecoration.outlineAmber5003
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle82,
                                                height: getVerticalSize(140.00),
                                                width:
                                                    getHorizontalSize(343.00),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(5.00)),
                                                margin: getMargin(left: 12)),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16, top: 1),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "lbl_sagar_ratna"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium20),
                                                          Spacer(),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgStar5,
                                                              height:
                                                                  getVerticalSize(
                                                                      16.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      18.00),
                                                              margin: getMargin(
                                                                  top: 5,
                                                                  bottom: 8)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgStar1,
                                                              height:
                                                                  getVerticalSize(
                                                                      16.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      18.00),
                                                              margin: getMargin(
                                                                  top: 5,
                                                                  bottom: 8)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      16.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      50.00),
                                                              margin: getMargin(
                                                                  top: 5,
                                                                  bottom: 8),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgStar2,
                                                                        height: getVerticalSize(
                                                                            16.00),
                                                                        width: getHorizontalSize(
                                                                            18.00),
                                                                        alignment:
                                                                            Alignment.centerLeft),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgStar3,
                                                                        height: getVerticalSize(
                                                                            16.00),
                                                                        width: getHorizontalSize(
                                                                            18.00),
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        margin: getMargin(
                                                                            left:
                                                                                15)),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgStar4,
                                                                        height: getVerticalSize(
                                                                            16.00),
                                                                        width: getHorizontalSize(
                                                                            18.00),
                                                                        alignment:
                                                                            Alignment.centerRight)
                                                                  ]))
                                                        ]))),
                                            Padding(
                                                padding:
                                                    getPadding(left: 5, top: 2),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocationBlack90021x20,
                                                      height: getVerticalSize(
                                                          16.00),
                                                      width: getHorizontalSize(
                                                          15.00),
                                                      margin:
                                                          getMargin(bottom: 1)),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 7),
                                                      child: Text(
                                                          "msg_lodhi_rd_cgo_complex"
                                                              .tr
                                                              .toUpperCase(),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium12Black900))
                                                ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 6, top: 8, bottom: 8),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgCallBlack900,
                                                          height:
                                                              getVerticalSize(
                                                                  26.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  24.00)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 3,
                                                              bottom: 6),
                                                          child: Text(
                                                              "msg_91_11_6617_5151"
                                                                  .tr
                                                                  .toUpperCase(),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium12Black900))
                                                    ]))
                                          ]))),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 979),
                                  padding: getPadding(
                                      left: 49, top: 5, right: 49, bottom: 5),
                                  decoration: AppDecoration.fillBluegray1001c
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderBL20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(left: 4, right: 35),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgHomeRed500,
                                                      height: getVerticalSize(
                                                          26.00),
                                                      width: getHorizontalSize(
                                                          24.00)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgRefresh,
                                                      height: getVerticalSize(
                                                          26.00),
                                                      width: getHorizontalSize(
                                                          24.00)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgClockBlack900,
                                                      height: getVerticalSize(
                                                          26.00),
                                                      width: getHorizontalSize(
                                                          24.00)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgBookmarkBlack900,
                                                      height: getVerticalSize(
                                                          26.00),
                                                      width: getHorizontalSize(
                                                          24.00))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 1, top: 4, bottom: 7),
                                            child: Row(children: [
                                              Text("lbl_home".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Red500),
                                              Padding(
                                                  padding: getPadding(left: 25),
                                                  child: Text("lbl_explore".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Black9005e)),
                                              Text("lbl_pre_order3".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Black9005e),
                                              Text("lbl_reserve_table".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Black9005e)
                                            ]))
                                      ]))
                            ])))),
            bottomNavigationBar: SizedBox(height: 90.50, width: 10,
              child: GNav(
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.deepOrangeAccent.shade100,
                activeColor: Colors.white,
                tabs: [
                  GButton(
                    gap: 8,
                    icon: Icons.home,
                    text: "Home",
                    onPressed: ()=>onTapBottomHomeButton(),),
                  GButton(
                    gap: 8,
                    icon: Icons.search,
                    text: "Search",
                    onPressed: ()=>onTapBottomSearchButton(),
                  ),
                  GButton(
                    gap: 8,
                    icon: Icons.access_time,
                    text: "Pre-Order",),
                  GButton(
                    gap: 8,
                    icon: Icons.bookmark_border,
                    text: "Reservation",
                    onPressed: ()=>onTapBottomReservationButton(),),
                ],
              ),)));
  }

  onTapImgBasemapimage() {
    Get.toNamed(AppRoutes.frameNineScreen);
  }

  onTapColumnrectanglefifteen() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }
  onTapBottomSearchButton() {
    Get.toNamed(AppRoutes.exploreScreen);
  }
  onTapBottomHomeButton() {
    Get.toNamed(AppRoutes.homeScreen);
  }
  onTapBottomPre_OrderButton() {
    // Get.toNamed(AppRoutes.);
  }
  onTapBottomReservationButton() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }
}
