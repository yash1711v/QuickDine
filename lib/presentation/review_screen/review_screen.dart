import 'package:google_nav_bar/google_nav_bar.dart';

import 'controller/review_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
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
              left: 32,
              top: 24,
              right: 32,
              bottom: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: getPadding(
                    top: 68,
                    bottom: 48,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse57,
                        height: getSize(
                          74.00,
                        ),
                        width: getSize(
                          74.00,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            37.00,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse51,
                        height: getSize(
                          74.00,
                        ),
                        width: getSize(
                          74.00,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            37.00,
                          ),
                        ),
                        margin: getMargin(
                          top: 64,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse59,
                        height: getSize(
                          74.00,
                        ),
                        width: getSize(
                          74.00,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            37.00,
                          ),
                        ),
                        margin: getMargin(
                          top: 69,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse59,
                        height: getSize(
                          74.00,
                        ),
                        width: getSize(
                          74.00,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            37.00,
                          ),
                        ),
                        margin: getMargin(
                          top: 82,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse59,
                        height: getSize(
                          74.00,
                        ),
                        width: getSize(
                          74.00,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            37.00,
                          ),
                        ),
                        margin: getMargin(
                          top: 88,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    right: 2,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 57,
                        ),
                        child: Text(
                          "lbl_reviews".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold20,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 3,
                          top: 36,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgStar24,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                16.00,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar25,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                18.00,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar26,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                15.00,
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                35.00,
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStar27,
                                    height: getVerticalSize(
                                      17.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStar28,
                                    height: getVerticalSize(
                                      17.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                    alignment: Alignment.centerRight,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 2,
                          top: 4,
                        ),
                        child: Text(
                          "lbl_juliya_marshall".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold15,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          266.00,
                        ),
                        margin: getMargin(
                          left: 3,
                        ),
                        child: Text(
                          "msg_consequat_sed_lectus".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsLight12,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 11,
                          top: 4,
                        ),
                        child: Text(
                          "msg_reviewed_2_june".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold12Black9004c,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 3,
                          top: 25,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgStar29,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                16.00,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar30,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                18.00,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar31,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                15.00,
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                35.00,
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStar32,
                                    height: getVerticalSize(
                                      17.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStar33,
                                    height: getVerticalSize(
                                      17.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                    alignment: Alignment.centerRight,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          69.00,
                        ),
                        width: getHorizontalSize(
                          266.00,
                        ),
                        margin: getMargin(
                          left: 3,
                          top: 2,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 4,
                                ),
                                child: Text(
                                  "lbl_mikal_j".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold15,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: getHorizontalSize(
                                  266.00,
                                ),
                                child: Text(
                                  "msg_consequat_sed_lectus".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsLight12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: Text(
                          "msg_reviewed_12_june".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold12Black9004c,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 2,
                          top: 40,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgStar34,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                16.00,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar35,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                18.00,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar36,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                15.00,
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                35.00,
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStar37,
                                    height: getVerticalSize(
                                      17.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStar38,
                                    height: getVerticalSize(
                                      17.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                    alignment: Alignment.centerRight,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          68.00,
                        ),
                        width: getHorizontalSize(
                          266.00,
                        ),
                        margin: getMargin(
                          left: 3,
                          top: 3,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 2,
                                ),
                                child: Text(
                                  "lbl_jeena_g".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold15,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: getHorizontalSize(
                                  266.00,
                                ),
                                child: Text(
                                  "msg_consequat_sed_lectus".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsLight12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 3,
                        ),
                        child: Text(
                          "msg_reviewed_11_june".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold12Black9004c,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 2,
                          top: 47,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgStar39,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                16.00,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar40,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                18.00,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar41,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                15.00,
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                35.00,
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStar42,
                                    height: getVerticalSize(
                                      17.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStar43,
                                    height: getVerticalSize(
                                      17.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                    alignment: Alignment.centerRight,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          69.00,
                        ),
                        width: getHorizontalSize(
                          266.00,
                        ),
                        margin: getMargin(
                          left: 3,
                          top: 2,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 2,
                                ),
                                child: Text(
                                  "lbl_cruise_k".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold15,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: getHorizontalSize(
                                  266.00,
                                ),
                                child: Text(
                                  "msg_consequat_sed_lectus".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsLight12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 3,
                        ),
                        child: Text(
                          "msg_reviewed_11_june".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold12Black9004c,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 2,
                          top: 53,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgStar44,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                16.00,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar45,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                18.00,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar46,
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                15.00,
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                17.00,
                              ),
                              width: getHorizontalSize(
                                35.00,
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStar47,
                                    height: getVerticalSize(
                                      17.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgStar48,
                                    height: getVerticalSize(
                                      17.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                    alignment: Alignment.centerRight,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          69.00,
                        ),
                        width: getHorizontalSize(
                          266.00,
                        ),
                        margin: getMargin(
                          left: 3,
                          top: 2,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 2,
                                ),
                                child: Text(
                                  "lbl_cruise_k".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold15,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: getHorizontalSize(
                                  266.00,
                                ),
                                child: Text(
                                  "msg_consequat_sed_lectus".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsLight12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 3,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 7,
                              ),
                              child: Text(
                                "msg_reviewed_11_june".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold12Black9004c,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 87,
                                top: 7,
                              ),
                              child: Text(
                                "lbl_see_all".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtPoppinsSemiBold12Black9008c,
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
          ),
          bottomNavigationBar: SizedBox(
            height: 90.50,
            width: 10,
            child: GNav(
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.deepOrangeAccent.shade100,
              activeColor: Colors.white,
              tabs: [
                GButton(
                  gap: 8,
                  icon: Icons.home,
                  text: "Home",
                  onPressed: () => onTapBottomHomeButton(),
                ),
                GButton(
                  gap: 8,
                  icon: Icons.search,
                  text: "Search",
                  onPressed: () => onTapBottomSearchButton(),
                ),
                GButton(
                  gap: 8,
                  icon: Icons.access_time,
                  text: "Pre-Order",
                  onPressed: () => onTapPreORder(),
                ),
                GButton(
                  gap: 8,
                  icon: Icons.bookmark_border,
                  text: "Reservation",
                  onPressed: () => onTapBottomReservationButton(),
                ),
              ],
            ),
          )),
    );
  }

  onTapBottomSearchButton() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapBottomHomeButton() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapPreORder() {
    Get.toNamed(AppRoutes.orderpreScreen);
  }

  onTapBottomReservationButton() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }
}

// class ReviewScreen extends GetWidget<ReviewController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       bottom: false,
//       child: Scaffold(
//         backgroundColor: ColorConstant.whiteA700,
//         body: Container(
//           width: size.width,
//           padding: getPadding(
//             left: 32,
//             top: 24,
//             right: 32,
//             bottom: 24,
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: getPadding(
//                   top: 68,
//                   bottom: 48,
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     CustomImageView(
//                       imagePath: ImageConstant.imgEllipse57,
//                       height: getSize(
//                         74.00,
//                       ),
//                       width: getSize(
//                         74.00,
//                       ),
//                       radius: BorderRadius.circular(
//                         getHorizontalSize(
//                           37.00,
//                         ),
//                       ),
//                     ),
//                     CustomImageView(
//                       imagePath: ImageConstant.imgEllipse51,
//                       height: getSize(
//                         74.00,
//                       ),
//                       width: getSize(
//                         74.00,
//                       ),
//                       radius: BorderRadius.circular(
//                         getHorizontalSize(
//                           37.00,
//                         ),
//                       ),
//                       margin: getMargin(
//                         top: 64,
//                       ),
//                     ),
//                     CustomImageView(
//                       imagePath: ImageConstant.imgEllipse59,
//                       height: getSize(
//                         74.00,
//                       ),
//                       width: getSize(
//                         74.00,
//                       ),
//                       radius: BorderRadius.circular(
//                         getHorizontalSize(
//                           37.00,
//                         ),
//                       ),
//                       margin: getMargin(
//                         top: 69,
//                       ),
//                     ),
//                     CustomImageView(
//                       imagePath: ImageConstant.imgEllipse59,
//                       height: getSize(
//                         74.00,
//                       ),
//                       width: getSize(
//                         74.00,
//                       ),
//                       radius: BorderRadius.circular(
//                         getHorizontalSize(
//                           37.00,
//                         ),
//                       ),
//                       margin: getMargin(
//                         top: 82,
//                       ),
//                     ),
//                     CustomImageView(
//                       imagePath: ImageConstant.imgEllipse59,
//                       height: getSize(
//                         74.00,
//                       ),
//                       width: getSize(
//                         74.00,
//                       ),
//                       radius: BorderRadius.circular(
//                         getHorizontalSize(
//                           37.00,
//                         ),
//                       ),
//                       margin: getMargin(
//                         top: 88,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: getPadding(
//                   right: 2,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: getPadding(
//                         left: 57,
//                       ),
//                       child: Text(
//                         "lbl_reviews".tr,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtPoppinsSemiBold20,
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         left: 3,
//                         top: 36,
//                       ),
//                       child: Row(
//                         children: [
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar24,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               16.00,
//                             ),
//                           ),
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar25,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               18.00,
//                             ),
//                           ),
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar26,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               15.00,
//                             ),
//                           ),
//                           Container(
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               35.00,
//                             ),
//                             child: Stack(
//                               alignment: Alignment.centerRight,
//                               children: [
//                                 CustomImageView(
//                                   svgPath: ImageConstant.imgStar27,
//                                   height: getVerticalSize(
//                                     17.00,
//                                   ),
//                                   width: getHorizontalSize(
//                                     18.00,
//                                   ),
//                                   alignment: Alignment.centerLeft,
//                                 ),
//                                 CustomImageView(
//                                   svgPath: ImageConstant.imgStar28,
//                                   height: getVerticalSize(
//                                     17.00,
//                                   ),
//                                   width: getHorizontalSize(
//                                     18.00,
//                                   ),
//                                   alignment: Alignment.centerRight,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         left: 2,
//                         top: 4,
//                       ),
//                       child: Text(
//                         "lbl_juliya_marshall".tr,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtPoppinsSemiBold15,
//                       ),
//                     ),
//                     Container(
//                       width: getHorizontalSize(
//                         266.00,
//                       ),
//                       margin: getMargin(
//                         left: 3,
//                       ),
//                       child: Text(
//                         "msg_consequat_sed_lectus".tr,
//                         maxLines: null,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtPoppinsLight12,
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         left: 11,
//                         top: 4,
//                       ),
//                       child: Text(
//                         "msg_reviewed_2_june".tr,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtPoppinsSemiBold12Black9004c,
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         left: 3,
//                         top: 25,
//                       ),
//                       child: Row(
//                         children: [
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar29,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               16.00,
//                             ),
//                           ),
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar30,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               18.00,
//                             ),
//                           ),
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar31,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               15.00,
//                             ),
//                           ),
//                           Container(
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               35.00,
//                             ),
//                             child: Stack(
//                               alignment: Alignment.centerRight,
//                               children: [
//                                 CustomImageView(
//                                   svgPath: ImageConstant.imgStar32,
//                                   height: getVerticalSize(
//                                     17.00,
//                                   ),
//                                   width: getHorizontalSize(
//                                     18.00,
//                                   ),
//                                   alignment: Alignment.centerLeft,
//                                 ),
//                                 CustomImageView(
//                                   svgPath: ImageConstant.imgStar33,
//                                   height: getVerticalSize(
//                                     17.00,
//                                   ),
//                                   width: getHorizontalSize(
//                                     18.00,
//                                   ),
//                                   alignment: Alignment.centerRight,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       height: getVerticalSize(
//                         69.00,
//                       ),
//                       width: getHorizontalSize(
//                         266.00,
//                       ),
//                       margin: getMargin(
//                         left: 3,
//                         top: 2,
//                       ),
//                       child: Stack(
//                         alignment: Alignment.bottomCenter,
//                         children: [
//                           Align(
//                             alignment: Alignment.topLeft,
//                             child: Padding(
//                               padding: getPadding(
//                                 left: 4,
//                               ),
//                               child: Text(
//                                 "lbl_mikal_j".tr,
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtPoppinsSemiBold15,
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomCenter,
//                             child: Container(
//                               width: getHorizontalSize(
//                                 266.00,
//                               ),
//                               child: Text(
//                                 "msg_consequat_sed_lectus".tr,
//                                 maxLines: null,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtPoppinsLight12,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         top: 2,
//                       ),
//                       child: Text(
//                         "msg_reviewed_12_june".tr,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtPoppinsSemiBold12Black9004c,
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         left: 2,
//                         top: 40,
//                       ),
//                       child: Row(
//                         children: [
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar34,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               16.00,
//                             ),
//                           ),
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar35,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               18.00,
//                             ),
//                           ),
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar36,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               15.00,
//                             ),
//                           ),
//                           Container(
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               35.00,
//                             ),
//                             child: Stack(
//                               alignment: Alignment.centerRight,
//                               children: [
//                                 CustomImageView(
//                                   svgPath: ImageConstant.imgStar37,
//                                   height: getVerticalSize(
//                                     17.00,
//                                   ),
//                                   width: getHorizontalSize(
//                                     18.00,
//                                   ),
//                                   alignment: Alignment.centerLeft,
//                                 ),
//                                 CustomImageView(
//                                   svgPath: ImageConstant.imgStar38,
//                                   height: getVerticalSize(
//                                     17.00,
//                                   ),
//                                   width: getHorizontalSize(
//                                     18.00,
//                                   ),
//                                   alignment: Alignment.centerRight,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       height: getVerticalSize(
//                         68.00,
//                       ),
//                       width: getHorizontalSize(
//                         266.00,
//                       ),
//                       margin: getMargin(
//                         left: 3,
//                         top: 3,
//                       ),
//                       child: Stack(
//                         alignment: Alignment.bottomCenter,
//                         children: [
//                           Align(
//                             alignment: Alignment.topLeft,
//                             child: Padding(
//                               padding: getPadding(
//                                 left: 2,
//                               ),
//                               child: Text(
//                                 "lbl_jeena_g".tr,
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtPoppinsSemiBold15,
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomCenter,
//                             child: Container(
//                               width: getHorizontalSize(
//                                 266.00,
//                               ),
//                               child: Text(
//                                 "msg_consequat_sed_lectus".tr,
//                                 maxLines: null,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtPoppinsLight12,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         left: 3,
//                       ),
//                       child: Text(
//                         "msg_reviewed_11_june".tr,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtPoppinsSemiBold12Black9004c,
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         left: 2,
//                         top: 47,
//                       ),
//                       child: Row(
//                         children: [
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar39,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               16.00,
//                             ),
//                           ),
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar40,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               18.00,
//                             ),
//                           ),
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar41,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               15.00,
//                             ),
//                           ),
//                           Container(
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               35.00,
//                             ),
//                             child: Stack(
//                               alignment: Alignment.centerRight,
//                               children: [
//                                 CustomImageView(
//                                   svgPath: ImageConstant.imgStar42,
//                                   height: getVerticalSize(
//                                     17.00,
//                                   ),
//                                   width: getHorizontalSize(
//                                     18.00,
//                                   ),
//                                   alignment: Alignment.centerLeft,
//                                 ),
//                                 CustomImageView(
//                                   svgPath: ImageConstant.imgStar43,
//                                   height: getVerticalSize(
//                                     17.00,
//                                   ),
//                                   width: getHorizontalSize(
//                                     18.00,
//                                   ),
//                                   alignment: Alignment.centerRight,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       height: getVerticalSize(
//                         69.00,
//                       ),
//                       width: getHorizontalSize(
//                         266.00,
//                       ),
//                       margin: getMargin(
//                         left: 3,
//                         top: 2,
//                       ),
//                       child: Stack(
//                         alignment: Alignment.bottomCenter,
//                         children: [
//                           Align(
//                             alignment: Alignment.topLeft,
//                             child: Padding(
//                               padding: getPadding(
//                                 left: 2,
//                               ),
//                               child: Text(
//                                 "lbl_cruise_k".tr,
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtPoppinsSemiBold15,
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomCenter,
//                             child: Container(
//                               width: getHorizontalSize(
//                                 266.00,
//                               ),
//                               child: Text(
//                                 "msg_consequat_sed_lectus".tr,
//                                 maxLines: null,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtPoppinsLight12,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         left: 3,
//                       ),
//                       child: Text(
//                         "msg_reviewed_11_june".tr,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtPoppinsSemiBold12Black9004c,
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         left: 2,
//                         top: 53,
//                       ),
//                       child: Row(
//                         children: [
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar44,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               16.00,
//                             ),
//                           ),
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar45,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               18.00,
//                             ),
//                           ),
//                           CustomImageView(
//                             svgPath: ImageConstant.imgStar46,
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               15.00,
//                             ),
//                           ),
//                           Container(
//                             height: getVerticalSize(
//                               17.00,
//                             ),
//                             width: getHorizontalSize(
//                               35.00,
//                             ),
//                             child: Stack(
//                               alignment: Alignment.centerRight,
//                               children: [
//                                 CustomImageView(
//                                   svgPath: ImageConstant.imgStar47,
//                                   height: getVerticalSize(
//                                     17.00,
//                                   ),
//                                   width: getHorizontalSize(
//                                     18.00,
//                                   ),
//                                   alignment: Alignment.centerLeft,
//                                 ),
//                                 CustomImageView(
//                                   svgPath: ImageConstant.imgStar48,
//                                   height: getVerticalSize(
//                                     17.00,
//                                   ),
//                                   width: getHorizontalSize(
//                                     18.00,
//                                   ),
//                                   alignment: Alignment.centerRight,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       height: getVerticalSize(
//                         69.00,
//                       ),
//                       width: getHorizontalSize(
//                         266.00,
//                       ),
//                       margin: getMargin(
//                         left: 3,
//                         top: 2,
//                       ),
//                       child: Stack(
//                         alignment: Alignment.bottomCenter,
//                         children: [
//                           Align(
//                             alignment: Alignment.topLeft,
//                             child: Padding(
//                               padding: getPadding(
//                                 left: 2,
//                               ),
//                               child: Text(
//                                 "lbl_cruise_k".tr,
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtPoppinsSemiBold15,
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomCenter,
//                             child: Container(
//                               width: getHorizontalSize(
//                                 266.00,
//                               ),
//                               child: Text(
//                                 "msg_consequat_sed_lectus".tr,
//                                 maxLines: null,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtPoppinsLight12,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         left: 3,
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: getPadding(
//                               bottom: 7,
//                             ),
//                             child: Text(
//                               "msg_reviewed_11_june".tr,
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: AppStyle.txtPoppinsSemiBold12Black9004c,
//                             ),
//                           ),
//                           Padding(
//                             padding: getPadding(
//                               left: 87,
//                               top: 7,
//                             ),
//                             child: Text(
//                               "lbl_see_all".tr,
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.center,
//                               style: AppStyle.txtPoppinsSemiBold12Black9008c,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//           bottomNavigationBar: SizedBox(height: 90.50, width: 10,
//             child: GNav(
//               duration: Duration(milliseconds: 400),
//               tabBackgroundColor: Colors.deepOrangeAccent.shade100,
//               activeColor: Colors.white,
//               tabs: [
//                 GButton(
//                   gap: 8,
//                   icon: Icons.home,
//                   text: "Home",
//                   onPressed: ()=>onTapBottomHomeButton(),),
//                 GButton(
//                   gap: 8,
//                   icon: Icons.search,
//                   text: "Search",
//                   onPressed: ()=>onTapBottomSearchButton(),
//                 ),
//                 GButton(
//                   gap: 8,
//                   icon: Icons.access_time,
//                   text: "Pre-Order",),
//                 GButton(
//                   gap: 8,
//                   icon: Icons.bookmark_border,
//                   text: "Reservation",
//                   onPressed: ()=>onTapBottomReservationButton(),),
//               ],
//             ),)
//       ),
//     );
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
