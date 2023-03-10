

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_image_view.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  Widget build(BuildContext context) {
    return  IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 11,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle59,
                height: getVerticalSize(
                  135.00,
                ),
                width: getHorizontalSize(
                  148.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    5.00,
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  38.00,
                ),
                width: getHorizontalSize(
                  133.00,
                ),
                margin: getMargin(
                  left: 2,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: getPadding(
                          top: 7,
                        ),
                        child: RatingBar.builder(
                          initialRating: 5,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemSize: getVerticalSize(
                            8.00,
                          ),
                          unratedColor: ColorConstant.amber500,
                          itemCount: 5,
                          updateOnDrag: true,
                          onRatingUpdate: (rating) {},
                          itemBuilder: (context, _) {
                            return Icon(
                              Icons.star,
                              color: ColorConstant.amber500,
                            );
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: getVerticalSize(
                          38.00,
                        ),
                        width: getHorizontalSize(
                          97.00,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "lbl_diili_32".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold15,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "msg_vivek_vihar_delhi".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
