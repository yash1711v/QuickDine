import 'package:google_nav_bar/google_nav_bar.dart';

import 'controller/feedback_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:quickdine/widgets/custom_button.dart';

class FeedbackScreen extends GetWidget<FeedbackController> {
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
            left: 39,
            right: 39,
            bottom: 111,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Padding(
                padding: getPadding(
                  left: 124,
                ),
                child: Text(
                  "lbl_feedback".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold15,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: getMargin(
                    top: 18,
                  ),
                  color: ColorConstant.blueGray10089,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: ColorConstant.black90023,
                      width: getHorizontalSize(
                        1.00,
                      ),
                    ),
                    borderRadius: BorderRadiusStyle.roundedBorder51,
                  ),
                  child: Container(
                    height: getSize(
                      103.00,
                    ),
                    width: getSize(
                      103.00,
                    ),
                    padding: getPadding(
                      all: 34,
                    ),
                    decoration: AppDecoration.outlineBlack90023.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder51,
                    ),
                    child: Stack(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgUser,
                          height: getSize(
                            35.00,
                          ),
                          width: getSize(
                            35.00,
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 85,
                  top: 40,
                ),
                child: Text(
                  "msg_rate_your_experience".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium15Black900cc,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 12,
                  ),
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemSize: getVerticalSize(
                      36.00,
                    ),
                    unratedColor: ColorConstant.blueGray100,
                    itemCount: 5,
                    updateOnDrag: true,
                    onRatingUpdate: (rating) {},
                    itemBuilder: (context, _) {
                      return Icon(
                        Icons.star,
                        color: ColorConstant.amber500,
                      );
                    },
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  334.00,
                ),
                margin: getMargin(
                  left: 2,
                  top: 24,
                ),
                padding: getPadding(
                  left: 69,
                  top: 38,
                  right: 69,
                  bottom: 38,
                ),
                decoration: AppDecoration.outlineBlack90019.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 7,
                      ),
                      child: Text(
                        "msg_write_your_feedback".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold15Black9008c,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                height: 41,
                width: 140,
                text: "lbl_submit_review".tr,
                margin: getMargin(
                  top: 32,
                ),
                alignment: Alignment.centerRight,
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
  onTapBottomPre_OrderButton() {
    // Get.toNamed(AppRoutes.);
  }
  onTapBottomReservationButton() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }
}
