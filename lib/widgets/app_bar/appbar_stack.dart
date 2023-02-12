import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';

// ignore: must_be_immutable
class AppbarStack extends StatelessWidget {
  AppbarStack({this.margin, this.onTap});

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: ColorConstant.whiteA700,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: ColorConstant.amber500,
              width: getHorizontalSize(
                1.00,
              ),
            ),
            borderRadius: BorderRadiusStyle.circleBorder17,
          ),
          child: Container(
            height: getVerticalSize(
              34.00,
            ),
            width: getHorizontalSize(
              45.00,
            ),
            padding: getPadding(
              left: 8,
              top: 5,
              right: 8,
              bottom: 7,
            ),
            decoration: AppDecoration.outlineAmber5001.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder17,
            ),
            child: Stack(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgUser,
                  height: getSize(
                    25.00,
                  ),
                  width: getSize(
                    25.00,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
