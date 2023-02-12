import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class AppbarDropdown extends StatelessWidget {
  AppbarDropdown(
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
        width: 230,
        focusNode: FocusNode(),
        icon: Container(
          margin: getMargin(
            left: 30,
            right: 14,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgArrowdown,
          ),
        ),
        hintText: "lbl_delhi".tr,
        items: items,
        prefix: Container(
          margin: getMargin(
            left: 14,
            top: 7,
            right: 30,
            bottom: 9,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgLocation,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: getVerticalSize(
            50.00,
          ),
        ),
        onChanged: (value) {
          onTap(value!);
        },
      ),
    );
  }
}
