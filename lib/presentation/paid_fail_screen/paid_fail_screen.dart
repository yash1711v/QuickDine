import 'package:google_nav_bar/google_nav_bar.dart';

import 'controller/paid_fail_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class PaidFailScreen extends StatefulWidget {
  const PaidFailScreen({Key? key}) : super(key: key);

  @override
  State<PaidFailScreen> createState() => _PaidFailScreenState();
}

class _PaidFailScreenState extends State<PaidFailScreen> {
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
              left: 68,
              right: 68,
              bottom: 84,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      top: 223,
                    ),
                    child: Text(
                      "lbl_paid_failed".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular40,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 3,
                    top: 31,
                  ),
                  child: Text(
                    "msg_sorry_you_payment".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular15Black900a8,
                  ),
                ),
                Spacer(),
                Container(
                  width: getHorizontalSize(
                    266.00,
                  ),
                  padding: getPadding(
                    left: 30,
                    top: 13,
                    right: 47,
                    bottom: 13,
                  ),
                  decoration: AppDecoration.txtFillRed500.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                  ),
                  child: Text(
                    "msg_go_to_my_reservations".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold15WhiteA700,
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

  onTapBottomPre_OrderButton() {
    // Get.toNamed(AppRoutes.);
  }
  onTapBottomReservationButton() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }

  onTapPreORder() {
    Get.toNamed(AppRoutes.orderpreScreen);
  }
}

// Old Code
// class PaidFailScreen extends GetWidget<PaidFailController> {
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
//             left: 68,
//             right: 68,
//             bottom: 84,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Align(
//                 alignment: Alignment.center,
//                 child: Padding(
//                   padding: getPadding(
//                     top: 223,
//                   ),
//                   child: Text(
//                     "lbl_paid_failed".tr,
//                     overflow: TextOverflow.ellipsis,
//                     textAlign: TextAlign.left,
//                     style: AppStyle.txtPoppinsRegular40,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: getPadding(
//                   left: 3,
//                   top: 31,
//                 ),
//                 child: Text(
//                   "msg_sorry_you_payment".tr,
//                   overflow: TextOverflow.ellipsis,
//                   textAlign: TextAlign.left,
//                   style: AppStyle.txtPoppinsRegular15Black900a8,
//                 ),
//               ),
//               Spacer(),
//               Container(
//                 width: getHorizontalSize(
//                   266.00,
//                 ),
//                 padding: getPadding(
//                   left: 30,
//                   top: 13,
//                   right: 47,
//                   bottom: 13,
//                 ),
//                 decoration: AppDecoration.txtFillRed500.copyWith(
//                   borderRadius: BorderRadiusStyle.txtRoundedBorder5,
//                 ),
//                 child: Text(
//                   "msg_go_to_my_reservations".tr,
//                   overflow: TextOverflow.ellipsis,
//                   textAlign: TextAlign.left,
//                   style: AppStyle.txtPoppinsSemiBold15WhiteA700,
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
