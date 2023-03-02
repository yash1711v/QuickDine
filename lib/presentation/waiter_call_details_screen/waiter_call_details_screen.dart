import 'package:google_nav_bar/google_nav_bar.dart';

import 'controller/waiter_call_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:quickdine/widgets/custom_icon_button.dart';

class WaiterCallDetailsScreen extends StatefulWidget {
  const WaiterCallDetailsScreen({Key? key}) : super(key: key);

  @override
  State<WaiterCallDetailsScreen> createState() =>
      _WaiterCallDetailsScreenState();
}

class _WaiterCallDetailsScreenState extends State<WaiterCallDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        extendBody: true,
          backgroundColor: ColorConstant.whiteA700,
          body: Container(
            height: size.height,
            width: size.width,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle91,
                  height: getVerticalSize(
                    549.00,
                  ),
                  width: getHorizontalSize(
                    350.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      20.00,
                    ),
                  ),
                  alignment: Alignment.topCenter,
                  margin: getMargin(
                    top: 87,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: getMargin(
                      left: 39,
                      right: 25,
                      bottom: 5,
                    ),
                    padding: getPadding(
                      top: 20,
                      bottom: 20,
                    ),
                    decoration: AppDecoration.outlineBlack9001c.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_estimated_prepration".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              right: 74,
                            ),
                            child: Text(
                              "msg_your_food_is_waiting".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsLight14,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              top: 18,
                              right: 53,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: getHorizontalSize(
                                    38.00,
                                  ),
                                  margin: getMargin(
                                    top: 10,
                                    bottom: 9,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.red500,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgIngredients,
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                  margin: getMargin(
                                    left: 8,
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: getHorizontalSize(
                                    38.00,
                                  ),
                                  margin: getMargin(
                                    left: 11,
                                    top: 10,
                                    bottom: 9,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.red500,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgCarpool,
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                  margin: getMargin(
                                    left: 6,
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                  width: getHorizontalSize(
                                    38.00,
                                  ),
                                  margin: getMargin(
                                    left: 17,
                                    top: 10,
                                    bottom: 9,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.red500,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgOk,
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                  margin: getMargin(
                                    left: 9,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            350.00,
                          ),
                          margin: getMargin(
                            top: 19,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.black9001c,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 30,
                            top: 13,
                            right: 35,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse51,
                                height: getVerticalSize(
                                  59.00,
                                ),
                                width: getHorizontalSize(
                                  61.00,
                                ),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(
                                    30.00,
                                  ),
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  38.00,
                                ),
                                width: getHorizontalSize(
                                  45.00,
                                ),
                                margin: getMargin(
                                  left: 21,
                                  top: 12,
                                  bottom: 8,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "lbl_john".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium16,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        width: getHorizontalSize(
                                          45.00,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "\n".tr,
                                                style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "lbl_waiter".tr,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.black9007f,
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              CustomIconButton(
                                height: 35,
                                width: 35,
                                margin: getMargin(
                                  top: 12,
                                  bottom: 12,
                                ),
                                variant: IconButtonVariant.FillGreen900a3,
                                padding: IconButtonPadding.PaddingAll7,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgCallWhiteA700,
                                ),
                              ),
                              CustomIconButton(
                                height: 35,
                                width: 35,
                                margin: getMargin(
                                  left: 6,
                                  top: 12,
                                  bottom: 12,
                                ),
                                variant: IconButtonVariant.FillAmber5009b,
                                padding: IconButtonPadding.PaddingAll10,
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgSearchWhiteA700,
                                ),
                              ),
                            ],
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
                      350.00,
                    ),
                    margin: getMargin(
                      bottom: 232,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.black90026,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPurchaseorder,
                  height: getVerticalSize(
                    90.00,
                  ),
                  width: getHorizontalSize(
                    20.00,
                  ),
                  alignment: Alignment.bottomLeft,
                  margin: getMargin(
                    left: 82,
                    bottom: 166,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar:  Container(
            margin: getMargin(left: 14,bottom: 15,right: 15),
            padding: EdgeInsets.only(left: 10,right: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: Offset(
                      1.0, // Move to right 5  horizontally
                      4.0, // Move to bottom 5 Vertically
                    ),
                  ),
                ]
            ),
            child: SizedBox(
              height: 88,
              child: GNav(
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.deepOrangeAccent.shade100,
                activeColor: Colors.white,
                //selectedIndex: _currentIndex,
                haptic: true,
                // backgroundColor: Colors.transparent,
                tabs: [
                  GButton(
                    gap: 8,
                    icon: Icons.home,
                    text: "Home",

                    onPressed: () {
                      onTapBottomHomeButton();
                    },
                  ),
                  GButton(
                    gap: 8,
                    icon: Icons.search,
                    text: "Search",
                    onPressed: () {
                      onTapBottomSearchButton();
                    },
                  ),
                  GButton(
                    gap: 8,
                    icon: Icons.access_time,
                    text: "Pre-Order",
                    onPressed: () => onTapBottomPre_OrderButton(),
                  ),
                ],
              ),
            ),
          ),),
    );
  }

  onTapBottomSearchButton() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapBottomHomeButton() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapBottomPre_OrderButton() {
    Get.toNamed(AppRoutes.orderpreScreen);
  }

  onTapBottomReservationButton() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }
}

