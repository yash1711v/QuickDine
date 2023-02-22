import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;
  IconButtonPadding? padding;
  IconButtonVariant? variant;
  Alignment? alignment;
  EdgeInsetsGeometry? margin;
  double? width;
  double? height;
  Widget? child;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      case IconButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillGreen500:
        return ColorConstant.green500;
      case IconButtonVariant.FillGreen900a3:
        return ColorConstant.green900A3;
      case IconButtonVariant.FillAmber5009b:
        return ColorConstant.amber5009b;
      default:
        return ColorConstant.amber50042;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.FillGreen500:
      case IconButtonVariant.FillGreen900a3:
      case IconButtonVariant.FillAmber5009b:
        return null;
      default:
        return Border.all(
          color: ColorConstant.amber500,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder5:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
      case IconButtonShape.CircleBorder27:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            17.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder5,
  CircleBorder27,
  RoundedBorder17,
}

enum IconButtonPadding {
  PaddingAll16,
  PaddingAll7,
  PaddingAll10,
}

enum IconButtonVariant {
  OutlineAmber500,
  FillGreen500,
  FillGreen900a3,
  FillAmber5009b,
}
