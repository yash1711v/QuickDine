import 'package:google_nav_bar/google_nav_bar.dart';

import 'controller/profile_setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                padding: getPadding(left: 25, top: 93, right: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse60,
                                height: getSize(124.00),
                                width: getSize(124.00),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(62.00))),
                            Container(
                                width: getHorizontalSize(104.00),
                                margin:
                                getMargin(left: 25, top: 21, bottom: 50),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_hello".tr,
                                          style: TextStyle(
                                              color: ColorConstant.amber500,
                                              fontSize: getFontSize(15),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600)),
                                      TextSpan(
                                          text: " ",
                                          style: TextStyle(
                                              color: ColorConstant.amber500,
                                              fontSize: getFontSize(19),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600)),
                                      TextSpan(
                                          text: "lbl_vaibhav".tr,
                                          style: TextStyle(
                                              color: ColorConstant.amber500,
                                              fontSize: getFontSize(25),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600))
                                    ]),
                                    textAlign: TextAlign.center))
                          ]),
                      Spacer(),
                      Padding(
                          padding: getPadding(left: 24),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgUser,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(bottom: 12)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtProfileSetting();
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 23, top: 6),
                                        child: Text("lbl_profile_setting".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                            AppStyle.txtPoppinsRegular20)))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 22),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgLocationBlack90024x24,
                                height: getSize(24.00),
                                width: getSize(24.00),
                                margin: getMargin(top: 3, bottom: 2)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtOrders();
                                },
                                child: Padding(
                                    padding: getPadding(left: 27),
                                    child: Text("lbl_orders".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular20)))
                          ])),
                      Padding(
                          padding: getPadding(left: 21, top: 38),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgBookmarkBlack900,
                                height: getSize(24.00),
                                width: getSize(24.00),
                                margin: getMargin(top: 3, bottom: 2)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtReservationDetail();
                                },
                                child: Padding(
                                    padding: getPadding(left: 20),
                                    child: Text("msg_reservation_detail".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular20)))
                          ])),
                      Padding(
                          padding: getPadding(left: 24, top: 39, bottom: 197),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgOfferBlack900,
                                height: getSize(24.00),
                                width: getSize(24.00),
                                margin: getMargin(top: 4, bottom: 1)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtPromoOffers();
                                },
                                child: Padding(
                                    padding: getPadding(left: 17),
                                    child: Text("lbl_promo_offers".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular20)))
                          ]))
                    ])),
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

  onTapTxtProfileSetting() {
    Get.toNamed(AppRoutes.profileScreen);
  }

  onTapTxtOrders() {
    Get.toNamed(AppRoutes.orderHistoryScreen);
  }

  onTapTxtReservationDetail() {
    Get.toNamed(AppRoutes.confirmedScreen);
  }

  onTapTxtPromoOffers() {
    Get.toNamed(AppRoutes.promoScreen);
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







// class ProfileSettingScreen extends GetWidget<ProfileSettingController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         top: false,
//         bottom: false,
//         child: Scaffold(
//             backgroundColor: ColorConstant.whiteA700,
//             body: Container(
//                 width: size.width,
//                 padding: getPadding(left: 25, top: 93, right: 25),
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             CustomImageView(
//                                 imagePath: ImageConstant.imgEllipse60,
//                                 height: getSize(124.00),
//                                 width: getSize(124.00),
//                                 radius: BorderRadius.circular(
//                                     getHorizontalSize(62.00))),
//                             Container(
//                                 width: getHorizontalSize(104.00),
//                                 margin:
//                                     getMargin(left: 25, top: 21, bottom: 50),
//                                 child: RichText(
//                                     text: TextSpan(children: [
//                                       TextSpan(
//                                           text: "lbl_hello".tr,
//                                           style: TextStyle(
//                                               color: ColorConstant.amber500,
//                                               fontSize: getFontSize(15),
//                                               fontFamily: 'Poppins',
//                                               fontWeight: FontWeight.w600)),
//                                       TextSpan(
//                                           text: " ",
//                                           style: TextStyle(
//                                               color: ColorConstant.amber500,
//                                               fontSize: getFontSize(19),
//                                               fontFamily: 'Poppins',
//                                               fontWeight: FontWeight.w600)),
//                                       TextSpan(
//                                           text: "lbl_vaibhav".tr,
//                                           style: TextStyle(
//                                               color: ColorConstant.amber500,
//                                               fontSize: getFontSize(25),
//                                               fontFamily: 'Poppins',
//                                               fontWeight: FontWeight.w600))
//                                     ]),
//                                     textAlign: TextAlign.center))
//                           ]),
//                       Spacer(),
//                       Padding(
//                           padding: getPadding(left: 24),
//                           child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 CustomImageView(
//                                     svgPath: ImageConstant.imgUser,
//                                     height: getSize(24.00),
//                                     width: getSize(24.00),
//                                     margin: getMargin(bottom: 12)),
//                                 GestureDetector(
//                                     onTap: () {
//                                       onTapTxtProfileSetting();
//                                     },
//                                     child: Padding(
//                                         padding: getPadding(left: 23, top: 6),
//                                         child: Text("lbl_profile_setting".tr,
//                                             overflow: TextOverflow.ellipsis,
//                                             textAlign: TextAlign.left,
//                                             style:
//                                                 AppStyle.txtPoppinsRegular20)))
//                               ])),
//                       Padding(
//                           padding: getPadding(left: 24, top: 22),
//                           child: Row(children: [
//                             CustomImageView(
//                                 svgPath: ImageConstant.imgLocationBlack90024x24,
//                                 height: getSize(24.00),
//                                 width: getSize(24.00),
//                                 margin: getMargin(top: 3, bottom: 2)),
//                             GestureDetector(
//                                 onTap: () {
//                                   onTapTxtOrders();
//                                 },
//                                 child: Padding(
//                                     padding: getPadding(left: 27),
//                                     child: Text("lbl_orders".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle.txtPoppinsRegular20)))
//                           ])),
//                       Padding(
//                           padding: getPadding(left: 21, top: 38),
//                           child: Row(children: [
//                             CustomImageView(
//                                 svgPath: ImageConstant.imgBookmarkBlack900,
//                                 height: getSize(24.00),
//                                 width: getSize(24.00),
//                                 margin: getMargin(top: 3, bottom: 2)),
//                             GestureDetector(
//                                 onTap: () {
//                                   onTapTxtReservationDetail();
//                                 },
//                                 child: Padding(
//                                     padding: getPadding(left: 20),
//                                     child: Text("msg_reservation_detail".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle.txtPoppinsRegular20)))
//                           ])),
//                       Padding(
//                           padding: getPadding(left: 24, top: 39, bottom: 197),
//                           child: Row(children: [
//                             CustomImageView(
//                                 svgPath: ImageConstant.imgOfferBlack900,
//                                 height: getSize(24.00),
//                                 width: getSize(24.00),
//                                 margin: getMargin(top: 4, bottom: 1)),
//                             GestureDetector(
//                                 onTap: () {
//                                   onTapTxtPromoOffers();
//                                 },
//                                 child: Padding(
//                                     padding: getPadding(left: 17),
//                                     child: Text("lbl_promo_offers".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle.txtPoppinsRegular20)))
//                           ]))
//                     ])),
//             bottomNavigationBar: SizedBox(height: 90.50, width: 10,
//               child: GNav(
//                 duration: Duration(milliseconds: 400),
//                 tabBackgroundColor: Colors.deepOrangeAccent.shade100,
//                 activeColor: Colors.white,
//                 tabs: [
//                   GButton(
//                     gap: 8,
//                     icon: Icons.home,
//                     text: "Home",
//                     onPressed: ()=>onTapBottomHomeButton(),),
//                   GButton(
//                     gap: 8,
//                     icon: Icons.search,
//                     text: "Search",
//                     onPressed: ()=>onTapBottomSearchButton(),
//                   ),
//                   GButton(
//                     gap: 8,
//                     icon: Icons.access_time,
//                     text: "Pre-Order",),
//                   GButton(
//                     gap: 8,
//                     icon: Icons.bookmark_border,
//                     text: "Reservation",
//                     onPressed: ()=>onTapBottomReservationButton(),),
//                 ],
//               ),)));
//   }
//
//   onTapTxtProfileSetting() {
//     Get.toNamed(AppRoutes.profileScreen);
//   }
//
//   onTapTxtOrders() {
//     Get.toNamed(AppRoutes.orderHistoryScreen);
//   }
//
//   onTapTxtReservationDetail() {
//     Get.toNamed(AppRoutes.confirmedScreen);
//   }
//
//   onTapTxtPromoOffers() {
//     Get.toNamed(AppRoutes.promoScreen);
//   }
//   onTapBottomSearchButton() {
//     Get.toNamed(AppRoutes.exploreScreen);
//   }
//   onTapBottomHomeButton() {
//     Get.toNamed(AppRoutes.homeScreen);
//   }
//   onTapBottomPre_OrderButton() {
//     // Get.toNamed(AppRoutes.);
//   }
//   onTapBottomReservationButton() {
//     Get.toNamed(AppRoutes.reserveTableScreen);
//   }
// }
