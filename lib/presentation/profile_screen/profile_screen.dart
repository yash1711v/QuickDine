import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/core/utils/validation_functions.dart';
import 'package:quickdine/widgets/custom_button.dart';
import 'package:quickdine/widgets/custom_text_form_field.dart';

class ProfileScreen extends GetWidget<ProfileController> {
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
            padding: getPadding(
              left: 27,
              top: 24,
              right: 27,
              bottom: 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    top: 19,
                  ),
                  child: Text(
                    "lbl_profile".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold20,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse60,
                  height: getSize(
                    124.00,
                  ),
                  width: getSize(
                    124.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      62.00,
                    ),
                  ),
                  margin: getMargin(
                    top: 13,
                  ),
                ),
                CustomTextFormField(
                  width: 356,
                  focusNode: FocusNode(),
                  controller: controller.languageController,
                  hintText: "lbl_first_name".tr,
                  margin: getMargin(
                    top: 54,
                  ),
                  validator: (value) {
                    if (!isText(value)) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  width: 357,
                  focusNode: FocusNode(),
                  controller: controller.lastNameFormTextFieldController,
                  hintText: "lbl_last_name".tr,
                  margin: getMargin(
                    top: 35,
                  ),
                  validator: (value) {
                    if (!isText(value)) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  width: 357,
                  focusNode: FocusNode(),
                  controller: controller.groupSixtySixController,
                  hintText: "lbl_phone_number".tr,
                  margin: getMargin(
                    top: 35,
                  ),
                  textInputType: TextInputType.phone,
                  validator: (value) {
                    if (!isValidPhone(value)) {
                      return "Please enter valid phone number";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  width: 357,
                  focusNode: FocusNode(),
                  controller: controller.emailFormTextFeildController,
                  hintText: "lbl_email".tr,
                  margin: getMargin(
                    top: 35,
                  ),
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                ),
                Container(
                  margin: getMargin(
                    left: 2,
                    top: 35,
                    right: 1,
                  ),
                  padding: getPadding(
                    left: 29,
                    top: 16,
                    right: 29,
                    bottom: 16,
                  ),
                  decoration: AppDecoration.outlineBlack9000f.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 4,
                        ),
                        child: Text(
                          "lbl_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular20,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgEdit,
                        height: getSize(
                          20.00,
                        ),
                        width: getSize(
                          20.00,
                        ),
                        margin: getMargin(
                          top: 2,
                          right: 4,
                          bottom: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      top: 53,
                      right: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomButton(
                          height: 72,
                          width: 148,
                          text: "lbl_save".tr,
                          variant: ButtonVariant.OutlineRed500_1,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll19,
                          fontStyle: ButtonFontStyle.PoppinsBold18,
                        ),
                        CustomButton(
                          height: 72,
                          width: 148,
                          text: "lbl_edit".tr,
                          margin: getMargin(
                            left: 21,
                          ),
                          variant: ButtonVariant.FillAmber500,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll19,
                          fontStyle: ButtonFontStyle.PoppinsBold18,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
