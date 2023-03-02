import 'package:google_nav_bar/google_nav_bar.dart';

import 'controller/paid_successfull_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class PaidSuccessfullScreen extends StatefulWidget {
  const PaidSuccessfullScreen({Key? key}) : super(key: key);

  @override
  State<PaidSuccessfullScreen> createState() => _PaidSuccessFullScreenState();
}

class _PaidSuccessFullScreenState extends State<PaidSuccessfullScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        extendBody: true,
          backgroundColor: ColorConstant.whiteA700,
          body: Container(
            width: size.width,
            padding: getPadding(
              left: 52,
              right: 52,
              bottom: 84,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: getPadding(
                    top: 228,
                  ),
                  child: Text(
                    "lbl_paid_up".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular40,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 26,
                  ),
                  child: Text(
                    "msg_thanks_you_payment".tr,
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
                  child: Container(
                    margin: getMargin(left: 10),
                    child: Text(
                      "msg_go_to_my_reservations".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsSemiBold15WhiteA700,
                    ),
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

  // onTapBottomPre_OrderButton() {
  //   // Get.toNamed(AppRoutes.);
  // }
  onTapBottomReservationButton() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }

  onTapBottomPre_OrderButton() {
    Get.toNamed(AppRoutes.orderpreScreen);
  }
}

// class PaidSuccessfullScreen extends GetWidget<PaidSuccessfullController> {
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
//             left: 52,
//             right: 52,
//             bottom: 84,
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Padding(
//                 padding: getPadding(
//                   top: 228,
//                 ),
//                 child: Text(
//                   "lbl_paid_up".tr,
//                   overflow: TextOverflow.ellipsis,
//                   textAlign: TextAlign.left,
//                   style: AppStyle.txtPoppinsRegular40,
//                 ),
//               ),
//               Padding(
//                 padding: getPadding(
//                   top: 26,
//                 ),
//                 child: Text(
//                   "msg_thanks_you_payment".tr,
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
