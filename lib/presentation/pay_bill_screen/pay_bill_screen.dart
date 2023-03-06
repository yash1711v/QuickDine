import 'controller/pay_bill_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_button.dart';

class PayBillScreen extends StatefulWidget {
  const PayBillScreen({Key? key}) : super(key: key);

  @override
  State<PayBillScreen> createState() => _PayBillScreenState();
}

class _PayBillScreenState extends State<PayBillScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        extendBody: true,
        backgroundColor: ColorConstant.whiteA700,
        body: Stack(
          children: [Container(
            width: size.width,
            padding: getPadding(
              left: 26,
              top: 53,
              right: 26,
              bottom: 53,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: getMargin(
                    left: 7,
                    top: 26,
                    right: 5,
                  ),
                  padding: getPadding(
                    left: 12,
                    top: 16,
                    right: 12,
                    bottom: 16,
                  ),
                  decoration: AppDecoration.fillBluegray1001e.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                          bottom: 29,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 7,
                              ),
                              child: Text(
                                "lbl_sagar_ratna".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtPoppinsSemiBold20,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Text(
                                "msg_the_lodhi_pragati".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular15Black9009b,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle82,
                        height: getVerticalSize(
                          90.00,
                        ),
                        width: getHorizontalSize(
                          75.00,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            20.00,
                          ),
                        ),
                        margin: getMargin(
                          left: 6,
                          right: 2,
                          bottom: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    1.00,
                  ),
                  width: getHorizontalSize(
                    348.00,
                  ),
                  margin: getMargin(
                    left: 12,
                    top: 36,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.black90019,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 26,
                    top: 38,
                    right: 51,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "msg_total_bill_amount".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtPoppinsSemiBold18,
                      ),
                      Text(
                        "lbl_1000".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtPoppinsSemiBold18,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    1.00,
                  ),
                  width: getHorizontalSize(
                    348.00,
                  ),
                  margin: getMargin(
                    left: 12,
                    top: 36,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.black90019,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 25,
                    top: 29,
                    right: 55,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "msg_flat_30_off_the".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold15Red500,
                      ),
                      Text(
                        "lbl_300".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold15Red500,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 25,
                    top: 13,
                    right: 58,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Text(
                          "lbl_token_amount2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium12Green900,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          bottom: 3,
                        ),
                        child: Text(
                          "lbl_1002".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium12Green900,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    1.00,
                  ),
                  width: getHorizontalSize(
                    348.00,
                  ),
                  margin: getMargin(
                    left: 12,
                    top: 28,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.black90019,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 25,
                    top: 28,
                  ),
                  child: Text(
                    "msg_apply_promo_code".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold15Black900a5,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    1.00,
                  ),
                  width: getHorizontalSize(
                    348.00,
                  ),
                  margin: getMargin(
                    left: 12,
                    top: 45,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.black90019,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 23,
                    top: 21,
                    right: 42,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_total_bill".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtPoppinsSemiBold18,
                      ),
                      Text(
                        "lbl_600".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtPoppinsSemiBold18,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    289.00,
                  ),
                  margin: getMargin(
                    left: 25,
                    top: 5,
                  ),
                  child: Text(
                    "msg_this_amount_will".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsMedium12Red500,
                  ),
                ),
                Container(
                  margin: getMargin(top: 150),
                  child: CustomButton(
                    height: 63,
                    width: 311,
                    text: "msg_confirm_reservation".tr,
                    variant: ButtonVariant.OutlineRed500_1,
                    shape: ButtonShape.RoundedBorder10,
                    padding: ButtonPadding.PaddingAll13,
                    fontStyle: ButtonFontStyle.PoppinsMedium20,
                    alignment: Alignment.center,
                    onTap: () {
                      onTapConfirmReservation();
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: getMargin(top: 25),
            child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon:Icon(Icons.arrow_back_ios),
                //replace with our own icon data.
              ),
          )
          ]
        ),
      ),
    );
  }
}

onTapConfirmReservation() {
  Get.toNamed(AppRoutes.confirmedScreen);
}

