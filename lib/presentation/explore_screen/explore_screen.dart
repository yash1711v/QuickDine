import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../Authentication/supabasecredential.dart';
import '../../preferences/shp.dart';
import '../../widgets/app_bar/appbar_dropdown.dart';
import '../DrawerWidget/DrawerItem.dart';
import '../DrawerWidget/DrawerWidget.dart';
import '../explore_screen/widgets/restaurantnear1_item_widget.dart';
import 'controller/explore_controller.dart';
import 'models/restaurantnear1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/app_bar/appbar_dropdown_1.dart';
import 'package:quickdine/widgets/app_bar/appbar_stack.dart';
import 'package:quickdine/widgets/app_bar/custom_app_bar.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:quickdine/widgets/custom_search_view.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  get controller => ExploreController();
  int _currentIndex = 1;
  String resId="";
  final _tabStream = Supabase.instance.client
      .from('restaurant')
      .stream(primaryKey: ['id']).eq('isMember', true);
  String Location = 'Ghaziabad';
  final _tabStream2 = Supabase.instance.client.from('restaurant').stream(
      primaryKey: [
        'id'
      ]).eq("rest_address",
      '3rd, K-23, Rakesh Marg, Pocket F, Nehru Nagar III, Nehru Nagar, Ghaziabad, Uttar Pradesh 201001');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          extendBody: true,
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                centerTitle: true,
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(
                        Icons.menu_rounded,
                        color: Colors.black,
                        size: 50, // Changing Drawer Icon Size
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                    );
                  },
                ),
                title: AppbarDropdown(
                    hintText: "lbl_delhi".tr,
                    margin: getMargin(top: 10),
                    items: controller.exploreModelObj.value.dropdownItemList,
                    onTap: (value) {
                      controller.onSelected(value);
                    }),
                actions: [
                  AppbarStack(
                      margin: getMargin(left: 20, right: 20, top: 12),
                      onTap: onTapProfileIcon)
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 11, top: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(30.00),
                                  width: getHorizontalSize(351.00),
                                  margin: getMargin(left: 7),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                "msg_quickk_dine_fun".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium20)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                "msg_quickk_dine_fun".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium20))
                                      ])),
                              CustomSearchView(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller: controller.searchButtonController,
                                  hintText: "msg_search_for_restaurants".tr,
                                  margin: getMargin(top: 22),
                                  alignment: Alignment.center,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 18,
                                          top: 12,
                                          right: 22,
                                          bottom: 13),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSearch)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(40.00))),
                              Padding(
                                  padding:
                                      getPadding(left: 3, top: 23, right: 25),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_categories".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium20),
                                        Padding(
                                            padding:
                                                getPadding(top: 4, bottom: 6),
                                            child: Text("lbl_see_all".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12))
                                      ])),
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  padding: getPadding(top: 6),
                                  child: IntrinsicWidth(
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                        Container(
                                            padding: getPadding(
                                                left: 3,
                                                top: 4,
                                                right: 3,
                                                bottom: 4),
                                            decoration: AppDecoration
                                                .outlineWhiteA7001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse44,
                                                  height: getSize(36.00),
                                                  width: getSize(36.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          18.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 9,
                                                      top: 6,
                                                      right: 23,
                                                      bottom: 6),
                                                  child: Text("lbl_all".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular15))
                                            ])),
                                        Container(
                                            margin: getMargin(left: 16),
                                            padding: getPadding(
                                                left: 3,
                                                top: 4,
                                                right: 3,
                                                bottom: 4),
                                            decoration: AppDecoration
                                                .outlineBlack90005
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse45,
                                                  height: getSize(36.00),
                                                  width: getSize(36.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          18.00))),
                                              Container(
                                                  width:
                                                      getHorizontalSize(35.00),
                                                  margin: getMargin(
                                                      left: 8,
                                                      top: 4,
                                                      right: 5,
                                                      bottom: 1),
                                                  child: Text(
                                                      "lbl_north_indian".tr,
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12))
                                            ])),
                                        Container(
                                            margin: getMargin(left: 12),
                                            padding: getPadding(
                                                left: 3,
                                                top: 4,
                                                right: 3,
                                                bottom: 4),
                                            decoration: AppDecoration
                                                .outlineBlack90005
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse48,
                                                  height: getSize(36.00),
                                                  width: getSize(36.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          18.00))),
                                              Container(
                                                  width:
                                                      getHorizontalSize(35.00),
                                                  margin: getMargin(
                                                      left: 7,
                                                      top: 4,
                                                      right: 6,
                                                      bottom: 1),
                                                  child: Text(
                                                      "lbl_south_indian".tr,
                                                      maxLines: null,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12))
                                            ])),
                                        Container(
                                            margin: getMargin(left: 20),
                                            padding: getPadding(
                                                left: 3,
                                                top: 4,
                                                right: 3,
                                                bottom: 4),
                                            decoration: AppDecoration
                                                .outlineBlack90005
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse47,
                                                      height: getSize(36.00),
                                                      width: getSize(36.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  18.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 6,
                                                          right: 2,
                                                          bottom: 15),
                                                      child: Text(
                                                          "lbl_chines".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12))
                                                ]))
                                      ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 9, top: 17, right: 29),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("msg_restaurants_near".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium20),
                                        Padding(
                                            padding:
                                                getPadding(top: 3, bottom: 7),
                                            child: Text("lbl_see_all".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular12))
                                      ])),
                              Container(
                                child:
                                    StreamBuilder<List<Map<String, dynamic>>>(
                                  stream: _tabStream2,
                                  builder: (context, snapshot) {
                                    if (!snapshot.hasData) {
                                      return Lottie.asset("assets2/featuredres.json");
                                    }
                                    final tab = snapshot.data!;
                                    return Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: SizedBox(
                                            height: 250,
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              itemCount: tab.length,
                                              scrollDirection: Axis.horizontal,
                                              //physics: NeverScrollableScrollPhysics(),
                                              itemBuilder: (context, index) {
                                                double avgRating = tab[index]
                                                        ['avg_stars']
                                                    .toDouble();
                                                return Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: SizedBox(
                                                    width: 200,
                                                    height: 1000,
                                                    child: GestureDetector(
                                                      onTap: () {onTapBottomReservationButton();
                                                      setState(() {
                                                        resId=tab[index]['id'];
                                                      });
                                                      shp().setresId(resId);},
                                                      child: Card(
                                                        color: Colors.white,
                                                        elevation: 5,
                                                        //--------------------------------Neeche ke do comment hata dio Card ka background hatane ke liya or Uppr ka comment
                                                        //kardio color and elevation kon
                                                        // color: Colors.transparent,
                                                        // elevation: 0,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40)),
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                5,
                                                                6.0,
                                                                5.0,
                                                                5.0),
                                                        child: ListTile(
                                                          title: Wrap(
                                                              children: [
                                                                Container(
                                                                  margin:
                                                                      getMargin(
                                                                    top: 10,
                                                                  ),
                                                                  child: Align(
                                                                    // alignment: Alignment.center,
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Row(
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child:
                                                                                SizedBox(
                                                                              height: 145,
                                                                              width: 157,
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(15),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(15),
                                                                                  child: Image.network(
                                                                                    tab[index]['rest_photo'],
                                                                                    fit: BoxFit.cover,
                                                                                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                                                                      if (loadingProgress == null) { return child;}
                                                                                      else{
                                                                                        return Lottie.asset('assets2/123408-image-not-preview.json');
                                                                                      }
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          )
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              0),
                                                                  child: Wrap(
                                                                      children: [
                                                                        Row(
                                                                          children: <
                                                                              Widget>[
                                                                            Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: SizedBox(
                                                                                width: 98,
                                                                                child: Text(
                                                                                  tab[index]['rest_name'],
                                                                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                Padding(
                                                                                  padding: getPadding(
                                                                                    top: 15,
                                                                                    bottom: 17,
                                                                                    left: 0,
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerRight,
                                                                                    child: RatingBar.builder(
                                                                                      initialRating: avgRating,
                                                                                      minRating: 1,
                                                                                      direction: Axis.horizontal,
                                                                                      allowHalfRating: true,
                                                                                      itemSize: getVerticalSize(
                                                                                        13.00,
                                                                                      ),
                                                                                      unratedColor: ColorConstant.gray400,
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
                                                                              ]),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Container(
                                                                          margin:
                                                                              getMargin(top: 0),
                                                                          child:
                                                                              Row(
                                                                            children: <Widget>[
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: SizedBox(
                                                                                  width: 10,
                                                                                  child: Icon(
                                                                                    Icons.percent_sharp,
                                                                                    color: Colors.orangeAccent,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                margin: getMargin(
                                                                                  left: 15,
                                                                                ),
                                                                                child: Row(
                                                                                  children: [
                                                                                    Text(tab[index]['rest_discount_pecentage'].toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.only(left: 8),
                                                                                      child: Text("OFF", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ]),
                                                                ),
                                                              ]),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                  padding: getPadding(left: 7, top: 19),
                                  child: Text("msg_featured_restaurants".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium20)),
                              Container(
                                child:
                                    StreamBuilder<List<Map<String, dynamic>>>(
                                  stream: _tabStream,
                                  builder: (context, snapshot) {
                                    if (!snapshot.hasData) {
                                      return Lottie.asset("assets2/featuredres.json");
                                    }
                                    final tab = snapshot.data!;

                                    return ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: tab.length,
                                      itemBuilder: (context, index) {
                                        double avgRating =
                                            tab[index]['avg_stars'].toDouble();
                                        return Align(
                                          alignment: Alignment.bottomLeft,
                                          child: SizedBox(
                                            width: 760,
                                            height: 275,
                                            child: GestureDetector(
                                              onTap: () {onTapBottomReservationButton();
                                              setState(() {
                                                resId=tab[index]['id'];
                                              });
                                              shp().setresId(resId);},
                                              child: Card(
                                                color: Colors.white,
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18)),
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 6.0, 10.0, 5.0),
                                                child: ListTile(
                                                  title: Wrap(children: [
                                                    Container(
                                                      margin: getMargin(
                                                        top: 10,
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Row(
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: SizedBox(
                                                                height: 130,
                                                                width: 370,
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15),
                                                                  child: Image
                                                                      .network(
                                                                    tab[index][
                                                                        'rest_photo'],
                                                                    fit: BoxFit
                                                                        .cover,
                                                                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                                                      if (loadingProgress == null) { return child;}
                                                                      else{
                                                                        return Lottie.asset('assets2/123408-image-not-preview.json');
                                                                      }
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: getMargin(top: 5),
                                                      child: Wrap(children: [
                                                        Row(
                                                          children: <Widget>[
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: SizedBox(
                                                                width: 188,
                                                                child: Text(
                                                                  tab[index][
                                                                      'rest_name'],
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              15,
                                                                          bottom:
                                                                              20,
                                                                          left: 95 -
                                                                              19),
                                                                      child:
                                                                          Align(
                                                                        alignment:
                                                                            Alignment.centerRight,
                                                                        child: RatingBar
                                                                            .builder(
                                                                          initialRating:
                                                                              avgRating,
                                                                          minRating:
                                                                              1,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          allowHalfRating:
                                                                              true,
                                                                          itemSize:
                                                                              getVerticalSize(
                                                                            20.00,
                                                                          ),
                                                                          unratedColor:
                                                                              ColorConstant.gray400,
                                                                          itemCount:
                                                                              5,
                                                                          updateOnDrag:
                                                                              true,
                                                                          onRatingUpdate:
                                                                              (rating) {},
                                                                          itemBuilder:
                                                                              (context, _) {
                                                                            return Icon(
                                                                              Icons.star,
                                                                              color: ColorConstant.amber500,
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ]),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          margin:
                                                              getMargin(top: 1),
                                                          child: Row(
                                                            children: <Widget>[
                                                              Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: SizedBox(
                                                                  width: 345,
                                                                  child: Text(
                                                                    tab[index][
                                                                        'rest_address'],
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              getMargin(top: 4),
                                                          child: Row(
                                                            children: <Widget>[
                                                              Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: SizedBox(
                                                                  width: 10,
                                                                  child: Icon(
                                                                    Icons
                                                                        .percent_sharp,
                                                                    color: Colors
                                                                        .orangeAccent,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            15),
                                                                child: Row(
                                                                  children: [
                                                                    Text(
                                                                        tab[index]['rest_discount_pecentage']
                                                                            .toString(),
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                20,
                                                                            fontWeight:
                                                                                FontWeight.bold)),
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              8),
                                                                      child: Text(
                                                                          "OFF",
                                                                          style: TextStyle(
                                                                              fontSize: 20,
                                                                              fontWeight: FontWeight.bold)),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ]),
                                                    ),
                                                  ]),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ])))),
            drawer: buildDrawer(),
            bottomNavigationBar: Container(
              margin: getMargin(left: 14,bottom: 15,right: 15),
              padding: EdgeInsets.only(left: 10,right: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15.0, // soften the shadow
                      spreadRadius: 2.0, //extend the shadow
                      offset: Offset(
                        1.0, // Move to right 5  horizontally
                        4.0, // Move to bottom 5 Vertically
                      ),
                    ),
                  ]
              ),
              child: SizedBox(
                height: 88,
                child: GNav(
                  duration: Duration(milliseconds: 400),
                  tabBackgroundColor: Colors.deepOrangeAccent.shade100,
                  activeColor: Colors.white,
                  selectedIndex: _currentIndex,
                  haptic: true,
                  // backgroundColor: Colors.transparent,
                  tabs: [
                    GButton(
                      gap: 8,
                      icon: Icons.home,
                      text: "Home",

                      onPressed: () {
                        onTapBottomHomeButton();
                      },
                    ),
                    GButton(
                      gap: 8,
                      icon: Icons.search,
                      text: "Search",
                      onPressed: () {
                        onTapBottomSearchButton();
                      },
                    ),
                    GButton(
                      gap: 8,
                      icon: Icons.access_time,
                      text: "Pre-Order",
                      onPressed: () =>  onTapBottomPre_OrderButton() ,
                    ),
                    // GButton(
                    //     gap: 8,
                    //     icon: Icons.bookmark_border,
                    //     text: "Reservation",
                    //     onPressed: () {
                    //       onTapBottomReservationButton();
                    //     }),
                  ],
                ),
              ),
            ),
        )
    );
  }

  Widget buildDrawer() => DrawerWidget(
        onSelectedItem: (item) {
          switch (item) {
            case DrawerItems.Info:
              return onTapInfo();
            case DrawerItems.profile:
              return onTapProfile();
            case DrawerItems.Pre_Order:
              return onTapBottomPre_OrderButton();
            case DrawerItems.Offers:
              return onTapOffersandPromo();
            case DrawerItems.reservation:
              return onTapBottomReservationButton();
            case DrawerItems.Logout:
              return onTaplogout();
          }
        },
      );
  onTapProfileIcon1() {
    Get.toNamed(AppRoutes.profileSettingScreen);
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

  onTapProfileIcon() {
    Get.toNamed(AppRoutes.profileSettingScreen);
  }

  onTapInfo() {
    Get.toNamed(AppRoutes.aboutUsScreen);
  }

  onTapProfile() {
    Get.toNamed(AppRoutes.profileSettingScreen);
  }

  onTapOffersandPromo() {
    Get.toNamed(AppRoutes.promoScreen);
  }

  onTaplogout() {
    SupabaseCredential.supabaseClient.auth.signOut();
    Navigator.pushReplacementNamed(context, AppRoutes.signinScreen);
  }
}

// class ExploreScreen extends GetWidget<ExploreController> {
//   int _currentIndex=1;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         top: false,
//         bottom: false,
//         child: Scaffold(
//             resizeToAvoidBottomInset: false,
//             backgroundColor: ColorConstant.whiteA700,
//             appBar: AppBar(
//                 backgroundColor: Colors.white,
//                 elevation: 0,
//                 centerTitle: true,
//                 leading: Builder(
//                   builder: (BuildContext context) {
//                     return IconButton(
//                       icon: const Icon(
//                         Icons.menu_rounded,
//                         color: Colors.black,
//                         size: 50, // Changing Drawer Icon Size
//                       ),
//                       onPressed: () {
//                         Scaffold.of(context).openDrawer();
//                       },
//                       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//
//                     );
//                   },
//                 ),
//                 title: AppbarDropdown(
//                     hintText: "lbl_delhi".tr,
//                     margin: getMargin(top: 10),
//                     items: controller.exploreModelObj.value.dropdownItemList,
//                     onTap: (value) {
//                       controller.onSelected(value);
//                     }
//                 ),
//                 actions: [
//                   AppbarStack(
//                       margin: getMargin(left: 20, right: 20,top: 12),
//                       onTap: onTapProfileIcon
//                   )
//                 ]
//             ),
//             body: SizedBox(
//                 width: size.width,
//                 child: SingleChildScrollView(
//                     child: Padding(
//                         padding: getPadding(left: 11, top: 10),
//                         child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Container(
//                                   height: getVerticalSize(30.00),
//                                   width: getHorizontalSize(351.00),
//                                   margin: getMargin(left: 7),
//                                   child: Stack(
//                                       alignment: Alignment.center,
//                                       children: [
//                                         Align(
//                                             alignment: Alignment.center,
//                                             child: Text(
//                                                 "msg_quickk_dine_fun".tr,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 textAlign: TextAlign.left,
//                                                 style: AppStyle
//                                                     .txtPoppinsMedium20)),
//                                         Align(
//                                             alignment: Alignment.center,
//                                             child: Text(
//                                                 "msg_quickk_dine_fun".tr,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 textAlign: TextAlign.left,
//                                                 style: AppStyle
//                                                     .txtPoppinsMedium20))
//                                       ])),
//                               CustomSearchView(
//                                   width: 343,
//                                   focusNode: FocusNode(),
//                                   controller: controller.searchButtonController,
//                                   hintText: "msg_search_for_restaurants".tr,
//                                   margin: getMargin(top: 22),
//                                   alignment: Alignment.center,
//                                   prefix: Container(
//                                       margin: getMargin(
//                                           left: 18,
//                                           top: 12,
//                                           right: 22,
//                                           bottom: 13),
//                                       child: CustomImageView(
//                                           svgPath: ImageConstant.imgSearch)),
//                                   prefixConstraints: BoxConstraints(
//                                       maxHeight: getVerticalSize(40.00))),
//                               Padding(
//                                   padding:
//                                       getPadding(left: 3, top: 23, right: 25),
//                                   child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text("lbl_categories".tr,
//                                             overflow: TextOverflow.ellipsis,
//                                             textAlign: TextAlign.left,
//                                             style: AppStyle.txtPoppinsMedium20),
//                                         Padding(
//                                             padding:
//                                                 getPadding(top: 4, bottom: 6),
//                                             child: Text("lbl_see_all".tr,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 textAlign: TextAlign.left,
//                                                 style: AppStyle
//                                                     .txtPoppinsRegular12))
//                                       ])),
//                               SingleChildScrollView(
//                                   scrollDirection: Axis.horizontal,
//                                   padding: getPadding(top: 6),
//                                   child: IntrinsicWidth(
//                                       child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.center,
//                                           children: [
//                                         Container(
//                                             padding: getPadding(
//                                                 left: 3,
//                                                 top: 4,
//                                                 right: 3,
//                                                 bottom: 4),
//                                             decoration: AppDecoration
//                                                 .outlineWhiteA7001
//                                                 .copyWith(
//                                                     borderRadius:
//                                                         BorderRadiusStyle
//                                                             .roundedBorder10),
//                                             child: Row(children: [
//                                               CustomImageView(
//                                                   imagePath: ImageConstant
//                                                       .imgEllipse44,
//                                                   height: getSize(36.00),
//                                                   width: getSize(36.00),
//                                                   radius: BorderRadius.circular(
//                                                       getHorizontalSize(
//                                                           18.00))),
//                                               Padding(
//                                                   padding: getPadding(
//                                                       left: 9,
//                                                       top: 6,
//                                                       right: 23,
//                                                       bottom: 6),
//                                                   child: Text("lbl_all".tr,
//                                                       overflow:
//                                                           TextOverflow.ellipsis,
//                                                       textAlign: TextAlign.left,
//                                                       style: AppStyle
//                                                           .txtPoppinsRegular15))
//                                             ])),
//                                         Container(
//                                             margin: getMargin(left: 16),
//                                             padding: getPadding(
//                                                 left: 3,
//                                                 top: 4,
//                                                 right: 3,
//                                                 bottom: 4),
//                                             decoration: AppDecoration
//                                                 .outlineBlack90005
//                                                 .copyWith(
//                                                     borderRadius:
//                                                         BorderRadiusStyle
//                                                             .roundedBorder10),
//                                             child: Row(children: [
//                                               CustomImageView(
//                                                   imagePath: ImageConstant
//                                                       .imgEllipse45,
//                                                   height: getSize(36.00),
//                                                   width: getSize(36.00),
//                                                   radius: BorderRadius.circular(
//                                                       getHorizontalSize(
//                                                           18.00))),
//                                               Container(
//                                                   width:
//                                                       getHorizontalSize(35.00),
//                                                   margin: getMargin(
//                                                       left: 8,
//                                                       top: 4,
//                                                       right: 5,
//                                                       bottom: 1),
//                                                   child: Text(
//                                                       "lbl_north_indian".tr,
//                                                       maxLines: null,
//                                                       textAlign:
//                                                           TextAlign.center,
//                                                       style: AppStyle
//                                                           .txtPoppinsRegular12))
//                                             ])),
//                                         Container(
//                                             margin: getMargin(left: 12),
//                                             padding: getPadding(
//                                                 left: 3,
//                                                 top: 4,
//                                                 right: 3,
//                                                 bottom: 4),
//                                             decoration: AppDecoration
//                                                 .outlineBlack90005
//                                                 .copyWith(
//                                                     borderRadius:
//                                                         BorderRadiusStyle
//                                                             .roundedBorder10),
//                                             child: Row(children: [
//                                               CustomImageView(
//                                                   imagePath: ImageConstant
//                                                       .imgEllipse48,
//                                                   height: getSize(36.00),
//                                                   width: getSize(36.00),
//                                                   radius: BorderRadius.circular(
//                                                       getHorizontalSize(
//                                                           18.00))),
//                                               Container(
//                                                   width:
//                                                       getHorizontalSize(35.00),
//                                                   margin: getMargin(
//                                                       left: 7,
//                                                       top: 4,
//                                                       right: 6,
//                                                       bottom: 1),
//                                                   child: Text(
//                                                       "lbl_south_indian".tr,
//                                                       maxLines: null,
//                                                       textAlign:
//                                                           TextAlign.center,
//                                                       style: AppStyle
//                                                           .txtPoppinsRegular12))
//                                             ])),
//                                         Container(
//                                             margin: getMargin(left: 20),
//                                             padding: getPadding(
//                                                 left: 3,
//                                                 top: 4,
//                                                 right: 3,
//                                                 bottom: 4),
//                                             decoration: AppDecoration
//                                                 .outlineBlack90005
//                                                 .copyWith(
//                                                     borderRadius:
//                                                         BorderRadiusStyle
//                                                             .roundedBorder10),
//                                             child: Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.center,
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 children: [
//                                                   CustomImageView(
//                                                       imagePath: ImageConstant
//                                                           .imgEllipse47,
//                                                       height: getSize(36.00),
//                                                       width: getSize(36.00),
//                                                       radius:
//                                                           BorderRadius.circular(
//                                                               getHorizontalSize(
//                                                                   18.00))),
//                                                   Padding(
//                                                       padding: getPadding(
//                                                           left: 1,
//                                                           top: 6,
//                                                           right: 2,
//                                                           bottom: 15),
//                                                       child: Text(
//                                                           "lbl_chines".tr,
//                                                           overflow: TextOverflow
//                                                               .ellipsis,
//                                                           textAlign:
//                                                               TextAlign.center,
//                                                           style: AppStyle
//                                                               .txtPoppinsRegular12))
//                                                 ]))
//                                       ]))),
//                               Padding(
//                                   padding:
//                                       getPadding(left: 9, top: 17, right: 29),
//                                   child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text("msg_restaurants_near".tr,
//                                             overflow: TextOverflow.ellipsis,
//                                             textAlign: TextAlign.left,
//                                             style: AppStyle.txtPoppinsMedium20),
//                                         Padding(
//                                             padding:
//                                                 getPadding(top: 3, bottom: 7),
//                                             child: Text("lbl_see_all".tr,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 textAlign: TextAlign.left,
//                                                 style: AppStyle
//                                                     .txtPoppinsRegular12))
//                                       ])),
//                               Align(
//                                   alignment: Alignment.centerRight,
//                                   child: Container(
//                                       height: getVerticalSize(180.00),
//                                       child: Obx(() => ListView.separated(
//                                           padding: getPadding(top: 6),
//                                           scrollDirection: Axis.horizontal,
//                                           physics: BouncingScrollPhysics(),
//                                           separatorBuilder: (context, index) {
//                                             return SizedBox(
//                                                 height: getVerticalSize(11.00));
//                                           },
//                                           itemCount: controller
//                                               .exploreModelObj
//                                               .value
//                                               .restaurantnear1ItemList
//                                               .length,
//                                           itemBuilder: (context, index) {
//                                             Restaurantnear1ItemModel model =
//                                                 controller.exploreModelObj.value
//                                                         .restaurantnear1ItemList[
//                                                     index];
//                                             return Restaurantnear1ItemWidget(
//                                                 model);
//                                           })))),
//                               Padding(
//                                   padding: getPadding(left: 7, top: 19),
//                                   child: Text("msg_featured_restaurants".tr,
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.txtPoppinsMedium20)),
//                               CustomImageView(
//                                   imagePath: ImageConstant.imgRectangle13,
//                                   height: getVerticalSize(154.00),
//                                   width: getHorizontalSize(340.00),
//                                   radius: BorderRadius.circular(
//                                       getHorizontalSize(5.00)),
//                                   margin: getMargin(left: 7, top: 12)),
//                               Align(
//                                   alignment: Alignment.center,
//                                   child: Padding(
//                                       padding: getPadding(
//                                           left: 8, top: 1, right: 22),
//                                       child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Container(
//                                                 height: getVerticalSize(65.00),
//                                                 width:
//                                                     getHorizontalSize(270.00),
//                                                 child: Stack(
//                                                     alignment:
//                                                         Alignment.bottomLeft,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .bottomLeft,
//                                                           child: Row(children: [
//                                                             Card(
//                                                                 clipBehavior: Clip
//                                                                     .antiAlias,
//                                                                 elevation: 0,
//                                                                 margin:
//                                                                     getMargin(
//                                                                         top: 3,
//                                                                         bottom:
//                                                                             2),
//                                                                 color:
//                                                                     ColorConstant
//                                                                         .amber500,
//                                                                 shape: RoundedRectangleBorder(
//                                                                     borderRadius:
//                                                                         BorderRadiusStyle
//                                                                             .roundedBorder10),
//                                                                 child:
//                                                                     Container(
//                                                                         height: getVerticalSize(
//                                                                             16.00),
//                                                                         width: getHorizontalSize(
//                                                                             17.00),
//                                                                         padding: getPadding(
//                                                                             left:
//                                                                                 5,
//                                                                             top:
//                                                                                 4,
//                                                                             right:
//                                                                                 5,
//                                                                             bottom:
//                                                                                 4),
//                                                                         decoration: AppDecoration
//                                                                             .fillAmber500
//                                                                             .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
//                                                                         child: Stack(children: [
//                                                                           CustomImageView(
//                                                                               svgPath: ImageConstant.imgAirplane,
//                                                                               height: getSize(6.00),
//                                                                               width: getSize(6.00),
//                                                                               alignment: Alignment.center)
//                                                                         ]))),
//                                                             Text(
//                                                                 "lbl_flat_30_off"
//                                                                     .tr,
//                                                                 overflow:
//                                                                     TextOverflow
//                                                                         .ellipsis,
//                                                                 textAlign:
//                                                                     TextAlign
//                                                                         .left,
//                                                                 style: AppStyle
//                                                                     .txtPoppinsMedium15Red500)
//                                                           ])),
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .bottomLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 3,
//                                                                       bottom:
//                                                                           19),
//                                                               child: Text(
//                                                                   "msg_pragati_vihar_new"
//                                                                       .tr,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsRegular12Black900d1))),
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .topCenter,
//                                                           child: Text(
//                                                               "msg_baluchi_indian"
//                                                                   .tr,
//                                                               overflow:
//                                                                   TextOverflow
//                                                                       .ellipsis,
//                                                               textAlign:
//                                                                   TextAlign
//                                                                       .left,
//                                                               style: AppStyle
//                                                                   .txtPoppinsMedium20))
//                                                     ])),
//                                             Padding(
//                                                 padding: getPadding(
//                                                     top: 8, bottom: 39),
//                                                 child: RatingBar.builder(
//                                                     initialRating: 4,
//                                                     minRating: 0,
//                                                     direction: Axis.horizontal,
//                                                     allowHalfRating: false,
//                                                     itemSize:
//                                                         getVerticalSize(17.00),
//                                                     unratedColor:
//                                                         ColorConstant.amber500,
//                                                     itemCount: 4,
//                                                     updateOnDrag: true,
//                                                     onRatingUpdate: (rating) {},
//                                                     itemBuilder: (context, _) {
//                                                       return Icon(Icons.star,
//                                                           color: ColorConstant
//                                                               .amber500);
//                                                     }))
//                                           ]))),
//                               CustomImageView(
//                                   imagePath: ImageConstant.imgRectangle13,
//                                   height: getVerticalSize(154.00),
//                                   width: getHorizontalSize(340.00),
//                                   radius: BorderRadius.circular(
//                                       getHorizontalSize(5.00)),
//                                   margin: getMargin(left: 12, top: 11)),
//                               Align(
//                                   alignment: Alignment.center,
//                                   child: Padding(
//                                       padding: getPadding(
//                                           left: 14, top: 5, right: 17),
//                                       child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             Text("msg_baluchi_indian".tr,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 textAlign: TextAlign.center,
//                                                 style: AppStyle
//                                                     .txtPoppinsMedium20),
//                                             Padding(
//                                                 padding: getPadding(
//                                                     top: 5, bottom: 2),
//                                                 child: RatingBar.builder(
//                                                     initialRating: 4,
//                                                     minRating: 0,
//                                                     direction: Axis.horizontal,
//                                                     allowHalfRating: false,
//                                                     itemSize:
//                                                         getVerticalSize(17.00),
//                                                     unratedColor:
//                                                         ColorConstant.amber500,
//                                                     itemCount: 4,
//                                                     updateOnDrag: true,
//                                                     onRatingUpdate: (rating) {},
//                                                     itemBuilder: (context, _) {
//                                                       return Icon(Icons.star,
//                                                           color: ColorConstant
//                                                               .amber500);
//                                                     }))
//                                           ]))),
//                               Padding(
//                                   padding: getPadding(left: 16),
//                                   child: Text("msg_pragati_vihar_new".tr,
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle
//                                           .txtPoppinsRegular12Black900d1)),
//                               Container(
//                                   height: getVerticalSize(19.00),
//                                   width: getHorizontalSize(109.00),
//                                   margin: getMargin(left: 13, top: 1),
//                                   child: Stack(
//                                       alignment: Alignment.centerLeft,
//                                       children: [
//                                         Align(
//                                             alignment: Alignment.centerRight,
//                                             child: Text("lbl_flat_30_off".tr,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 textAlign: TextAlign.center,
//                                                 style: AppStyle
//                                                     .txtPoppinsMedium15Red500)),
//                                         Align(
//                                             alignment: Alignment.centerLeft,
//                                             child: Card(
//                                                 clipBehavior: Clip.antiAlias,
//                                                 elevation: 0,
//                                                 margin: EdgeInsets.all(0),
//                                                 color: ColorConstant.amber500,
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadiusStyle
//                                                             .roundedBorder10),
//                                                 child: Container(
//                                                     height:
//                                                         getVerticalSize(16.00),
//                                                     width: getHorizontalSize(
//                                                         17.00),
//                                                     padding: getPadding(
//                                                         left: 5,
//                                                         top: 4,
//                                                         right: 5,
//                                                         bottom: 4),
//                                                     decoration: AppDecoration
//                                                         .fillAmber500
//                                                         .copyWith(
//                                                             borderRadius:
//                                                                 BorderRadiusStyle
//                                                                     .roundedBorder10),
//                                                     child: Stack(children: [
//                                                       CustomImageView(
//                                                           svgPath: ImageConstant
//                                                               .imgAirplane,
//                                                           height: getSize(6.00),
//                                                           width: getSize(6.00),
//                                                           alignment:
//                                                               Alignment.center)
//                                                     ]))))
//                                       ])),
//                               CustomImageView(
//                                   imagePath: ImageConstant.imgRectangle13,
//                                   height: getVerticalSize(154.00),
//                                   width: getHorizontalSize(340.00),
//                                   radius: BorderRadius.circular(
//                                       getHorizontalSize(5.00)),
//                                   margin: getMargin(left: 17, top: 13)),
//                               Align(
//                                   alignment: Alignment.center,
//                                   child: Padding(
//                                       padding: getPadding(
//                                           left: 19, top: 5, right: 12),
//                                       child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             Text("msg_baluchi_indian".tr,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 textAlign: TextAlign.center,
//                                                 style: AppStyle
//                                                     .txtPoppinsMedium20),
//                                             Padding(
//                                                 padding: getPadding(
//                                                     top: 5, bottom: 2),
//                                                 child: RatingBar.builder(
//                                                     initialRating: 4,
//                                                     minRating: 0,
//                                                     direction: Axis.horizontal,
//                                                     allowHalfRating: false,
//                                                     itemSize:
//                                                         getVerticalSize(17.00),
//                                                     unratedColor:
//                                                         ColorConstant.amber500,
//                                                     itemCount: 4,
//                                                     updateOnDrag: true,
//                                                     onRatingUpdate: (rating) {},
//                                                     itemBuilder: (context, _) {
//                                                       return Icon(Icons.star,
//                                                           color: ColorConstant
//                                                               .amber500);
//                                                     }))
//                                           ]))),
//                               Padding(
//                                   padding: getPadding(left: 21),
//                                   child: Text("msg_pragati_vihar_new".tr,
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle
//                                           .txtPoppinsRegular12Black900d1)),
//                               Container(
//                                   height: getVerticalSize(19.00),
//                                   width: getHorizontalSize(109.00),
//                                   margin: getMargin(left: 18, top: 1),
//                                   child: Stack(
//                                       alignment: Alignment.centerLeft,
//                                       children: [
//                                         Align(
//                                             alignment: Alignment.centerRight,
//                                             child: Text("lbl_flat_30_off".tr,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 textAlign: TextAlign.center,
//                                                 style: AppStyle
//                                                     .txtPoppinsMedium15Red500)),
//                                         Align(
//                                             alignment: Alignment.centerLeft,
//                                             child: Card(
//                                                 clipBehavior: Clip.antiAlias,
//                                                 elevation: 0,
//                                                 margin: EdgeInsets.all(0),
//                                                 color: ColorConstant.amber500,
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadiusStyle
//                                                             .roundedBorder10),
//                                                 child: Container(
//                                                     height:
//                                                         getVerticalSize(16.00),
//                                                     width: getHorizontalSize(
//                                                         17.00),
//                                                     padding: getPadding(
//                                                         left: 5,
//                                                         top: 4,
//                                                         right: 5,
//                                                         bottom: 4),
//                                                     decoration: AppDecoration
//                                                         .fillAmber500
//                                                         .copyWith(
//                                                             borderRadius:
//                                                                 BorderRadiusStyle
//                                                                     .roundedBorder10),
//                                                     child: Stack(children: [
//                                                       CustomImageView(
//                                                           svgPath: ImageConstant
//                                                               .imgAirplane,
//                                                           height: getSize(6.00),
//                                                           width: getSize(6.00),
//                                                           alignment:
//                                                               Alignment.center)
//                                                     ]))))
//                                       ])),
//                               CustomImageView(
//                                   imagePath: ImageConstant.imgRectangle13,
//                                   height: getVerticalSize(154.00),
//                                   width: getHorizontalSize(340.00),
//                                   radius: BorderRadius.circular(
//                                       getHorizontalSize(5.00)),
//                                   margin: getMargin(left: 22, top: 13)),
//                               Align(
//                                   alignment: Alignment.centerRight,
//                                   child: Padding(
//                                       padding: getPadding(
//                                           left: 24, top: 5, right: 7),
//                                       child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceBetween,
//                                           children: [
//                                             Text("msg_baluchi_indian".tr,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 textAlign: TextAlign.center,
//                                                 style: AppStyle
//                                                     .txtPoppinsMedium20),
//                                             Padding(
//                                                 padding: getPadding(
//                                                     top: 5, bottom: 2),
//                                                 child: RatingBar.builder(
//                                                     initialRating: 4,
//                                                     minRating: 0,
//                                                     direction: Axis.horizontal,
//                                                     allowHalfRating: false,
//                                                     itemSize:
//                                                         getVerticalSize(17.00),
//                                                     unratedColor:
//                                                         ColorConstant.amber500,
//                                                     itemCount: 4,
//                                                     updateOnDrag: true,
//                                                     onRatingUpdate: (rating) {},
//                                                     itemBuilder: (context, _) {
//                                                       return Icon(Icons.star,
//                                                           color: ColorConstant
//                                                               .amber500);
//                                                     }))
//                                           ]))),
//                               Padding(
//                                   padding: getPadding(left: 26),
//                                   child: Text("msg_pragati_vihar_new".tr,
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle
//                                           .txtPoppinsRegular12Black900d1)),
//                               Container(
//                                   height: getVerticalSize(19.00),
//                                   width: getHorizontalSize(109.00),
//                                   margin: getMargin(left: 23, top: 1),
//                                   child: Stack(
//                                       alignment: Alignment.centerLeft,
//                                       children: [
//                                         Align(
//                                             alignment: Alignment.centerRight,
//                                             child: Text("lbl_flat_30_off".tr,
//                                                 overflow: TextOverflow.ellipsis,
//                                                 textAlign: TextAlign.center,
//                                                 style: AppStyle
//                                                     .txtPoppinsMedium15Red500)),
//                                         Align(
//                                             alignment: Alignment.centerLeft,
//                                             child: Card(
//                                                 clipBehavior: Clip.antiAlias,
//                                                 elevation: 0,
//                                                 margin: EdgeInsets.all(0),
//                                                 color: ColorConstant.amber500,
//                                                 shape: RoundedRectangleBorder(
//                                                     borderRadius:
//                                                         BorderRadiusStyle
//                                                             .roundedBorder10),
//                                                 child: Container(
//                                                     height:
//                                                         getVerticalSize(16.00),
//                                                     width: getHorizontalSize(
//                                                         17.00),
//                                                     padding: getPadding(
//                                                         left: 5,
//                                                         top: 4,
//                                                         right: 5,
//                                                         bottom: 4),
//                                                     decoration: AppDecoration
//                                                         .fillAmber500
//                                                         .copyWith(
//                                                             borderRadius:
//                                                                 BorderRadiusStyle
//                                                                     .roundedBorder10),
//                                                     child: Stack(children: [
//                                                       CustomImageView(
//                                                           svgPath: ImageConstant
//                                                               .imgAirplane,
//                                                           height: getSize(6.00),
//                                                           width: getSize(6.00),
//                                                           alignment:
//                                                               Alignment.center)
//                                                     ]))))
//                                       ]))
//                             ])))),
//             drawer: buildDrawer(),
//             bottomNavigationBar:
//             SizedBox(height: 90.50, width: 10,
//               child: GNav(
//                 duration: Duration(milliseconds: 400),
//                 tabBackgroundColor: Colors.deepOrangeAccent.shade100,
//                 activeColor: Colors.white,
//                 selectedIndex: _currentIndex,
//                 tabs: [
//                   GButton(
//                     gap: 8,
//                     icon: Icons.home,
//                     text: "Home",
//                     onPressed: (){onTapBottomHomeButton();
//                       },
//                   ),
//                   GButton(
//                     gap: 8,
//                     icon: Icons.search,
//                     text: "Search",
//                     onPressed: ()=>onTapBottomSearchButton(),
//                   ),
//                   GButton(
//                     gap: 8,
//                     icon: Icons.access_time,
//                     text: "Pre-Order",
//                   ),
//                   GButton(
//                     gap: 8,
//                     icon: Icons.bookmark_border,
//                     text: "Reservation",
//                     onPressed: (){onTapBottomReservationButton();}),
//                 ],
//               ),)
//         )
//     );
//   }
//   Widget buildDrawer()=> DrawerWidget(
//     onSelectedItem: (item) {
//       switch(item){
//         case DrawerItems.Info:
//           return onTapInfo();
//         case DrawerItems.profile:
//           return onTapProfile();
//         case DrawerItems.Pre_Order:
//           return onTapPreOrder();
//         case DrawerItems.Offers:
//           return onTapOffersandPromo();
//         case DrawerItems.Logout:
//           return onTaplogout();
//
//       }
//     },
//   );
//   onTapProfileIcon1() {
//     Get.toNamed(AppRoutes.profileSettingScreen);
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
//   onTapProfileIcon() {
//     Get.toNamed(AppRoutes.profileSettingScreen);
//   }
//
//   onTapInfo() {
//     Get.toNamed(AppRoutes.aboutUsScreen);
//   }
//   onTapProfile() {
//     Get.toNamed(AppRoutes.profileSettingScreen);
//   }
//   onTapPreOrder() {
//     Get.toNamed(AppRoutes.exploreScreen);
//   }
//   onTapOffersandPromo() {
//     Get.toNamed(AppRoutes.promoScreen);
//   }
//   onTaplogout() {}
// }
