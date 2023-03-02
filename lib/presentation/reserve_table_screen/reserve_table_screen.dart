import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../preferences/shp.dart';
import 'controller/reserve_table_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:quickdine/widgets/custom_drop_down.dart';
import 'package:quickdine/widgets/custom_text_form_field.dart';

// New Code
class ReserveTableScreen extends StatefulWidget {
  const ReserveTableScreen({Key? key}) : super(key: key);

  @override
  State<ReserveTableScreen> createState() => _ReserveTableScreenState();
}

class _ReserveTableScreenState extends State<ReserveTableScreen> {
  get controller => ReserveTableController();
  String resId="";
  String ResName="";
  String resAddress="";
  String resPhoto="";
  List? resList;
  int i=0;
  List<Map<String, dynamic>> RestaurantList = [];

  void initState() {
    super.initState();
    readData();
    checkidValue();
  }
  checkidValue() async {
    String uid = await shp().getresId()?? "";
    setState(() {
      resId = uid;
    });
    print("----" + resId + "---------");
  }
  Future<void> readData() async {
    var response2 =
    await Supabase.instance.client.from('restaurant').select().execute();
    resList = response2.data.toList();
    resList!.forEach((element) {
          RestaurantList.add(element);
          i++;
    });
    for (int j = 0; j < i; j++) {
      if (resId == RestaurantList[j]['id']) {
        setState(() {
          ResName=RestaurantList[j]['rest_name'];
          resAddress=RestaurantList[j]['rest_address'];
          resPhoto=RestaurantList[j]['rest_photo'];
        });
      }
    }
    print("///////////////////////////");
    print(ResName+"\n"+resAddress);
    print("///////////////////////////");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          extendBody: true,
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CachedNetworkImage(
                        imageUrl: resPhoto,
                        placeholder: (context, url) =>  Lottie.asset('assets2/123408-image-not-preview.json'),
                        errorWidget: (context, url, error) => Lottie.asset('assets2/123408-image-not-preview.json'),
                            height: getVerticalSize(313.00),
                            width: getHorizontalSize(414.00),
                          fit: BoxFit.cover,
                          ),
                      Container(
                          height: getVerticalSize(42.00),
                          width: getHorizontalSize(413.00),
                          margin: getMargin(left: 1),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: getVerticalSize(40.00),
                                        width: getHorizontalSize(413.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.blueGray100))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 33, top: 8, right: 26),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomTextFormField(
                                                  width: 79,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .groupNinetyNineController,
                                                  hintText: "lbl_overview".tr,
                                                  variant: TextFormFieldVariant
                                                      .UnderLineRed500,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .PoppinsSemiBold15,
                                                  textInputAction:
                                                      TextInputAction.done),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 30, bottom: 10),
                                                  child: Text("lbl_offers".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular15)),
                                              Spacer(flex: 51),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 9),
                                                  child: Text("lbl_menu".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular15)),
                                              Spacer(flex: 48),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 10),
                                                  child: Text("lbl_reviews".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular15))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(left: 32, top: 14),
                          child: Text(ResName,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsSemiBold20)),
                      Padding(
                          padding: getPadding(left: 32, top: 1),
                          child: Text(resAddress,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular15Black9009b)),
                      Container(
                          width: getHorizontalSize(258.00),
                          margin: getMargin(left: 33, top: 1),
                          child: Text("msg_2_000_for_2".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular11)),
                      Padding(
                          padding: getPadding(left: 37, top: 8),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgClockRed500,
                                height: getSize(20.00),
                                width: getSize(20.00),
                                margin: getMargin(top: 2, bottom: 2)),
                            Padding(
                                padding: getPadding(left: 5, top: 2),
                                child: Text("lbl_now_open".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular15Red500)),
                            Container(
                                height: getSize(3.00),
                                width: getSize(3.00),
                                margin: getMargin(left: 6, top: 9, bottom: 12),
                                decoration: BoxDecoration(
                                    color: ColorConstant.black900,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(1.00)))),
                            CustomDropDown(
                                width: 165,
                                focusNode: FocusNode(),
                                icon: Container(
                                    margin: getMargin(left: 10),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown)),
                                hintText: "msg_closes_at_10_00".tr,
                                margin: getMargin(left: 6),
                                variant: DropDownVariant.None,
                                items: controller.reserveTableModelObj.value
                                    .dropdownItemList,
                                onChanged: (value) {
                                  controller.onSelected(value);
                                })
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapRowtable();
                              },
                              child: Container(
                                  margin:
                                      getMargin(left: 37, top: 26, right: 35),
                                  padding: getPadding(
                                      left: 18, top: 16, right: 18, bottom: 16),
                                  decoration: AppDecoration.outlineBlack900071
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgTable,
                                            height: getSize(20.00),
                                            width: getSize(20.00),
                                            margin: getMargin(bottom: 5)),
                                        Padding(
                                            padding: getPadding(
                                                left: 30,
                                                right: 156,
                                                bottom: 3),
                                            child: Text("lbl_reserve_table".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular15))
                                      ])))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(59.00),
                              width: getHorizontalSize(341.00),
                              margin: getMargin(top: 10),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgPayicon,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(23.00),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 14, top: 15)),
                                Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapStackpaybilltextview();
                                        },
                                        child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: ColorConstant.amber50035,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color:
                                                        ColorConstant.amber500,
                                                    width: getHorizontalSize(
                                                        1.00)),
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder10),
                                            child: Container(
                                                height: getVerticalSize(59.00),
                                                width:
                                                    getHorizontalSize(341.00),
                                                padding: getPadding(
                                                    left: 21,
                                                    top: 3,
                                                    right: 21,
                                                    bottom: 3),
                                                decoration: AppDecoration
                                                    .outlineAmber5002
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 46,
                                                                      top: 10),
                                                              child: Text(
                                                                  "lbl_pay_bill"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular15))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 45),
                                                              child: Text(
                                                                  "msg_save_extra_10"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular12Black9009b))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      77.00),
                                                              margin: getMargin(
                                                                  top: 8),
                                                              padding:
                                                                  getPadding(
                                                                      left: 6,
                                                                      top: 1,
                                                                      right: 6,
                                                                      bottom:
                                                                          1),
                                                              decoration: AppDecoration
                                                                  .txtFillAmber500
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .txtRoundedBorder5),
                                                              child: Text(
                                                                  "lbl_flat_30_off2"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium12)))
                                                    ])))))
                              ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 37, top: 10, right: 35),
                              padding: getPadding(
                                  left: 25, top: 16, right: 25, bottom: 16),
                              decoration: AppDecoration.outlineBlack900071
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgVeganfood,
                                        height: getSize(20.00),
                                        width: getSize(20.00),
                                        margin: getMargin(bottom: 5)),
                                    Padding(
                                        padding: getPadding(
                                            left: 30, right: 167, bottom: 3),
                                        child: GestureDetector(
                                          onTap: () {
                                            onTapBottomPre_OrderButton();
                                          },
                                          child: Text(
                                            "lbl_pre_order2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular15,
                                          ),
                                        ))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapRowcallmale();
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 262,
                                      top: 47,
                                      right: 37 - 2.3,
                                      bottom: 2),
                                  padding: getPadding(
                                      left: 11, top: 7, right: 11, bottom: 10),
                                  decoration: AppDecoration.outlineGreen5001
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder51),
                                  child: Row(children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCallmale,
                                      height: getSize(40.00),
                                      width: getSize(40.00),
                                    ),
                                    Padding(
                                        padding: getPadding(
                                            left: 9,
                                            top: 4,
                                            right: 1,
                                            bottom: 3),
                                        child: Text("lbl_waiter".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium15Black900))
                                  ]))))
                    ])),
            // bottomNavigationBar:  Container(
            //   margin: getMargin(left: 14,bottom: 15,right: 15),
            //   padding: EdgeInsets.only(left: 10,right: 20),
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(30),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.grey,
            //           blurRadius: 15.0, // soften the shadow
            //           spreadRadius: 2.0, //extend the shadow
            //           offset: Offset(
            //             1.0, // Move to right 5  horizontally
            //             4.0, // Move to bottom 5 Vertically
            //           ),
            //         ),
            //       ]
            //   ),
            //   child: SizedBox(
            //     height: 88,
            //     child: GNav(
            //       duration: Duration(milliseconds: 400),
            //       tabBackgroundColor: Colors.deepOrangeAccent.shade100,
            //       activeColor: Colors.white,
            //       //selectedIndex: _currentIndex,
            //       haptic: true,
            //       // backgroundColor: Colors.transparent,
            //       tabs: [
            //         GButton(
            //           gap: 8,
            //           icon: Icons.home,
            //           text: "Home",
            //
            //           onPressed: () {
            //             onTapBottomHomeButton();
            //           },
            //         ),
            //         GButton(
            //           gap: 8,
            //           icon: Icons.search,
            //           text: "Search",
            //           onPressed: () {
            //             onTapBottomSearchButton();
            //           },
            //         ),
            //         GButton(
            //           gap: 8,
            //           icon: Icons.access_time,
            //           text: "Pre-Order",
            //           onPressed: () => onTapBottomPre_OrderButton(),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
    ));
  }

  onTapRowtable() {
    Get.toNamed(AppRoutes.reserverTableDetailsScreen);
  }

  onTapStackpaybilltextview() {
    Get.toNamed(AppRoutes.reserverTableDetailsScreen);
  }

  onTapRowcallmale() {
    Get.toNamed(AppRoutes.waiterCallDetailsScreen);
  }

  onTapBottomSearchButton() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapBottomHomeButton() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapBottomPre_OrderButton() {
    Get.toNamed(AppRoutes.orderpreScreen);
  }

  onTapBottomReservationButton() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }
}

