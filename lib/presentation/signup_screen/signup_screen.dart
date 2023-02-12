import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/core/utils/validation_functions.dart';
import 'package:quickdine/widgets/custom_button.dart';
import 'package:quickdine/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
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
                    padding:
                        getPadding(left: 25, top: 12, right: 25, bottom: 12),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage4,
                              height: getVerticalSize(140.00),
                              width: getHorizontalSize(156.00),
                              radius: BorderRadius.circular(
                                  getHorizontalSize(40.00)),
                              margin: getMargin(top: 84)),
                          CustomTextFormField(
                              width: 356,
                              focusNode: FocusNode(),
                              controller: controller.languageController,
                              hintText: "lbl_first_name".tr,
                              margin: getMargin(top: 35),
                              padding: TextFormFieldPadding.PaddingAll8,
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 357,
                              focusNode: FocusNode(),
                              controller:
                                  controller.lastNameTextFieldController,
                              hintText: "lbl_last_name".tr,
                              margin: getMargin(top: 28),
                              padding: TextFormFieldPadding.PaddingAll8,
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 357,
                              focusNode: FocusNode(),
                              controller: controller.phoneNumberTextController,
                              hintText: "lbl_phone_number".tr,
                              margin: getMargin(top: 28),
                              padding: TextFormFieldPadding.PaddingAll8,
                              textInputType: TextInputType.phone,
                              validator: (value) {
                                if (!isValidPhone(value)) {
                                  return "Please enter valid phone number";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              width: 357,
                              focusNode: FocusNode(),
                              controller: controller.emailTextFieldController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(top: 28),
                              padding: TextFormFieldPadding.PaddingAll11,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Obx(() => CustomTextFormField(
                              width: 356,
                              focusNode: FocusNode(),
                              controller: controller.groupSixtyOneController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 28),
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
                              text: "msg_create_an_account".tr,
                              margin: getMargin(top: 27),
                              variant: ButtonVariant.OutlineAmber500,
                              shape: ButtonShape.RoundedBorder10,
                              padding: ButtonPadding.PaddingAll13,
                              fontStyle: ButtonFontStyle.PoppinsBold18,
                              onTap: onTapCreateanaccountOne),
                          CustomButton(
                              height: 53,
                              width: 357,
                              text: "msg_continue_as_a_guest".tr,
                              margin: getMargin(top: 21),
                              variant: ButtonVariant.OutlineRed500,
                              shape: ButtonShape.RoundedBorder10,
                              fontStyle: ButtonFontStyle.PoppinsBold18,
                              onTap: onTapContinueasaguest),
                          Padding(
                              padding: getPadding(top: 61),
                              child: Text("msg_terms_conditions".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterLight12))
                        ])))));
  }

  onTapCreateanaccountOne() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapContinueasaguest() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