//Old Code
// class PayBillScreen extends GetWidget<PayBillController> {
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
//             left: 26,
//             top: 53,
//             right: 26,
//             bottom: 53,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 margin: getMargin(
//                   left: 7,
//                   top: 26,
//                   right: 5,
//                 ),
//                 padding: getPadding(
//                   left: 12,
//                   top: 16,
//                   right: 12,
//                   bottom: 16,
//                 ),
//                 decoration: AppDecoration.fillBluegray1001e.copyWith(
//                   borderRadius: BorderRadiusStyle.roundedBorder10,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: getPadding(
//                         top: 3,
//                         bottom: 29,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: getPadding(
//                               left: 7,
//                             ),
//                             child: Text(
//                               "lbl_sagar_ratna".tr,
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.center,
//                               style: AppStyle.txtPoppinsSemiBold20,
//                             ),
//                           ),
//                           Padding(
//                             padding: getPadding(
//                               top: 20,
//                             ),
//                             child: Text(
//                               "msg_the_lodhi_pragati".tr,
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: AppStyle.txtPoppinsRegular15Black9009b,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     CustomImageView(
//                       imagePath: ImageConstant.imgRectangle82,
//                       height: getVerticalSize(
//                         90.00,
//                       ),
//                       width: getHorizontalSize(
//                         75.00,
//                       ),
//                       radius: BorderRadius.circular(
//                         getHorizontalSize(
//                           20.00,
//                         ),
//                       ),
//                       margin: getMargin(
//                         left: 6,
//                         right: 2,
//                         bottom: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: getVerticalSize(
//                   1.00,
//                 ),
//                 width: getHorizontalSize(
//                   348.00,
//                 ),
//                 margin: getMargin(
//                   left: 12,
//                   top: 36,
//                 ),
//                 decoration: BoxDecoration(
//                   color: ColorConstant.black90019,
//                 ),
//               ),
//               Padding(
//                 padding: getPadding(
//                   left: 26,
//                   top: 38,
//                   right: 51,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "msg_total_bill_amount".tr,
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.center,
//                       style: AppStyle.txtPoppinsSemiBold18,
//                     ),
//                     Text(
//                       "lbl_1000".tr,
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.center,
//                       style: AppStyle.txtPoppinsSemiBold18,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: getVerticalSize(
//                   1.00,
//                 ),
//                 width: getHorizontalSize(
//                   348.00,
//                 ),
//                 margin: getMargin(
//                   left: 12,
//                   top: 36,
//                 ),
//                 decoration: BoxDecoration(
//                   color: ColorConstant.black90019,
//                 ),
//               ),
//               Padding(
//                 padding: getPadding(
//                   left: 25,
//                   top: 29,
//                   right: 55,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "msg_flat_30_off_the".tr,
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: AppStyle.txtPoppinsSemiBold15Red500,
//                     ),
//                     Text(
//                       "lbl_300".tr,
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: AppStyle.txtPoppinsSemiBold15Red500,
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: getPadding(
//                   left: 25,
//                   top: 13,
//                   right: 58,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding: getPadding(
//                         top: 3,
//                       ),
//                       child: Text(
//                         "lbl_token_amount2".tr,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtPoppinsMedium12Green900,
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         bottom: 3,
//                       ),
//                       child: Text(
//                         "lbl_1002".tr,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtPoppinsMedium12Green900,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: getVerticalSize(
//                   1.00,
//                 ),
//                 width: getHorizontalSize(
//                   348.00,
//                 ),
//                 margin: getMargin(
//                   left: 12,
//                   top: 28,
//                 ),
//                 decoration: BoxDecoration(
//                   color: ColorConstant.black90019,
//                 ),
//               ),
//               Padding(
//                 padding: getPadding(
//                   left: 25,
//                   top: 28,
//                 ),
//                 child: Text(
//                   "msg_apply_promo_code".tr,
//                   overflow: TextOverflow.ellipsis,
//                   textAlign: TextAlign.left,
//                   style: AppStyle.txtPoppinsSemiBold15Black900a5,
//                 ),
//               ),
//               Container(
//                 height: getVerticalSize(
//                   1.00,
//                 ),
//                 width: getHorizontalSize(
//                   348.00,
//                 ),
//                 margin: getMargin(
//                   left: 12,
//                   top: 45,
//                 ),
//                 decoration: BoxDecoration(
//                   color: ColorConstant.black90019,
//                 ),
//               ),
//               Padding(
//                 padding: getPadding(
//                   left: 23,
//                   top: 21,
//                   right: 42,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "lbl_total_bill".tr,
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.center,
//                       style: AppStyle.txtPoppinsSemiBold18,
//                     ),
//                     Text(
//                       "lbl_600".tr,
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.center,
//                       style: AppStyle.txtPoppinsSemiBold18,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: getHorizontalSize(
//                   289.00,
//                 ),
//                 margin: getMargin(
//                   left: 25,
//                   top: 5,
//                 ),
//                 child: Text(
//                   "msg_this_amount_will".tr,
//                   maxLines: null,
//                   textAlign: TextAlign.left,
//                   style: AppStyle.txtPoppinsMedium12Red500,
//                 ),
//               ),
//               Spacer(),
//               CustomButton(
//                 height: 63,
//                 width: 311,
//                 text: "msg_confirm_reservation".tr,
//                 variant: ButtonVariant.OutlineRed500_1,
//                 shape: ButtonShape.RoundedBorder10,
//                 padding: ButtonPadding.PaddingAll13,
//                 fontStyle: ButtonFontStyle.PoppinsMedium20,
//                 alignment: Alignment.center,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
