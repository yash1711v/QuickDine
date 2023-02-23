import 'controller/frame_nine_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_button.dart';
import 'package:quickdine/widgets/custom_icon_button.dart';

class FrameNineScreen extends StatefulWidget {
  const FrameNineScreen({Key? key}) : super(key: key);
  @override
  State<FrameNineScreen> createState() => _FrameNineScreenState();
}

class _FrameNineScreenState extends State<FrameNineScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 123,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLocation30x18,
                        height: getVerticalSize(
                          30.00,
                        ),
                        width: getHorizontalSize(
                          18.00,
                        ),
                        margin: getMargin(
                          bottom: 4,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 3,
                          top: 4,
                        ),
                        child: Text(
                          "lbl_sagar_ratna".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  296.00,
                ),
                margin: getMargin(
                  top: 9,
                ),
                child: Text(
                  "msg_the_lodhi_lodhi".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsRegular15Black900a8,
                ),
              ),
              Container(
                height: getVerticalSize(
                  466.00,
                ),
                width: size.width,
                margin: getMargin(
                  top: 36,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSankey,
                      height: getSize(
                        40.00,
                      ),
                      width: getSize(
                        40.00,
                      ),
                      alignment: Alignment.bottomRight,
                      margin: getMargin(
                        right: 41,
                        bottom: 60,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          466.00,
                        ),
                        width: size.width,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle,
                              height: getVerticalSize(
                                466.00,
                              ),
                              width: getHorizontalSize(
                                414.00,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: getPadding(
                                  left: 20,
                                  top: 110,
                                  right: 17,
                                  bottom: 41,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgOnline,
                                              height: getSize(
                                                60.00,
                                              ),
                                              width: getSize(
                                                60.00,
                                              ),
                                              margin: getMargin(
                                                bottom: 2,
                                              ),
                                            ),
                                            CustomIconButton(
                                              height: 54,
                                              width: 52,
                                              margin: getMargin(
                                                left: 121,
                                                top: 8,
                                              ),
                                              variant: IconButtonVariant
                                                  .FillGreen500,
                                              shape: IconButtonShape
                                                  .CircleBorder27,
                                              child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgLocationDeepOrangeA700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            253.00,
                                          ),
                                          width: getHorizontalSize(
                                            92.00,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgVector1,
                                                height: getVerticalSize(
                                                  243.00,
                                                ),
                                                width: getHorizontalSize(
                                                  92.00,
                                                ),
                                                alignment: Alignment.topCenter,
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgCarpool,
                                                height: getSize(
                                                  20.00,
                                                ),
                                                width: getSize(
                                                  20.00,
                                                ),
                                                alignment:
                                                    Alignment.bottomRight,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 78,
                                        bottom: 162,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgPlusWhiteA700,
                                            height: getSize(
                                              30.00,
                                            ),
                                            width: getSize(
                                              30.00,
                                            ),
                                          ),
                                          CustomImageView(
                                            svgPath:
                                                ImageConstant.imgMenuWhiteA700,
                                            height: getSize(
                                              30.00,
                                            ),
                                            width: getSize(
                                              30.00,
                                            ),
                                            margin: getMargin(
                                              top: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                margin: getMargin(
                  top: 1,
                ),
                padding: getPadding(
                  left: 28,
                  top: 10,
                  right: 28,
                  bottom: 10,
                ),
                decoration: AppDecoration.outlineBlack900072,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: getVerticalSize(
                        56.00,
                      ),
                      width: getHorizontalSize(
                        54.00,
                      ),
                      margin: getMargin(
                        top: 10,
                        bottom: 5,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                20.00,
                              ),
                              width: getHorizontalSize(
                                18.00,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark,
                                    height: getVerticalSize(
                                      20.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark,
                                    height: getVerticalSize(
                                      20.00,
                                    ),
                                    width: getHorizontalSize(
                                      18.00,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgSettings,
                            height: getVerticalSize(
                              56.00,
                            ),
                            width: getHorizontalSize(
                              54.00,
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                        top: 20,
                        right: 170,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 20,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_21".tr,
                                    style: TextStyle(
                                      color: ColorConstant.orange80001,
                                      fontSize: getFontSize(
                                        30,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                      color: ColorConstant.orange80001,
                                      fontSize: getFontSize(
                                        15,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "lbl_min".tr,
                                    style: TextStyle(
                                      color: ColorConstant.orange80001,
                                      fontSize: getFontSize(
                                        24,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "lbl_10_km".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular18,
                                ),
                                Container(
                                  height: getSize(
                                    5.00,
                                  ),
                                  width: getSize(
                                    5.00,
                                  ),
                                  margin: getMargin(
                                    left: 7,
                                    top: 12,
                                    bottom: 9,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.black90089,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        2.00,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 5,
                                  ),
                                  child: Text(
                                    "lbl_09_42".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular18,
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
              CustomButton(
                height: 45,
                width: 266,
                text: "lbl_push_to_kitchen".tr,
                margin: getMargin(
                  top: 46,
                  bottom: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//old Code
// class FrameNineScreen extends GetWidget<FrameNineController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       bottom: false,
//       child: Scaffold(
//         backgroundColor: ColorConstant.whiteA700,
//         body: Container(
//           width: size.width,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: getPadding(
//                     left: 123,
//                   ),
//                   child: Row(
//                     children: [
//                       CustomImageView(
//                         imagePath: ImageConstant.imgLocation30x18,
//                         height: getVerticalSize(
//                           30.00,
//                         ),
//                         width: getHorizontalSize(
//                           18.00,
//                         ),
//                         margin: getMargin(
//                           bottom: 4,
//                         ),
//                       ),
//                       Padding(
//                         padding: getPadding(
//                           left: 3,
//                           top: 4,
//                         ),
//                         child: Text(
//                           "lbl_sagar_ratna".tr,
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtPoppinsSemiBold20,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 width: getHorizontalSize(
//                   296.00,
//                 ),
//                 margin: getMargin(
//                   top: 9,
//                 ),
//                 child: Text(
//                   "msg_the_lodhi_lodhi".tr,
//                   maxLines: null,
//                   textAlign: TextAlign.center,
//                   style: AppStyle.txtPoppinsRegular15Black900a8,
//                 ),
//               ),
//               Container(
//                 height: getVerticalSize(
//                   466.00,
//                 ),
//                 width: size.width,
//                 margin: getMargin(
//                   top: 36,
//                 ),
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     CustomImageView(
//                       imagePath: ImageConstant.imgSankey,
//                       height: getSize(
//                         40.00,
//                       ),
//                       width: getSize(
//                         40.00,
//                       ),
//                       alignment: Alignment.bottomRight,
//                       margin: getMargin(
//                         right: 41,
//                         bottom: 60,
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Container(
//                         height: getVerticalSize(
//                           466.00,
//                         ),
//                         width: size.width,
//                         child: Stack(
//                           alignment: Alignment.bottomCenter,
//                           children: [
//                             CustomImageView(
//                               imagePath: ImageConstant.imgRectangle,
//                               height: getVerticalSize(
//                                 466.00,
//                               ),
//                               width: getHorizontalSize(
//                                 414.00,
//                               ),
//                               alignment: Alignment.center,
//                             ),
//                             Align(
//                               alignment: Alignment.bottomCenter,
//                               child: Padding(
//                                 padding: getPadding(
//                                   left: 20,
//                                   top: 110,
//                                   right: 17,
//                                   bottom: 41,
//                                 ),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.end,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.end,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             CustomImageView(
//                                               imagePath:
//                                                   ImageConstant.imgOnline,
//                                               height: getSize(
//                                                 60.00,
//                                               ),
//                                               width: getSize(
//                                                 60.00,
//                                               ),
//                                               margin: getMargin(
//                                                 bottom: 2,
//                                               ),
//                                             ),
//                                             CustomIconButton(
//                                               height: 54,
//                                               width: 52,
//                                               margin: getMargin(
//                                                 left: 121,
//                                                 top: 8,
//                                               ),
//                                               variant: IconButtonVariant
//                                                   .FillGreen500,
//                                               shape: IconButtonShape
//                                                   .CircleBorder27,
//                                               child: CustomImageView(
//                                                 svgPath: ImageConstant
//                                                     .imgLocationDeepOrangeA700,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         Container(
//                                           height: getVerticalSize(
//                                             253.00,
//                                           ),
//                                           width: getHorizontalSize(
//                                             92.00,
//                                           ),
//                                           child: Stack(
//                                             alignment: Alignment.bottomRight,
//                                             children: [
//                                               CustomImageView(
//                                                 svgPath:
//                                                     ImageConstant.imgVector1,
//                                                 height: getVerticalSize(
//                                                   243.00,
//                                                 ),
//                                                 width: getHorizontalSize(
//                                                   92.00,
//                                                 ),
//                                                 alignment: Alignment.topCenter,
//                                               ),
//                                               CustomImageView(
//                                                 imagePath:
//                                                     ImageConstant.imgCarpool,
//                                                 height: getSize(
//                                                   20.00,
//                                                 ),
//                                                 width: getSize(
//                                                   20.00,
//                                                 ),
//                                                 alignment:
//                                                     Alignment.bottomRight,
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Padding(
//                                       padding: getPadding(
//                                         top: 78,
//                                         bottom: 162,
//                                       ),
//                                       child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         children: [
//                                           CustomImageView(
//                                             svgPath:
//                                                 ImageConstant.imgPlusWhiteA700,
//                                             height: getSize(
//                                               30.00,
//                                             ),
//                                             width: getSize(
//                                               30.00,
//                                             ),
//                                           ),
//                                           CustomImageView(
//                                             svgPath:
//                                                 ImageConstant.imgMenuWhiteA700,
//                                             height: getSize(
//                                               30.00,
//                                             ),
//                                             width: getSize(
//                                               30.00,
//                                             ),
//                                             margin: getMargin(
//                                               top: 15,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: size.width,
//                 margin: getMargin(
//                   top: 1,
//                 ),
//                 padding: getPadding(
//                   left: 28,
//                   top: 10,
//                   right: 28,
//                   bottom: 10,
//                 ),
//                 decoration: AppDecoration.outlineBlack900072,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Container(
//                       height: getVerticalSize(
//                         56.00,
//                       ),
//                       width: getHorizontalSize(
//                         54.00,
//                       ),
//                       margin: getMargin(
//                         top: 10,
//                         bottom: 5,
//                       ),
//                       child: Stack(
//                         alignment: Alignment.center,
//                         children: [
//                           Align(
//                             alignment: Alignment.center,
//                             child: Container(
//                               height: getVerticalSize(
//                                 20.00,
//                               ),
//                               width: getHorizontalSize(
//                                 18.00,
//                               ),
//                               child: Stack(
//                                 alignment: Alignment.center,
//                                 children: [
//                                   CustomImageView(
//                                     svgPath: ImageConstant.imgCheckmark,
//                                     height: getVerticalSize(
//                                       20.00,
//                                     ),
//                                     width: getHorizontalSize(
//                                       18.00,
//                                     ),
//                                     alignment: Alignment.center,
//                                   ),
//                                   CustomImageView(
//                                     svgPath: ImageConstant.imgCheckmark,
//                                     height: getVerticalSize(
//                                       20.00,
//                                     ),
//                                     width: getHorizontalSize(
//                                       18.00,
//                                     ),
//                                     alignment: Alignment.center,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           CustomImageView(
//                             svgPath: ImageConstant.imgSettings,
//                             height: getVerticalSize(
//                               56.00,
//                             ),
//                             width: getHorizontalSize(
//                               54.00,
//                             ),
//                             alignment: Alignment.center,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         left: 12,
//                         top: 20,
//                         right: 170,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: getPadding(
//                               left: 20,
//                             ),
//                             child: RichText(
//                               text: TextSpan(
//                                 children: [
//                                   TextSpan(
//                                     text: "lbl_21".tr,
//                                     style: TextStyle(
//                                       color: ColorConstant.orange80001,
//                                       fontSize: getFontSize(
//                                         30,
//                                       ),
//                                       fontFamily: 'Poppins',
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                   TextSpan(
//                                     text: " ",
//                                     style: TextStyle(
//                                       color: ColorConstant.orange80001,
//                                       fontSize: getFontSize(
//                                         15,
//                                       ),
//                                       fontFamily: 'Poppins',
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                   ),
//                                   TextSpan(
//                                     text: "lbl_min".tr,
//                                     style: TextStyle(
//                                       color: ColorConstant.orange80001,
//                                       fontSize: getFontSize(
//                                         24,
//                                       ),
//                                       fontFamily: 'Poppins',
//                                       fontWeight: FontWeight.w300,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               textAlign: TextAlign.left,
//                             ),
//                           ),
//                           Padding(
//                             padding: getPadding(
//                               top: 2,
//                             ),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   "lbl_10_km".tr,
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: AppStyle.txtPoppinsRegular18,
//                                 ),
//                                 Container(
//                                   height: getSize(
//                                     5.00,
//                                   ),
//                                   width: getSize(
//                                     5.00,
//                                   ),
//                                   margin: getMargin(
//                                     left: 7,
//                                     top: 12,
//                                     bottom: 9,
//                                   ),
//                                   decoration: BoxDecoration(
//                                     color: ColorConstant.black90089,
//                                     borderRadius: BorderRadius.circular(
//                                       getHorizontalSize(
//                                         2.00,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: getPadding(
//                                     left: 5,
//                                   ),
//                                   child: Text(
//                                     "lbl_09_42".tr,
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: AppStyle.txtPoppinsRegular18,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               CustomButton(
//                 height: 45,
//                 width: 266,
//                 text: "lbl_push_to_kitchen".tr,
//                 margin: getMargin(
//                   top: 46,
//                   bottom: 3,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
