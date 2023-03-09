import 'dart:collection';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:quickdine/presentation/Provider/ItemCardStateProvider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../preferences/shp.dart';
import '../FoodCd/Foodcd.dart';
import '../indicator/indicator.dart';
import 'controller/reserve_table_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:quickdine/widgets/custom_drop_down.dart';
import 'package:quickdine/widgets/custom_text_form_field.dart';
import 'package:intl/intl.dart';

// New Code
class ReserveTableScreen extends StatefulWidget {
  const ReserveTableScreen({Key? key}) : super(key: key);
  @override
  State<ReserveTableScreen> createState() => _ReserveTableScreenState();
}

class _ReserveTableScreenState extends State<ReserveTableScreen>
    with TickerProviderStateMixin {
  get controller => ReserveTableController();
  String resId = "";
  String ResName = "";
  String resAddress = "";
  String resPhoto = "";
  String avgFile = "";
  List? resList;
  List? FoodList;
  Map<String, String> FoodItems = {};
//FoodCatogary List
  List<String> Catagories = [];
  String catagories = "";
  String Rating = "";
  int i = 0;
  late TabController _tabController;
  List<Map<String, dynamic>> RestaurantList = [];
  late Set<Map<String, String>> catogaries;
  late DateTime opentime;
  late DateTime Clossingtime;
  String avgprice = "";
  bool ontime = false;
  late List<Tab> tabname;
  var sortedByValueMap;
  var time = DateTime.now();
  void initState() {
    readData();
    super.initState();
    checkidValue();
  }

  checkidValue() async {
    String uid = await shp().getresId() ?? "";
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
          ResName = RestaurantList[j]['rest_name'];
          resAddress = RestaurantList[j]['rest_address'];
          resPhoto = RestaurantList[j]['rest_photo'];
          avgprice = RestaurantList[j]['avg_price_for_2people'].toString();
          catagories = RestaurantList[j]['food_categries'];
          Rating = RestaurantList[j]['avg_stars'].toString();
          //  opentime=DateTime.parse(RestaurantList[j]['opening_time']);
          // Clossingtime=DateTime.parse(RestaurantList[j]['closing_time']);
        });
      }
    }
    var response3 =
        await Supabase.instance.client.from('food_item').select().execute();
    FoodList = response3.data.toList();
    int j = 0;
    FoodList!.forEach((element) {
      j++;
    });
    print(j);
    int k = 0;
    for (int i = 0; i < j; i++) {
      // print("///////////////////////////");
      setState(() {
        FoodItems.addIf(FoodList![i]['restid'] == resId,
            FoodList![i]['foodname'], FoodList![i]['cuisine']);
      });
      // print(FoodItems.entries);
      // print("///////////////////////////");
      // print("///////////////////////////");
    }
    Set<String> cat = {};
    // print(FoodItems.entries);
    //print(FoodItems.length);
    FoodItems.forEach((key, value) {
      // print(key+":"+value);
      cat.add(value);
    });
    setState(() {
      cat.forEach((element) {
        Catagories.add(element);
      });
    });
    Catagories.sort();
    setState(() {
      sortedByValueMap = new SplayTreeMap<String, String>.from(
          FoodItems, (k1, k2) => FoodItems[k1]!.compareTo(FoodItems[k2]!));
    });
    //print(sortedByValueMap);
    //print(Catagories);
  }

  @override
  Widget build(BuildContext context) {
    _tabController = TabController(length: Catagories.length, vsync: this);
    String Count=shp().getCount().toString()??"";
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
          body: SingleChildScrollView(
            child: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(children: [
                        CachedNetworkImage(
                          imageUrl: resPhoto,
                          placeholder: (context, url) =>
                              Lottie.asset(
                                  'assets2/123408-image-not-preview.json'),
                          errorWidget: (context, url, error) =>
                              Lottie.asset(
                                  'assets2/123408-image-not-preview.json'),
                          height: getVerticalSize(313.00),
                          width: getHorizontalSize(414.00),
                          fit: BoxFit.cover,
                        ),
                        Container(
                          margin: getMargin(top: 20),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios),
                            //replace with our own icon data.
                          ),
                        ),
                        Container(
                          margin: getMargin(top: 20, left: 370),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search_rounded),
                            //replace with our own icon data.
                          ),
                        ),
                      ]),
                      Padding(
                          padding: getPadding(left: 32, top: 14),
                          child: Text(ResName.tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsSemiBold20)),
                      Padding(
                        padding: getPadding(left: 25, top: 1),
                        child: Container(
                            width: getHorizontalSize(350.00),
                            margin: getMargin(left: 10, top: 1),
                            child: Text(resAddress,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular11)),
                      ),
                      Container(
                          width: getHorizontalSize(350.00),
                          margin: getMargin(left: 33, top: 9),
                          child: Text(
                              " Rs: " +
                                  avgprice +
                                  " for 2 | " +
                                  " " +
                                  catagories,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular11)),
                      Padding(
                        padding: getPadding(left: 25, top: 1),
                        child: Container(
                            width: getHorizontalSize(350.00),
                            margin: getMargin(left: 10, top: 7),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    Rating,
                                  ),
                                ),
                                Container(
                                  margin: getMargin(left: 5, bottom: 3),
                                  child: Icon(
                                    Icons.star_rate_rounded,
                                    color: Colors.orange,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 5, top: 2),
                                          child: Text(" | ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular15Red500)),
                                      Container(
                                        margin: getMargin(left: 10),
                                        child: CustomImageView(
                                            svgPath:
                                            ImageConstant.imgClockRed500,
                                            height: getSize(20.00),
                                            width: getSize(20.00),
                                            margin:
                                            getMargin(top: 2, bottom: 2)),
                                      ),
                                      Padding(
                                          padding: getPadding(left: 5, top: 2),
                                          child: Text("lbl_now_open".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular15Red500))
                                    ],
                                  ),
                                ),
                                Stack(
                                    children: [Container(
                                      width: 67,
                                      height: 50,
                                      color: Colors.transparent,
                                      margin: getMargin(left: 112, bottom: 0),
                                      child: FloatingActionButton(
                                        onPressed: () {},
                                        backgroundColor: Colors.transparent,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(25))),
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: getMargin(left: 10),
                                                child: Lottie.asset(
                                                  "assets2/Shopping.json",
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                      Container(
                                        margin: getMargin(top: 35,left: 155),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.red,
                                          radius: 10,
                                          child: Text(
                                              Count
                                          ),
                                        ),
                                      )
                                    ]
                                ),
                              ],
                            )),
                      ),
                      Container(
                        margin: getMargin(top: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                              controller: _tabController,
                              isScrollable: true,
                              labelPadding:
                              EdgeInsets.only(left: 20, right: 20),
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.grey,
                              indicator: CircleTabIndicator(
                                  color: Colors.black, radius: 3),
                              tabs: List<Widget>.generate(Catagories.length,
                                      (index) {
                                    print(Catagories[index]);
                                    return new Tab(
                                      text: Catagories[index],
                                    );
                                  })

                            // ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 500,
                        child: TabBarView(
                            controller: _tabController,
                            children: List<Widget>.generate(Catagories.length,
                                    (index) {
                                  return FoodCards(
                                      CuisineNAme: Catagories[index]);
                                })),
                      ),
                    ])),
          ),

        ));
    // return SafeArea(
    //     top: false,
    //     bottom: false,
    //     child: Scaffold(
    //       extendBody: true,
    //       resizeToAvoidBottomInset: false,
    //       backgroundColor: ColorConstant.whiteA700,
    //       body: SingleChildScrollView(
    //         child: Container(
    //             width: size.width,
    //             child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 children: [
    //                   Stack(children: [
    //                     CachedNetworkImage(
    //                       imageUrl: resPhoto,
    //                       placeholder: (context, url) => Lottie.asset(
    //                           'assets2/123408-image-not-preview.json'),
    //                       errorWidget: (context, url, error) => Lottie.asset(
    //                           'assets2/123408-image-not-preview.json'),
    //                       height: getVerticalSize(313.00),
    //                       width: getHorizontalSize(414.00),
    //                       fit: BoxFit.cover,
    //                     ),
    //                     Container(
    //                       margin: getMargin(top: 20),
    //                       child: IconButton(
    //                         onPressed: () {
    //                           Navigator.pop(context);
    //                         },
    //                         icon: Icon(Icons.arrow_back_ios),
    //                         //replace with our own icon data.
    //                       ),
    //                     ),
    //                     Container(
    //                       margin: getMargin(top: 20, left: 370),
    //                       child: IconButton(
    //                         onPressed: () {},
    //                         icon: Icon(Icons.search_rounded),
    //                         //replace with our own icon data.
    //                       ),
    //                     ),
    //                   ]),
    //                   Padding(
    //                       padding: getPadding(left: 32, top: 14),
    //                       child: Text(ResName.tr,
    //                           overflow: TextOverflow.ellipsis,
    //                           textAlign: TextAlign.center,
    //                           style: AppStyle.txtPoppinsSemiBold20)),
    //                   Padding(
    //                     padding: getPadding(left: 25, top: 1),
    //                     child: Container(
    //                         width: getHorizontalSize(350.00),
    //                         margin: getMargin(left: 10, top: 1),
    //                         child: Text(resAddress,
    //                             maxLines: null,
    //                             textAlign: TextAlign.left,
    //                             style: AppStyle.txtPoppinsRegular11)),
    //                   ),
    //                   Container(
    //                       width: getHorizontalSize(350.00),
    //                       margin: getMargin(left: 33, top: 9),
    //                       child: Text(
    //                           " Rs: " +
    //                               avgprice +
    //                               " for 2 | " +
    //                               " " +
    //                               catagories,
    //                           maxLines: null,
    //                           textAlign: TextAlign.left,
    //                           style: AppStyle.txtPoppinsRegular11)),
    //                   Padding(
    //                     padding: getPadding(left: 25, top: 1),
    //                     child: Container(
    //                         width: getHorizontalSize(350.00),
    //                         margin: getMargin(left: 10, top: 7),
    //                         child: Row(
    //                           children: [
    //                             Container(
    //                               child: Text(
    //                                 Rating,
    //                               ),
    //                             ),
    //                             Container(
    //                               margin: getMargin(left: 5, bottom: 3),
    //                               child: Icon(
    //                                 Icons.star_rate_rounded,
    //                                 color: Colors.orange,
    //                               ),
    //                             ),
    //                             Container(
    //                               child: Row(
    //                                 children: [
    //                                   Padding(
    //                                       padding: getPadding(left: 5, top: 2),
    //                                       child: Text(" | ",
    //                                           overflow: TextOverflow.ellipsis,
    //                                           textAlign: TextAlign.left,
    //                                           style: AppStyle
    //                                               .txtPoppinsRegular15Red500)),
    //                                   Container(
    //                                     margin: getMargin(left: 10),
    //                                     child: CustomImageView(
    //                                         svgPath:
    //                                             ImageConstant.imgClockRed500,
    //                                         height: getSize(20.00),
    //                                         width: getSize(20.00),
    //                                         margin:
    //                                             getMargin(top: 2, bottom: 2)),
    //                                   ),
    //                                   Padding(
    //                                       padding: getPadding(left: 5, top: 2),
    //                                       child: Text("lbl_now_open".tr,
    //                                           overflow: TextOverflow.ellipsis,
    //                                           textAlign: TextAlign.left,
    //                                           style: AppStyle
    //                                               .txtPoppinsRegular15Red500))
    //                                 ],
    //                               ),
    //                             )
    //                           ],
    //                         )),
    //                   ),
    //                   Container(
    //                     margin: getMargin(top: 10),
    //                     child: Align(
    //                       alignment: Alignment.centerLeft,
    //                       child: TabBar(
    //                           controller: _tabController,
    //                           isScrollable: true,
    //                           labelPadding:
    //                               EdgeInsets.only(left: 20, right: 20),
    //                           labelColor: Colors.black,
    //                           unselectedLabelColor: Colors.grey,
    //                           indicator: CircleTabIndicator(
    //                               color: Colors.black, radius: 3),
    //                           tabs: List<Widget>.generate(Catagories.length,
    //                               (index) {
    //                             print(Catagories[index]);
    //                             return new Tab(
    //                               text: Catagories[index],
    //                             );
    //                           })
    //
    //                           // ],
    //                           ),
    //                     ),
    //                   ),
    //                   Container(
    //                     width: double.maxFinite,
    //                     height: 500,
    //                     child: TabBarView(
    //                         controller: _tabController,
    //                         children: List<Widget>.generate(Catagories.length,
    //                             (index) {
    //                           return FoodCards(CuisineNAme: Catagories[index]);
    //                         })),
    //                   ),
    //                 ])),
    //       ),
    //       floatingActionButton: Container(
    //         width: 67,
    //         height: 50,
    //         color: Colors.transparent,
    //         margin: getMargin(right: 15, bottom: 0),
    //         child: FloatingActionButton(
    //           onPressed: () {},
    //           backgroundColor: Colors.yellow.shade700,
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.all(Radius.circular(25))),
    //           child: Container(
    //             color: Colors.transparent,
    //             child: Row(
    //               children: [
    //                 Container(
    //                   margin: getMargin(left: 10),
    //                   child: Lottie.asset(
    //                     "assets2/Shopping.json",
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ));
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

  // Widget _bottomButtons() {
  //     return _tabController.index==0?FloatingActionButton(
  //         shape: StadiumBorder(),
  //         onPressed: null,
  //         backgroundColor: Colors.redAccent,
  //         child: Icon(
  //           Icons.message,
  //           size: 20.0,
  //         ))
  //         : FloatingActionButton(
  //       shape: StadiumBorder(),
  //       onPressed: null,
  //       backgroundColor: Colors.redAccent,
  //       child: Icon(
  //         Icons.edit,
  //         size: 20.0,
  //       ),
  //     );
  // FloatingActionButton(
  //   onPressed: (){},
  //   backgroundColor: Colors.orange.shade900,
  //   shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.all(Radius.circular(30))
  //   ),
  //   child: Container(
  //     child: Row(
  //       children: [
  //         Container(
  //           margin: getMargin(left: 20),
  //           child: Icon(Icons.shopping_cart,
  //             size: 35,),
  //         ),
  //         Container(
  //             margin: getMargin(left: 10),
  //             child: Text("Menu",
  //               style: TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 21
  //               ),
  //             )
  //         ),
  //       ],
  //     ),
  //   ),
  // ):FloatingActionButton(
  //   onPressed: (){},
  //   backgroundColor: Colors.orange.shade900,
  //   shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.all(Radius.circular(30))
  //   ),
  //   child: Container(
  //     child: Row(
  //       children: [
  //         Container(
  //           margin: getMargin(left: 20),
  //           child: Icon(Icons.shopping_cart,
  //             size: 35,),
  //         ),
  //         Container(
  //             margin: getMargin(left: 10),
  //             child: Text("Menu",
  //               style: TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 21
  //               ),
  //             )
  //         ),
  //       ],
  //     ),
  //   ),
  // );
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