//Old Code
// class ReserveTableScreen extends GetWidget<ReserveTableController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         top: false,
//         bottom: false,
//         child: Scaffold(
//             resizeToAvoidBottomInset: false,
//             backgroundColor: ColorConstant.whiteA700,
//             body: Container(
//                 width: size.width,
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       CustomImageView(
//                           imagePath: ImageConstant.imgRectangle11,
//                           height: getVerticalSize(313.00),
//                           width: getHorizontalSize(414.00),
//                           radius: BorderRadius.only(
//                               topLeft:
//                                   Radius.circular(getHorizontalSize(20.00)),
//                               topRight:
//                                   Radius.circular(getHorizontalSize(20.00)))),
//                       Container(
//                           height: getVerticalSize(42.00),
//                           width: getHorizontalSize(413.00),
//                           margin: getMargin(left: 1),
//                           child: Stack(
//                               alignment: Alignment.bottomCenter,
//                               children: [
//                                 Align(
//                                     alignment: Alignment.topCenter,
//                                     child: Container(
//                                         height: getVerticalSize(40.00),
//                                         width: getHorizontalSize(413.00),
//                                         decoration: BoxDecoration(
//                                             color: ColorConstant.blueGray100))),
//                                 Align(
//                                     alignment: Alignment.bottomCenter,
//                                     child: Padding(
//                                         padding: getPadding(
//                                             left: 33, top: 8, right: 26),
//                                         child: Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               CustomTextFormField(
//                                                   width: 79,
//                                                   focusNode: FocusNode(),
//                                                   controller: controller
//                                                       .groupNinetyNineController,
//                                                   hintText: "lbl_overview".tr,
//                                                   variant: TextFormFieldVariant
//                                                       .UnderLineRed500,
//                                                   fontStyle:
//                                                       TextFormFieldFontStyle
//                                                           .PoppinsSemiBold15,
//                                                   textInputAction:
//                                                       TextInputAction.done),
//                                               Padding(
//                                                   padding: getPadding(
//                                                       left: 30, bottom: 10),
//                                                   child: Text("lbl_offers".tr,
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                       textAlign: TextAlign.left,
//                                                       style: AppStyle
//                                                           .txtPoppinsRegular15)),
//                                               Spacer(flex: 51),
//                                               Padding(
//                                                   padding:
//                                                       getPadding(bottom: 9),
//                                                   child: Text("lbl_menu".tr,
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                       textAlign: TextAlign.left,
//                                                       style: AppStyle
//                                                           .txtPoppinsRegular15)),
//                                               Spacer(flex: 48),
//                                               Padding(
//                                                   padding:
//                                                       getPadding(bottom: 10),
//                                                   child: Text("lbl_reviews".tr,
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                       textAlign: TextAlign.left,
//                                                       style: AppStyle
//                                                           .txtPoppinsRegular15))
//                                             ])))
//                               ])),
//                       Padding(
//                           padding: getPadding(left: 32, top: 14),
//                           child: Text("lbl_sagar_ratna".tr,
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.center,
//                               style: AppStyle.txtPoppinsSemiBold20)),
//                       Padding(
//                           padding: getPadding(left: 32, top: 1),
//                           child: Text("msg_the_lodhi_pragati".tr,
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: AppStyle.txtPoppinsRegular15Black9009b)),
//                       Container(
//                           width: getHorizontalSize(258.00),
//                           margin: getMargin(left: 33, top: 1),
//                           child: Text("msg_2_000_for_2".tr,
//                               maxLines: null,
//                               textAlign: TextAlign.left,
//                               style: AppStyle.txtPoppinsRegular11)),
//                       Padding(
//                           padding: getPadding(left: 37, top: 8),
//                           child: Row(children: [
//                             CustomImageView(
//                                 svgPath: ImageConstant.imgClockRed500,
//                                 height: getSize(20.00),
//                                 width: getSize(20.00),
//                                 margin: getMargin(top: 2, bottom: 2)),
//                             Padding(
//                                 padding: getPadding(left: 5, top: 2),
//                                 child: Text("lbl_now_open".tr,
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: AppStyle.txtPoppinsRegular15Red500)),
//                             Container(
//                                 height: getSize(3.00),
//                                 width: getSize(3.00),
//                                 margin: getMargin(left: 6, top: 9, bottom: 12),
//                                 decoration: BoxDecoration(
//                                     color: ColorConstant.black900,
//                                     borderRadius: BorderRadius.circular(
//                                         getHorizontalSize(1.00)))),
//                             CustomDropDown(
//                                 width: 165,
//                                 focusNode: FocusNode(),
//                                 icon: Container(
//                                     margin: getMargin(left: 10),
//                                     child: CustomImageView(
//                                         svgPath: ImageConstant.imgArrowdown)),
//                                 hintText: "msg_closes_at_10_00".tr,
//                                 margin: getMargin(left: 6),
//                                 variant: DropDownVariant.None,
//                                 items: controller.reserveTableModelObj.value
//                                     .dropdownItemList,
//                                 onChanged: (value) {
//                                   controller.onSelected(value);
//                                 })
//                           ])),
//                       Align(
//                           alignment: Alignment.center,
//                           child: GestureDetector(
//                               onTap: () {
//                                 onTapRowtable();
//                               },
//                               child: Container(
//                                   margin:
//                                       getMargin(left: 37, top: 26, right: 35),
//                                   padding: getPadding(
//                                       left: 18, top: 16, right: 18, bottom: 16),
//                                   decoration: AppDecoration.outlineBlack900071
//                                       .copyWith(
//                                           borderRadius: BorderRadiusStyle
//                                               .roundedBorder10),
//                                   child: Row(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         CustomImageView(
//                                             imagePath: ImageConstant.imgTable,
//                                             height: getSize(20.00),
//                                             width: getSize(20.00),
//                                             margin: getMargin(bottom: 5)),
//                                         Padding(
//                                             padding: getPadding(
//                                                 left: 30,
//                                                 right: 156,
//                                                 bottom: 3),
//                                             child: Text("lbl_reserve_table".tr,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 textAlign: TextAlign.left,
//                                                 style: AppStyle
//                                                     .txtPoppinsRegular15))
//                                       ])))),
//                       Align(
//                           alignment: Alignment.center,
//                           child: Container(
//                               height: getVerticalSize(59.00),
//                               width: getHorizontalSize(341.00),
//                               margin: getMargin(top: 10),
//                               child:
//                                   Stack(alignment: Alignment.center, children: [
//                                 CustomImageView(
//                                     imagePath: ImageConstant.imgPayicon,
//                                     height: getVerticalSize(24.00),
//                                     width: getHorizontalSize(23.00),
//                                     alignment: Alignment.topLeft,
//                                     margin: getMargin(left: 14, top: 15)),
//                                 Align(
//                                     alignment: Alignment.center,
//                                     child: GestureDetector(
//                                         onTap: () {
//                                           onTapStackpaybilltextview();
//                                         },
//                                         child: Card(
//                                             clipBehavior: Clip.antiAlias,
//                                             elevation: 0,
//                                             margin: EdgeInsets.all(0),
//                                             color: ColorConstant.amber50035,
//                                             shape: RoundedRectangleBorder(
//                                                 side: BorderSide(
//                                                     color:
//                                                         ColorConstant.amber500,
//                                                     width: getHorizontalSize(
//                                                         1.00)),
//                                                 borderRadius: BorderRadiusStyle
//                                                     .roundedBorder10),
//                                             child: Container(
//                                                 height: getVerticalSize(59.00),
//                                                 width:
//                                                     getHorizontalSize(341.00),
//                                                 padding: getPadding(
//                                                     left: 21,
//                                                     top: 3,
//                                                     right: 21,
//                                                     bottom: 3),
//                                                 decoration: AppDecoration
//                                                     .outlineAmber5002
//                                                     .copyWith(
//                                                         borderRadius:
//                                                             BorderRadiusStyle
//                                                                 .roundedBorder10),
//                                                 child: Stack(
//                                                     alignment:
//                                                         Alignment.bottomLeft,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .topLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 46,
//                                                                       top: 10),
//                                                               child: Text(
//                                                                   "lbl_pay_bill"
//                                                                       .tr,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsRegular15))),
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .bottomLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 45),
//                                                               child: Text(
//                                                                   "msg_save_extra_10"
//                                                                       .tr,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsRegular12Black9009b))),
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .topRight,
//                                                           child: Container(
//                                                               width:
//                                                                   getHorizontalSize(
//                                                                       77.00),
//                                                               margin: getMargin(
//                                                                   top: 8),
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 6,
//                                                                       top: 1,
//                                                                       right: 6,
//                                                                       bottom:
//                                                                           1),
//                                                               decoration: AppDecoration
//                                                                   .txtFillAmber500
//                                                                   .copyWith(
//                                                                       borderRadius:
//                                                                           BorderRadiusStyle
//                                                                               .txtRoundedBorder5),
//                                                               child: Text(
//                                                                   "lbl_flat_30_off2"
//                                                                       .tr,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsMedium12)))
//                                                     ])))))
//                               ]))),
//                       Align(
//                           alignment: Alignment.center,
//                           child: Container(
//                               margin: getMargin(left: 37, top: 10, right: 35),
//                               padding: getPadding(
//                                   left: 25, top: 16, right: 25, bottom: 16),
//                               decoration: AppDecoration.outlineBlack900071
//                                   .copyWith(
//                                       borderRadius:
//                                           BorderRadiusStyle.roundedBorder10),
//                               child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     CustomImageView(
//                                         imagePath: ImageConstant.imgVeganfood,
//                                         height: getSize(20.00),
//                                         width: getSize(20.00),
//                                         margin: getMargin(bottom: 5)),
//                                     Padding(
//                                         padding: getPadding(
//                                             left: 30, right: 167, bottom: 3),
//                                         child: Text("lbl_pre_order2".tr,
//                                             overflow: TextOverflow.ellipsis,
//                                             textAlign: TextAlign.left,
//                                             style:
//                                                 AppStyle.txtPoppinsRegular15))
//                                   ]))),
//                       Align(
//                           alignment: Alignment.centerRight,
//                           child: GestureDetector(
//                               onTap: () {
//                                 onTapRowcallmale();
//                               },
//                               child: Container(
//                                   margin: getMargin(
//                                       left: 262, top: 47, right: 37, bottom: 5),
//                                   padding: getPadding(
//                                       left: 11, top: 8, right: 11, bottom: 0),
//                                   decoration: AppDecoration.outlineGreen5001
//                                       .copyWith(
//                                           borderRadius: BorderRadiusStyle
//                                               .roundedBorder23),
//                                   child: Row(children: [
//                                     CustomImageView(
//                                         imagePath: ImageConstant.imgCallmale,
//                                         height: getSize(30.00),
//                                         width: getSize(30.00),
//                                         margin: getMargin(top: 1)),
//                                     Padding(
//                                         padding: getPadding(
//                                             left: 9,
//                                             top: 4,
//                                             right: 6,
//                                             bottom: 3),
//                                         child: Text("lbl_waiter".tr,
//                                             overflow: TextOverflow.ellipsis,
//                                             textAlign: TextAlign.left,
//                                             style: AppStyle
//                                                 .txtPoppinsMedium15Black900))
//                                   ]))))
//                     ])),
//             bottomNavigationBar:SizedBox(height: 90.50, width: 10,
//               child: GNav(
//                 duration: Duration(milliseconds: 400),
//                 tabBackgroundColor: Colors.deepOrangeAccent.shade100,
//                 activeColor: Colors.white,
//                 selectedIndex: 3,
//                 tabs: [
//                   GButton(
//                     gap: 8,
//                     icon: Icons.home,
//                     text: "Home",
//                     onPressed: (){onTapBottomHomeButton();
//                     },
//                   ),
//                   GButton(
//                     gap: 8,
//                     icon: Icons.search,
//                     text: "Search",
//                     onPressed: (){
//                       onTapBottomSearchButton();
//                     },
//                   ),
//                   GButton(
//                     gap: 8,
//                     icon: Icons.access_time,
//                     text: "Pre-Order",),
//                   GButton(
//                       gap: 8,
//                       icon: Icons.bookmark_border,
//                       text: "Reservation",
//                      ),
//                 ],
//               ),)));
//   }
//
//   onTapRowtable() {
//     Get.toNamed(AppRoutes.reserverTableDetailsScreen);
//   }
//
//   onTapStackpaybilltextview() {
//     Get.toNamed(AppRoutes.reserverTableDetailsScreen);
//   }
//
//   onTapRowcallmale() {
//     Get.toNamed(AppRoutes.waiterCallDetailsScreen);
//   }
//   onTapBottomSearchButton() {
//     Get.toNamed(AppRoutes.exploreScreen);
//   }
//   onTapBottomHomeButton() {
//     Get.toNamed(AppRoutes.homeScreen);
//   }
//   onTapBottomPre_OrderButton() {
//     // Get.toNamed(AppRoutes.);
//   }
//   onTapBottomReservationButton() {
//     Get.toNamed(AppRoutes.reserveTableScreen);
//   }
// }
