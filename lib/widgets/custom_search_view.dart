import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints});

  SearchViewShape? shape;
  SearchViewPadding? padding;
  SearchViewVariant? variant;
  SearchViewFontStyle? fontStyle;
  Alignment? alignment;
  double? width;
  EdgeInsetsGeometry? margin;
  TextEditingController? controller;
  FocusNode? focusNode;
  String? hintText;
  Widget? prefix;
  BoxConstraints? prefixConstraints;
  Widget? suffix;
  BoxConstraints? suffixConstraints;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSearchViewWidget(),
          )
        : _buildSearchViewWidget();
  }

  _buildSearchViewWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        decoration: _buildDecoration(),
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "Search for Restaurants, Cuisines, Location",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case SearchViewFontStyle.PoppinsRegular15:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case SearchViewFontStyle.PoppinsRegular13:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case SearchViewVariant.OutlineAmber500:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.amber500,
            width: 1,
          ),
        );
      case SearchViewVariant.OutlineBlack9000f:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black9000f,
            width: 1,
          ),
        );
      case SearchViewVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.black90007,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case SearchViewVariant.OutlineAmber500:
        return ColorConstant.blueGray10007;
      case SearchViewVariant.OutlineBlack9000f:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.blueGray1003d;
    }
  }

  _setFilled() {
    switch (variant) {
      case SearchViewVariant.OutlineBlack90007:
        return true;
      case SearchViewVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case SearchViewPadding.PaddingT8:
        return getPadding(
          top: 8,
          bottom: 8,
        );
      case SearchViewPadding.PaddingT14:
        return getPadding(
          top: 14,
          bottom: 14,
        );
      default:
        return getPadding(
          top: 10,
          right: 10,
          bottom: 10,
        );
    }
  }
}

enum SearchViewShape {
  RoundedBorder5,
}

enum SearchViewPadding {
  PaddingT10,
  PaddingT8,
  PaddingT14,
}

enum SearchViewVariant {
  None,
  OutlineBlack90007,
  OutlineAmber500,
  OutlineBlack9000f,
}

enum SearchViewFontStyle {
  PoppinsRegular12,
  PoppinsRegular15,
  PoppinsRegular13,
}
