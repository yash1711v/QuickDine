import 'package:google_nav_bar/google_nav_bar.dart';

import 'controller/about_us_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

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
              left: 38,
              top: 223,
              right: 38,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_about_us".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold20,
                ),
                Container(
                  width: getHorizontalSize(
                    329.00,
                  ),
                  margin: getMargin(
                    top: 43,
                    bottom: 5,
                  ),
                  child: Text(
                    "msg_founded_in_2022".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular20Black900,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar:
          Container(
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
                    onPressed: () => onTapPreORder(),
                  ),
                  // GButton(
                  //     gap: 8,
                  //     icon: Icons.bookmark_border,
                  //     text: "Reservation",
                  //     onPressed: () {
                  //       onTapBottomReservationButton();
                  //     }),
                ],
              ),
            ),
          ),
      ),
    );
  }

  onTapBottomSearchButton() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapBottomHomeButton() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapBottomReservationButton() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }

  onTapPreORder() {
    Get.toNamed(AppRoutes.orderpreScreen);
  }
}

//Old One
// class AboutUsScreen extends GetWidget<AboutUsController> {
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
//             left: 38,
//             top: 223,
//             right: 38,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 "lbl_about_us".tr,
//                 overflow: TextOverflow.ellipsis,
//                 textAlign: TextAlign.left,
//                 style: AppStyle.txtPoppinsSemiBold20,
//               ),
//               Container(
//                 width: getHorizontalSize(
//                   329.00,
//                 ),
//                 margin: getMargin(
//                   top: 43,
//                   bottom: 5,
//                 ),
//                 child: Text(
//                   "msg_founded_in_2022".tr,
//                   maxLines: null,
//                   textAlign: TextAlign.left,
//                   style: AppStyle.txtPoppinsRegular20Black900,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: SizedBox(height: 90.50, width: 10,
//           child: GNav(
//             duration: Duration(milliseconds: 400),
//             tabBackgroundColor: Colors.deepOrangeAccent.shade100,
//             activeColor: Colors.white,
//             tabs: [
//               GButton(
//                 gap: 8,
//                 icon: Icons.home,
//                 text: "Home",
//                 onPressed: ()=>onTapBottomHomeButton(),),
//               GButton(
//                 gap: 8,
//                 icon: Icons.search,
//                 text: "Search",
//                 onPressed: ()=>onTapBottomSearchButton(),
//               ),
//               GButton(
//                 gap: 8,
//                 icon: Icons.access_time,
//                 text: "Pre-Order",),
//               GButton(
//                 gap: 8,
//                 icon: Icons.bookmark_border,
//                 text: "Reservation",
//                 onPressed: ()=>onTapBottomReservationButton(),),
//             ],
//           ),)
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
