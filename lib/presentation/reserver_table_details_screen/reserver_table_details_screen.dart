import 'package:google_nav_bar/google_nav_bar.dart';

import 'controller/reserver_table_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:quickdine/widgets/custom_button.dart';
class ReserverTableDetailsScreen extends StatefulWidget {
  const ReserverTableDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ReserverTableDetailsScreen> createState() => _ReserverTableDetailsScreenState();
}

class _ReserverTableDetailsScreenState extends State<ReserverTableDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                padding: getPadding(top: 29, bottom: 29),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(left: 41, top: 31),
                          child: IntrinsicWidth(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img96761104219242,
                                      height: getSize(335.00),
                                      width: getSize(335.00),
                                      margin: getMargin(right: 100),),
                                    CustomImageView(
                                        imagePath:
                                        ImageConstant.img1078006719198053,
                                        height: getSize(335.00),
                                        width: getSize(335.00),
                                        margin: getMargin(left: 0,right: 50)
                                    )
                                  ])
                          )
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 85, top: 16),
                              child: Text("lbl_select_guests".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtPoppinsLight20))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 77, top: 42),
                              child: Text("msg_flat_30_off_the".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium20))),
                      Container(
                          margin: getMargin(left: 54, top: 27, right: 18),
                          padding: getPadding(
                              left: 23, top: 13, right: 23, bottom: 13),
                          decoration: AppDecoration.outlineBlack900071.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 2),
                                    child: Text("lbl_guests".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtPoppinsMedium20)),
                                Spacer(),
                                Container(
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(top: 4, bottom: 3),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                              ImageConstant.imgContrast,
                                              height: getSize(24.00),
                                              width: getSize(24.00),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgMenuAmber50001,
                                              height: getSize(10.00),
                                              width: getSize(10.00),
                                              alignment: Alignment.center)
                                        ])),
                                Padding(
                                    padding:
                                    getPadding(left: 19, top: 3, bottom: 6),
                                    child: Text("lbl_2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium15Black900)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgPlus,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    margin: getMargin(
                                        left: 20, top: 4, right: 15, bottom: 3))
                              ])),
                      Container(
                          margin: getMargin(left: 55, top: 18, right: 17-4.2),
                          padding: getPadding(
                              left: 20, top: 10, right: 20, bottom: 10),
                          decoration: AppDecoration.outlineBlack900071.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 7),
                                    child: Text("lbl_token_amount".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular20Black900)
                                ),
                                Padding(
                                    padding: getPadding(
                                        left: 8, top: 5, right: 112, bottom: 9),
                                    child: Text("lbl_100".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular15))
                              ])
                      ),
                      CustomButton(
                          height: 59,
                          width: 311,
                          text: "lbl_continue".tr,
                          margin: getMargin(top: 70-18),
                          variant: ButtonVariant.OutlineRed500_1,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll13,
                          fontStyle: ButtonFontStyle.PoppinsMedium20,
                          onTap: onTapContinue,
                          alignment: Alignment.center)
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

  onTapContinue() {
    Get.toNamed(AppRoutes.payBillScreen);
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


//Old Code
// class ReserverTableDetailsScreen
//     extends GetWidget<ReserverTableDetailsController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         top: false,
//         bottom: false,
//         child: Scaffold(
//             backgroundColor: ColorConstant.whiteA700,
//             body: Container(
//                 width: size.width,
//                 padding: getPadding(top: 29, bottom: 29),
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       SingleChildScrollView(
//                           scrollDirection: Axis.horizontal,
//                           padding: getPadding(left: 41, top: 31),
//                           child: IntrinsicWidth(
//                               child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                 CustomImageView(
//                                     imagePath: ImageConstant.img96761104219242,
//                                     height: getSize(335.00),
//                                     width: getSize(335.00),
//                                 margin: getMargin(right: 100),),
//                                 CustomImageView(
//                                     imagePath:
//                                         ImageConstant.img1078006719198053,
//                                     height: getSize(335.00),
//                                     width: getSize(335.00),
//                                     margin: getMargin(left: 0,right: 50)
//                                 )
//                               ])
//                           )
//                       ),
//                       Align(
//                           alignment: Alignment.centerLeft,
//                           child: Padding(
//                               padding: getPadding(left: 85, top: 16),
//                               child: Text("lbl_select_guests".tr,
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.center,
//                                   style: AppStyle.txtPoppinsLight20))),
//                       Align(
//                           alignment: Alignment.centerLeft,
//                           child: Padding(
//                               padding: getPadding(left: 77, top: 42),
//                               child: Text("msg_flat_30_off_the".tr,
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: AppStyle.txtPoppinsMedium20))),
//                       Container(
//                           margin: getMargin(left: 54, top: 27, right: 18),
//                           padding: getPadding(
//                               left: 23, top: 13, right: 23, bottom: 13),
//                           decoration: AppDecoration.outlineBlack900071.copyWith(
//                               borderRadius: BorderRadiusStyle.roundedBorder10),
//                           child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Padding(
//                                     padding: getPadding(bottom: 2),
//                                     child: Text("lbl_guests".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.center,
//                                         style: AppStyle.txtPoppinsMedium20)),
//                                 Spacer(),
//                                 Container(
//                                     height: getSize(24.00),
//                                     width: getSize(24.00),
//                                     margin: getMargin(top: 4, bottom: 3),
//                                     child: Stack(
//                                         alignment: Alignment.center,
//                                         children: [
//                                           CustomImageView(
//                                               svgPath:
//                                                   ImageConstant.imgContrast,
//                                               height: getSize(24.00),
//                                               width: getSize(24.00),
//                                               alignment: Alignment.center),
//                                           CustomImageView(
//                                               svgPath: ImageConstant
//                                                   .imgMenuAmber50001,
//                                               height: getSize(10.00),
//                                               width: getSize(10.00),
//                                               alignment: Alignment.center)
//                                         ])),
//                                 Padding(
//                                     padding:
//                                         getPadding(left: 19, top: 3, bottom: 6),
//                                     child: Text("lbl_2".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle
//                                             .txtPoppinsMedium15Black900)),
//                                 CustomImageView(
//                                     svgPath: ImageConstant.imgPlus,
//                                     height: getSize(24.00),
//                                     width: getSize(24.00),
//                                     margin: getMargin(
//                                         left: 20, top: 4, right: 15, bottom: 3))
//                               ])),
//                       Container(
//                           margin: getMargin(left: 55, top: 18, right: 17-4.2),
//                           padding: getPadding(
//                               left: 20, top: 10, right: 20, bottom: 10),
//                           decoration: AppDecoration.outlineBlack900071.copyWith(
//                               borderRadius: BorderRadiusStyle.roundedBorder10),
//                           child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Padding(
//                                     padding: getPadding(bottom: 7),
//                                     child: Text("lbl_token_amount".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle
//                                             .txtPoppinsRegular20Black900)
//                                 ),
//                                 Padding(
//                                     padding: getPadding(
//                                         left: 8, top: 5, right: 112, bottom: 9),
//                                     child: Text("lbl_100".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle.txtPoppinsRegular15))
//                               ])
//                       ),
//                       CustomButton(
//                           height: 59,
//                           width: 311,
//                           text: "lbl_continue".tr,
//                           margin: getMargin(top: 70-18),
//                           variant: ButtonVariant.OutlineRed500_1,
//                           shape: ButtonShape.RoundedBorder10,
//                           padding: ButtonPadding.PaddingAll13,
//                           fontStyle: ButtonFontStyle.PoppinsMedium20,
//                           onTap: onTapContinue,
//                           alignment: Alignment.center)
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
//   onTapContinue() {
//     Get.toNamed(AppRoutes.payBillScreen);
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
