import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class AppbarDropdown1 extends StatelessWidget {
  AppbarDropdown1(
      {required this.hintText,
      required this.items,
      required this.onTap,
      this.margin});

  String? hintText;

  List<SelectionPopupModel> items;

  Function(SelectionPopupModel) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomDropDown(
        width: 320,
        focusNode: FocusNode(),
        icon: Container(
          margin: getMargin(
            left: 30,
            right: 20,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowdown,
          ),
        ),
        hintText: "lbl_delhi".tr,
        padding: DropDownPadding.PaddingT6,
        items: items,
        prefix: Container(
          margin: getMargin(
            left: 20,
            top: 11,
            right: 30,
            bottom: 8,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgLocationBlack900,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: getVerticalSize(
            37.00,
          ),
        ),
        onChanged: (value) {
          onTap(value!);
        },
      ),
    );
  }
}
