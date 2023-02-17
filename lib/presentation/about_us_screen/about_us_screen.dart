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
            ),)
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