// class WaiterCallDetailsScreen extends GetWidget<WaiterCallDetailsController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       bottom: false,
//       child: Scaffold(
//         backgroundColor: ColorConstant.whiteA700,
//         body: Container(
//           height: size.height,
//           width: size.width,
//           child: Stack(
//             alignment: Alignment.bottomCenter,
//             children: [
//               CustomImageView(
//                 imagePath: ImageConstant.imgRectangle91,
//                 height: getVerticalSize(
//                   549.00,
//                 ),
//                 width: getHorizontalSize(
//                   350.00,
//                 ),
//                 radius: BorderRadius.circular(
//                   getHorizontalSize(
//                     20.00,
//                   ),
//                 ),
//                 alignment: Alignment.topCenter,
//                 margin: getMargin(
//                   top: 87,
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Container(
//                   margin: getMargin(
//                     left: 39,
//                     right: 25,
//                     bottom: 5,
//                   ),
//                   padding: getPadding(
//                     top: 20,
//                     bottom: 20,
//                   ),
//                   decoration: AppDecoration.outlineBlack9001c.copyWith(
//                     borderRadius: BorderRadiusStyle.roundedBorder20,
//                   ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         "msg_estimated_prepration".tr,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtPoppinsMedium16,
//                       ),
//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: Padding(
//                           padding: getPadding(
//                             right: 74,
//                           ),
//                           child: Text(
//                             "msg_your_food_is_waiting".tr,
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.left,
//                             style: AppStyle.txtPoppinsLight14,
//                           ),
//                         ),
//                       ),
//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: Padding(
//                           padding: getPadding(
//                             top: 18,
//                             right: 53,
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Container(
//                                 height: getVerticalSize(
//                                   1.00,
//                                 ),
//                                 width: getHorizontalSize(
//                                   38.00,
//                                 ),
//                                 margin: getMargin(
//                                   top: 10,
//                                   bottom: 9,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: ColorConstant.red500,
//                                 ),
//                               ),
//                               CustomImageView(
//                                 imagePath: ImageConstant.imgIngredients,
//                                 height: getSize(
//                                   20.00,
//                                 ),
//                                 width: getSize(
//                                   20.00,
//                                 ),
//                                 margin: getMargin(
//                                   left: 8,
//                                 ),
//                               ),
//                               Container(
//                                 height: getVerticalSize(
//                                   1.00,
//                                 ),
//                                 width: getHorizontalSize(
//                                   38.00,
//                                 ),
//                                 margin: getMargin(
//                                   left: 11,
//                                   top: 10,
//                                   bottom: 9,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: ColorConstant.red500,
//                                 ),
//                               ),
//                               CustomImageView(
//                                 imagePath: ImageConstant.imgCarpool,
//                                 height: getSize(
//                                   20.00,
//                                 ),
//                                 width: getSize(
//                                   20.00,
//                                 ),
//                                 margin: getMargin(
//                                   left: 6,
//                                 ),
//                               ),
//                               Container(
//                                 height: getVerticalSize(
//                                   1.00,
//                                 ),
//                                 width: getHorizontalSize(
//                                   38.00,
//                                 ),
//                                 margin: getMargin(
//                                   left: 17,
//                                   top: 10,
//                                   bottom: 9,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: ColorConstant.red500,
//                                 ),
//                               ),
//                               CustomImageView(
//                                 imagePath: ImageConstant.imgOk,
//                                 height: getSize(
//                                   20.00,
//                                 ),
//                                 width: getSize(
//                                   20.00,
//                                 ),
//                                 margin: getMargin(
//                                   left: 9,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Container(
//                         height: getVerticalSize(
//                           1.00,
//                         ),
//                         width: getHorizontalSize(
//                           350.00,
//                         ),
//                         margin: getMargin(
//                           top: 19,
//                         ),
//                         decoration: BoxDecoration(
//                           color: ColorConstant.black9001c,
//                         ),
//                       ),
//                       Padding(
//                         padding: getPadding(
//                           left: 30,
//                           top: 13,
//                           right: 35,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             CustomImageView(
//                               imagePath: ImageConstant.imgEllipse51,
//                               height: getVerticalSize(
//                                 59.00,
//                               ),
//                               width: getHorizontalSize(
//                                 61.00,
//                               ),
//                               radius: BorderRadius.circular(
//                                 getHorizontalSize(
//                                   30.00,
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               height: getVerticalSize(
//                                 38.00,
//                               ),
//                               width: getHorizontalSize(
//                                 45.00,
//                               ),
//                               margin: getMargin(
//                                 left: 21,
//                                 top: 12,
//                                 bottom: 8,
//                               ),
//                               child: Stack(
//                                 alignment: Alignment.bottomCenter,
//                                 children: [
//                                   Align(
//                                     alignment: Alignment.topLeft,
//                                     child: Text(
//                                       "lbl_john".tr,
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.txtPoppinsMedium16,
//                                     ),
//                                   ),
//                                   Align(
//                                     alignment: Alignment.bottomCenter,
//                                     child: Container(
//                                       width: getHorizontalSize(
//                                         45.00,
//                                       ),
//                                       child: RichText(
//                                         text: TextSpan(
//                                           children: [
//                                             TextSpan(
//                                               text: "\n".tr,
//                                               style: TextStyle(
//                                                 color: ColorConstant.black900,
//                                                 fontSize: getFontSize(
//                                                   14,
//                                                 ),
//                                                 fontFamily: 'Poppins',
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                             ),
//                                             TextSpan(
//                                               text: "lbl_waiter".tr,
//                                               style: TextStyle(
//                                                 color: ColorConstant.black9007f,
//                                                 fontSize: getFontSize(
//                                                   14,
//                                                 ),
//                                                 fontFamily: 'Poppins',
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         textAlign: TextAlign.center,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Spacer(),
//                             CustomIconButton(
//                               height: 35,
//                               width: 35,
//                               margin: getMargin(
//                                 top: 12,
//                                 bottom: 12,
//                               ),
//                               variant: IconButtonVariant.FillGreen900a3,
//                               padding: IconButtonPadding.PaddingAll7,
//                               child: CustomImageView(
//                                 svgPath: ImageConstant.imgCallWhiteA700,
//                               ),
//                             ),
//                             CustomIconButton(
//                               height: 35,
//                               width: 35,
//                               margin: getMargin(
//                                 left: 6,
//                                 top: 12,
//                                 bottom: 12,
//                               ),
//                               variant: IconButtonVariant.FillAmber5009b,
//                               padding: IconButtonPadding.PaddingAll10,
//                               child: CustomImageView(
//                                 svgPath: ImageConstant.imgSearchWhiteA700,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Container(
//                   height: getVerticalSize(
//                     1.00,
//                   ),
//                   width: getHorizontalSize(
//                     350.00,
//                   ),
//                   margin: getMargin(
//                     bottom: 232,
//                   ),
//                   decoration: BoxDecoration(
//                     color: ColorConstant.black90026,
//                   ),
//                 ),
//               ),
//               CustomImageView(
//                 imagePath: ImageConstant.imgPurchaseorder,
//                 height: getVerticalSize(
//                   90.00,
//                 ),
//                 width: getHorizontalSize(
//                   20.00,
//                 ),
//                 alignment: Alignment.bottomLeft,
//                 margin: getMargin(
//                   left: 82,
//                   bottom: 166,
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
