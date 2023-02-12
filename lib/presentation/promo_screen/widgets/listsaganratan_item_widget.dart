import '../controller/promo_controller.dart';
import '../models/listsaganratan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListsaganratanItemWidget extends StatelessWidget {
  ListsaganratanItemWidget(this.listsaganratanItemModelObj);

  ListsaganratanItemModel listsaganratanItemModelObj;

  var controller = Get.find<PromoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.outlineAmber5001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: getHorizontalSize(
                337.00,
              ),
              margin: getMargin(
                left: 1,
              ),
              padding: getPadding(
                left: 100,
                top: 6,
                right: 100,
                bottom: 6,
              ),
              decoration: AppDecoration.fillAmber500.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_sagan_ratan".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsSemiBold20WhiteA700,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 16,
                  top: 6,
                  right: 26,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 4,
                      ),
                      child: Text(
                        "lbl_40".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold40,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 2,
                        top: 14,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold25,
                            ),
                          ),
                          Text(
                            "lbl_off".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium15,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomButton(
                      height: 34,
                      width: 79,
                      text: "lbl_shop_now".tr,
                      margin: getMargin(
                        top: 18,
                        bottom: 11,
                      ),
                      fontStyle: ButtonFontStyle.PoppinsSemiBold12,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 11,
                bottom: 8,
              ),
              child: Text(
                "msg_valid_offer_till".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular12Gray400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
