import '../my_order_screen/widgets/my_order_item_widget.dart';
import 'controller/my_order_controller.dart';
import 'models/my_order_item_model.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_button.dart';
import 'package:upi_india/upi_india.dart';
class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  Future<UpiResponse>? _transaction;
  UpiIndia _upiIndia = UpiIndia();
  List<UpiApp>? apps;
  late String receiverUpiId='9971104827@paytm';
  late String receiverName='Yash';
  late double amount=100;
  void initState() {
    _upiIndia.getAllUpiApps(mandatoryTransactionId: false).then((value) {
      setState(() {
        apps = value;
      });
    }).catchError((e) {
      apps = [];
    });
    super.initState();
  }

  Future<UpiResponse> initiateTransaction(UpiApp app) async {
    return _upiIndia.startTransaction(
      app: app,
      receiverUpiId: receiverUpiId,
      receiverName: receiverName,
      transactionRefId: 'TestingUpiIndiaPlugin',
      transactionNote: 'Not actual. Just an example.',
      amount: amount,
      flexibleAmount: false
    );
  }
  Widget displayUpiApps() {
    if (apps == null)
      return Center(child: CircularProgressIndicator());
    else if (apps!.length == 0)
      return Center(
        child: Text(
          "No apps found to handle transaction.",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    else
      return Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Wrap(
            children: apps!.map<Widget>((UpiApp app) {
              return GestureDetector(
                onTap: () {
                  _transaction = initiateTransaction(app);
                  setState(() {});
                },
                child: Container(
                  height: 100,
                  width: 100,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.memory(
                        app.icon,
                        height: 60,
                        width: 60,
                      ),
                      Text(app.name),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      );
  }
  String _upiErrorHandler(error) {
    switch (error) {
      case UpiIndiaAppNotInstalledException:
        return 'Requested app not installed on device';
      case UpiIndiaUserCancelledException:
        return 'You cancelled the transaction';
      case UpiIndiaNullResponseException:
        return 'Requested app didn\'t return any response';
      case UpiIndiaInvalidParametersException:
        return 'Requested app cannot handle the transaction';
      default:
        return 'An Unknown error has occurred';
    }
  }
  void _checkTxnStatus(String status) {
    switch (status) {
      case UpiPaymentStatus.SUCCESS:
      Get.toNamed(AppRoutes.paidSuccessfullScreen);
        break;
      case UpiPaymentStatus.SUBMITTED:
        print('Transaction Submitted');
        break;
      case UpiPaymentStatus.FAILURE:
        Get.toNamed(AppRoutes.paidFailScreen);
        break;
      default:
        print('Received an Unknown transaction status');
    }
  }
  get controller => MyOrderController();
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
                    ])
            )
        )
    );
  }

  onTapPaynow() {

      showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder( // <-- SEE HERE
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40.0),
            ),
          ),
          enableDrag: true,
          backgroundColor: Colors.teal.shade100,
          builder: (context){
            return  Container(
                height: 500,
                padding: EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 10.0),
              child: displayUpiApps(),
               );Expanded(
                child: FutureBuilder(
                  future: _transaction,
                  builder: (BuildContext context, AsyncSnapshot<UpiResponse> snapshot){
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasError) {
                    return Center(
                        child: Text(
                      _upiErrorHandler(snapshot.error.runtimeType),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        ), // Print's text message on screen
                      );}
                      }
                  },
                ),
              );
          });
    }
}


// class MyOrderScreen extends GetWidget<MyOrderController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         top: false,
//         bottom: false,
//         child: Scaffold(
//             backgroundColor: ColorConstant.whiteA700,
//             body: Container(
//                 width: size.width,
//                 padding: getPadding(top: 51, bottom: 51),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text("lbl_my_order".tr,
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtPoppinsMedium20),
//                       Padding(
//                           padding: getPadding(top: 29),
//                           child: Text("lbl_sagar_ratna".tr,
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: AppStyle.txtPoppinsSemiBold20)),
//                       Container(
//                           width: getHorizontalSize(296.00),
//                           margin: getMargin(top: 14),
//                           child: Text("msg_the_lodhi_lodhi".tr,
//                               maxLines: null,
//                               textAlign: TextAlign.center,
//                               style: AppStyle.txtPoppinsRegular15Black900a8)),
//                       Align(
//                           alignment: Alignment.centerLeft,
//                           child: Padding(
//                               padding: getPadding(left: 92, top: 28),
//                               child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     CustomImageView(
//                                         svgPath: ImageConstant.imgArrowdown,
//                                         height: getSize(24.00),
//                                         width: getSize(24.00),
//                                         margin: getMargin(bottom: 25)),
//                                     Container(
//                                         width: getHorizontalSize(155.00),
//                                         margin: getMargin(left: 14),
//                                         child: Text("msg_june_10_at_12".tr,
//                                             maxLines: null,
//                                             textAlign: TextAlign.center,
//                                             style: AppStyle
//                                                 .txtPoppinsRegular20Black900))
//                                   ]))),
//                       Padding(
//                           padding: getPadding(left: 36, top: 48, right: 31),
//                           child: Obx(() => ListView.separated(
//                               physics: BouncingScrollPhysics(),
//                               shrinkWrap: true,
//                               separatorBuilder: (context, index) {
//                                 return SizedBox(height: getVerticalSize(37.00));
//                               },
//                               itemCount: controller
//                                   .myOrderModelObj.value.myOrderItemList.length,
//                               itemBuilder: (context, index) {
//                                 MyOrderItemModel model = controller
//                                     .myOrderModelObj
//                                     .value
//                                     .myOrderItemList[index];
//                                 return MyOrderItemWidget(model);
//                               }))),
//                       Align(
//                           alignment: Alignment.centerLeft,
//                           child: Padding(
//                               padding: getPadding(left: 42, top: 6),
//                               child: Row(children: [
//                                 CustomImageView(
//                                     svgPath: ImageConstant.imgPlusBlack900,
//                                     height: getSize(11.00),
//                                     width: getSize(11.00),
//                                     margin: getMargin(top: 4, bottom: 3)),
//                                 Padding(
//                                     padding: getPadding(left: 3),
//                                     child: Text("lbl_add_more_items".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.center,
//                                         style:
//                                             AppStyle.txtPoppinsRegular12Red500))
//                               ]))),
//                       Container(
//                           height: getVerticalSize(1.00),
//                           width: getHorizontalSize(412.00),
//                           margin: getMargin(top: 29),
//                           decoration:
//                               BoxDecoration(color: ColorConstant.gray5007a)),
//                       Padding(
//                           padding: getPadding(left: 49, top: 16, right: 57),
//                           child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                     padding: getPadding(top: 2),
//                                     child: Text("lbl_to_pay".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.center,
//                                         style: AppStyle.txtPoppinsRegular15)),
//                                 Padding(
//                                     padding: getPadding(bottom: 2),
//                                     child: Text("lbl_10002".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.center,
//                                         style: AppStyle.txtPoppinsRegular15))
//                               ])),
//                       CustomButton(
//                           height: 51,
//                           width: 266,
//                           text: "lbl_pay_now".tr,
//                           margin: getMargin(top: 61, bottom: 5),
//                           padding: ButtonPadding.PaddingAll13,
//                           onTap: onTapPaynow)
//                     ]))));
//   }
//
//   onTapPaynow() {
//     Get.toNamed(AppRoutes.paidSuccessfullScreen);
//   }
// }
