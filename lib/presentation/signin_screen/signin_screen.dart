import 'controller/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/core/utils/validation_functions.dart';
import 'package:quickdine/widgets/custom_button.dart';
import 'package:quickdine/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SigninScreen extends GetWidget<SigninController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    padding: getPadding(left: 23, right: 23),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage4,
                              height: getVerticalSize(140.00),
                              width: getHorizontalSize(156.00),
                              radius: BorderRadius.circular(
                                  getHorizontalSize(40.00)),
                              margin: getMargin(top: 35)),
                          Container(
                              margin: getMargin(left: 11, top: 54, right: 1),
                              padding: getPadding(
                                  left: 29, top: 11, right: 29, bottom: 11),
                              decoration: AppDecoration.outlineBlack9000f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgVector,
                                        height: getVerticalSize(14.00),
                                        width: getHorizontalSize(17.00),
                                        margin: getMargin(top: 7, bottom: 8)),
                                    Padding(
                                        padding:
                                            getPadding(left: 18, right: 156),
                                        child: Text("lbl_user_name".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular20))
                                  ])),
                          Obx(() => CustomTextFormField(
                              width: 356,
                              focusNode: FocusNode(),
                              controller: controller.groupEightController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 26),
                              padding: TextFormFieldPadding.PaddingT11,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 28, top: 16, right: 23, bottom: 17),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLock)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(53.00)),
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 18,
                                          right: 25,
                                          bottom: 15),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword.value
                                                  ? ImageConstant.imgEdit
                                                  : ImageConstant.imgEdit))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(53.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: !controller.isShowPassword.value)),
                          CustomButton(
                              height: 53,
                              width: 357,
                              text: "lbl_sign_in".tr,
                              margin: getMargin(top: 35),
                              variant: ButtonVariant.OutlineRed500_1,
                              shape: ButtonShape.RoundedBorder10,
                              padding: ButtonPadding.PaddingAll13,
                              fontStyle: ButtonFontStyle.PoppinsBold18,
                              onTap: onTapSignin),
                          Padding(
                              padding: getPadding(top: 62),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(70.00),
                                        margin: getMargin(top: 15, bottom: 13),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray400)),
                                    Padding(
                                        padding: getPadding(left: 17),
                                        child: Text("msg_or_continue_with".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular20Black9008c)),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(70.00),
                                        margin: getMargin(
                                            left: 15, top: 15, bottom: 13),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray400))
                                  ])),
                          Padding(
                              padding: getPadding(top: 62),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: ColorConstant.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: ColorConstant.black9000f,
                                                width: getHorizontalSize(1.00)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                        child: Container(
                                            height: getVerticalSize(48.00),
                                            width: getHorizontalSize(57.00),
                                            padding: getPadding(
                                                left: 13,
                                                top: 9,
                                                right: 13,
                                                bottom: 9),
                                            decoration: AppDecoration
                                                .outlineBlack9000f
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgFacebookcircled,
                                                  height:
                                                      getVerticalSize(29.00),
                                                  width:
                                                      getHorizontalSize(30.00),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 33),
                                        color: ColorConstant.whiteA700,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: ColorConstant.black9000f,
                                                width: getHorizontalSize(1.00)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                        child: Container(
                                            height: getVerticalSize(48.00),
                                            width: getHorizontalSize(57.00),
                                            padding: getPadding(
                                                left: 13,
                                                top: 9,
                                                right: 13,
                                                bottom: 9),
                                            decoration: AppDecoration
                                                .outlineBlack9000f
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgFacebookcircled29x30,
                                                  height:
                                                      getVerticalSize(29.00),
                                                  width:
                                                      getHorizontalSize(30.00),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Container(
                                        height: getVerticalSize(48.00),
                                        width: getHorizontalSize(57.00),
                                        margin: getMargin(left: 33),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          29.00),
                                                      width: getHorizontalSize(
                                                          30.00),
                                                      margin:
                                                          getMargin(right: 9),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      shape: RoundedRectangleBorder(
                                                          side: BorderSide(
                                                              color: ColorConstant
                                                                  .black9000f,
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00)),
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  48.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  57.00),
                                                          padding: getPadding(
                                                              left: 13,
                                                              top: 9,
                                                              right: 13,
                                                              bottom: 9),
                                                          decoration: AppDecoration
                                                              .outlineBlack9000f
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child:
                                                              Stack(children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgMacclient,
                                                                height:
                                                                    getVerticalSize(
                                                                        29.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        30.00),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ]))))
                                            ]))
                                  ])),
                          Padding(
                              padding: getPadding(top: 85),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("lbl_not_a_membe".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular20Black9008c)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtRegisternow();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(left: 9, top: 2),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: " ",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black9008c,
                                                          fontSize:
                                                              getFontSize(20),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  TextSpan(
                                                      text: "lbl_register_now2"
                                                          .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .red500,
                                                          fontSize:
                                                              getFontSize(20),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400))
                                                ]),
                                                textAlign: TextAlign.left)))
                                  ]))
                        ])))));
  }

  onTapSignin() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapTxtRegisternow() {
    Get.toNamed(AppRoutes.signupScreen);
  }
}
