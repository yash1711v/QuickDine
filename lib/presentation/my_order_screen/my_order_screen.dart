import '../my_order_screen/widgets/my_order_item_widget.dart';
import 'controller/my_order_controller.dart';
import 'models/my_order_item_model.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_button.dart';

class MyOrderScreen extends GetWidget<MyOrderController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                padding: getPadding(top: 51, bottom: 51),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_my_order".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium20),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("lbl_sagar_ratna".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold20)),
                      Container(
                          width: getHorizontalSize(296.00),
                          margin: getMargin(top: 14),
                          child: Text("msg_the_lodhi_lodhi".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular15Black900a8)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 92, top: 28),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown,
                                        height: getSize(24.00),
                                        width: getSize(24.00),
                                        margin: getMargin(bottom: 25)),
                                    Container(
                                        width: getHorizontalSize(155.00),
                                        margin: getMargin(left: 14),
                                        child: Text("msg_june_10_at_12".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtPoppinsRegular20Black900))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 36, top: 48, right: 31),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(37.00));
                              },
                              itemCount: controller
                                  .myOrderModelObj.value.myOrderItemList.length,
                              itemBuilder: (context, index) {
                                MyOrderItemModel model = controller
                                    .myOrderModelObj
                                    .value
                                    .myOrderItemList[index];
                                return MyOrderItemWidget(model);
                              }))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 42, top: 6),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgPlusBlack900,
                                    height: getSize(11.00),
                                    width: getSize(11.00),
                                    margin: getMargin(top: 4, bottom: 3)),
                                Padding(
                                    padding: getPadding(left: 3),
                                    child: Text("lbl_add_more_items".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style:
                                            AppStyle.txtPoppinsRegular12Red500))
                              ]))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(412.00),
                          margin: getMargin(top: 29),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray5007a)),
                      Padding(
                          padding: getPadding(left: 49, top: 16, right: 57),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("lbl_to_pay".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtPoppinsRegular15)),
                                Padding(
                                    padding: getPadding(bottom: 2),
                                    child: Text("lbl_10002".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtPoppinsRegular15))
                              ])),
                      CustomButton(
                          height: 51,
                          width: 266,
                          text: "lbl_pay_now".tr,
                          margin: getMargin(top: 61, bottom: 5),
                          padding: ButtonPadding.PaddingAll13,
                          onTap: onTapPaynow)
                    ]))));
  }

  onTapPaynow() {
    Get.toNamed(AppRoutes.paidSuccessfullScreen);
  }
}
