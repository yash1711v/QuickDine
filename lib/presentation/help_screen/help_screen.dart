import 'controller/help_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/core/utils/validation_functions.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:quickdine/widgets/custom_button.dart';
import 'package:quickdine/widgets/custom_text_form_field.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);
  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  get controller => HelpController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Form(
          key: _formKey,
          child: Container(
            width: size.width,
            padding: getPadding(
              left: 31,
              top: 45,
              right: 31,
              bottom: 45,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 123,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgQuestionBlack900,
                        height: getSize(
                          24.00,
                        ),
                        width: getSize(
                          24.00,
                        ),
                        margin: getMargin(
                          bottom: 5,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                        ),
                        child: Text(
                          "lbl_help".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold20,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomTextFormField(
                  width: 341,
                  focusNode: FocusNode(),
                  controller: controller.languageController,
                  hintText: "lbl_first_name".tr,
                  margin: getMargin(
                    left: 8,
                    top: 76,
                  ),
                  validator: (value) {
                    if (!isText(value)) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  width: 342,
                  focusNode: FocusNode(),
                  controller: controller.groupThirtyFourController,
                  hintText: "lbl_last_name".tr,
                  margin: getMargin(
                    left: 7,
                    top: 24,
                  ),
                  validator: (value) {
                    if (!isText(value)) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                ),
                Container(
                  height: getVerticalSize(
                    176.00,
                  ),
                  width: getHorizontalSize(
                    341.00,
                  ),
                  margin: getMargin(
                    left: 7,
                    top: 13,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 7,
                            top: 25,
                          ),
                          child: Text(
                            "lbl_message".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular20Black900ce,
                          ),
                        ),
                      ),
                      CustomButton(
                        height: 55,
                        width: 181,
                        text: "msg_request_call_back".tr,
                        margin: getMargin(
                          right: 7,
                          bottom: 16,
                        ),
                        variant: ButtonVariant.OutlineBlack90016,
                        shape: ButtonShape.RoundedBorder20,
                        padding: ButtonPadding.PaddingT14,
                        fontStyle: ButtonFontStyle.PoppinsMedium15,
                        prefixWidget: Container(
                          margin: getMargin(
                            right: 7,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgCall,
                          ),
                        ),
                        alignment: Alignment.bottomRight,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: getPadding(
                            left: 30,
                            top: 16,
                            right: 30,
                            bottom: 16,
                          ),
                          decoration: AppDecoration.outlineBlack9000f.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 112,
                                ),
                                child: Text(
                                  "lbl_your_query".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular20Black90075,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: getHorizontalSize(
                      308.00,
                    ),
                    margin: getMargin(
                      top: 42,
                      right: 12,
                    ),
                    child: Text(
                      "msg_thanks_we_ll_respond".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular16,
                    ),
                  ),
                ),
                CustomTextFormField(
                  width: 341,
                  focusNode: FocusNode(),
                  controller: controller.mobileNoController,
                  hintText: "lbl_423687495760".tr,
                  margin: getMargin(
                    left: 9,
                    top: 41,
                  ),
                  padding: TextFormFieldPadding.PaddingT13,
                  fontStyle: TextFormFieldFontStyle.PoppinsMedium20,
                  prefix: Container(
                    margin: getMargin(
                      left: 24,
                      top: 22,
                      right: 24,
                      bottom: 21,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgCallRed500,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      67.00,
                    ),
                  ),
                ),
                CustomTextFormField(
                  width: 341,
                  focusNode: FocusNode(),
                  controller: controller.emailController,
                  hintText: "lbl_abcd_gmail_com".tr,
                  margin: getMargin(
                    left: 7,
                    top: 24,
                    bottom: 6,
                  ),
                  padding: TextFormFieldPadding.PaddingT18,
                  fontStyle: TextFormFieldFontStyle.PoppinsMedium20,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                    margin: getMargin(
                      left: 26,
                      top: 23,
                      right: 30,
                      bottom: 20,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgMail,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      67.00,
                    ),
                  ),
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}

//old code
// class HelpScreen extends GetWidget<HelpController> {
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       bottom: false,
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: ColorConstant.whiteA700,
//         body: Form(
//           key: _formKey,
//           child: Container(
//             width: size.width,
//             padding: getPadding(
//               left: 31,
//               top: 45,
//               right: 31,
//               bottom: 45,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: getPadding(
//                     left: 123,
//                   ),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CustomImageView(
//                         svgPath: ImageConstant.imgQuestionBlack900,
//                         height: getSize(
//                           24.00,
//                         ),
//                         width: getSize(
//                           24.00,
//                         ),
//                         margin: getMargin(
//                           bottom: 5,
//                         ),
//                       ),
//                       Padding(
//                         padding: getPadding(
//                           left: 6,
//                         ),
//                         child: Text(
//                           "lbl_help".tr,
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtPoppinsSemiBold20,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 CustomTextFormField(
//                   width: 341,
//                   focusNode: FocusNode(),
//                   controller: controller.languageController,
//                   hintText: "lbl_first_name".tr,
//                   margin: getMargin(
//                     left: 8,
//                     top: 76,
//                   ),
//                   validator: (value) {
//                     if (!isText(value)) {
//                       return "Please enter valid text";
//                     }
//                     return null;
//                   },
//                 ),
//                 CustomTextFormField(
//                   width: 342,
//                   focusNode: FocusNode(),
//                   controller: controller.groupThirtyFourController,
//                   hintText: "lbl_last_name".tr,
//                   margin: getMargin(
//                     left: 7,
//                     top: 24,
//                   ),
//                   validator: (value) {
//                     if (!isText(value)) {
//                       return "Please enter valid text";
//                     }
//                     return null;
//                   },
//                 ),
//                 Container(
//                   height: getVerticalSize(
//                     176.00,
//                   ),
//                   width: getHorizontalSize(
//                     341.00,
//                   ),
//                   margin: getMargin(
//                     left: 7,
//                     top: 13,
//                   ),
//                   child: Stack(
//                     alignment: Alignment.bottomRight,
//                     children: [
//                       Align(
//                         alignment: Alignment.topLeft,
//                         child: Padding(
//                           padding: getPadding(
//                             left: 7,
//                             top: 25,
//                           ),
//                           child: Text(
//                             "lbl_message".tr,
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.left,
//                             style: AppStyle.txtPoppinsRegular20Black900ce,
//                           ),
//                         ),
//                       ),
//                       CustomButton(
//                         height: 55,
//                         width: 181,
//                         text: "msg_request_call_back".tr,
//                         margin: getMargin(
//                           right: 7,
//                           bottom: 16,
//                         ),
//                         variant: ButtonVariant.OutlineBlack90016,
//                         shape: ButtonShape.RoundedBorder20,
//                         padding: ButtonPadding.PaddingT14,
//                         fontStyle: ButtonFontStyle.PoppinsMedium15,
//                         prefixWidget: Container(
//                           margin: getMargin(
//                             right: 7,
//                           ),
//                           child: CustomImageView(
//                             svgPath: ImageConstant.imgCall,
//                           ),
//                         ),
//                         alignment: Alignment.bottomRight,
//                       ),
//                       Align(
//                         alignment: Alignment.center,
//                         child: Container(
//                           padding: getPadding(
//                             left: 30,
//                             top: 16,
//                             right: 30,
//                             bottom: 16,
//                           ),
//                           decoration: AppDecoration.outlineBlack9000f.copyWith(
//                             borderRadius: BorderRadiusStyle.roundedBorder5,
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Padding(
//                                 padding: getPadding(
//                                   bottom: 112,
//                                 ),
//                                 child: Text(
//                                   "lbl_your_query".tr,
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: AppStyle.txtPoppinsRegular20Black90075,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: Container(
//                     width: getHorizontalSize(
//                       308.00,
//                     ),
//                     margin: getMargin(
//                       top: 42,
//                       right: 12,
//                     ),
//                     child: Text(
//                       "msg_thanks_we_ll_respond".tr,
//                       maxLines: null,
//                       textAlign: TextAlign.left,
//                       style: AppStyle.txtPoppinsRegular16,
//                     ),
//                   ),
//                 ),
//                 CustomTextFormField(
//                   width: 341,
//                   focusNode: FocusNode(),
//                   controller: controller.mobileNoController,
//                   hintText: "lbl_423687495760".tr,
//                   margin: getMargin(
//                     left: 9,
//                     top: 41,
//                   ),
//                   padding: TextFormFieldPadding.PaddingT13,
//                   fontStyle: TextFormFieldFontStyle.PoppinsMedium20,
//                   prefix: Container(
//                     margin: getMargin(
//                       left: 24,
//                       top: 22,
//                       right: 24,
//                       bottom: 21,
//                     ),
//                     child: CustomImageView(
//                       svgPath: ImageConstant.imgCallRed500,
//                     ),
//                   ),
//                   prefixConstraints: BoxConstraints(
//                     maxHeight: getVerticalSize(
//                       67.00,
//                     ),
//                   ),
//                 ),
//                 CustomTextFormField(
//                   width: 341,
//                   focusNode: FocusNode(),
//                   controller: controller.emailController,
//                   hintText: "lbl_abcd_gmail_com".tr,
//                   margin: getMargin(
//                     left: 7,
//                     top: 24,
//                     bottom: 6,
//                   ),
//                   padding: TextFormFieldPadding.PaddingT18,
//                   fontStyle: TextFormFieldFontStyle.PoppinsMedium20,
//                   textInputAction: TextInputAction.done,
//                   textInputType: TextInputType.emailAddress,
//                   prefix: Container(
//                     margin: getMargin(
//                       left: 26,
//                       top: 23,
//                       right: 30,
//                       bottom: 20,
//                     ),
//                     child: CustomImageView(
//                       svgPath: ImageConstant.imgMail,
//                     ),
//                   ),
//                   prefixConstraints: BoxConstraints(
//                     maxHeight: getVerticalSize(
//                       67.00,
//                     ),
//                   ),
//                   validator: (value) {
//                     if (value == null ||
//                         (!isValidEmail(value, isRequired: true))) {
//                       return "Please enter valid email";
//                     }
//                     return null;
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//         bottomNavigationBar: CustomBottomBar(
//           onChanged: (BottomBarEnum type) {},
//         ),
//       ),
//     );
//   }
// }
