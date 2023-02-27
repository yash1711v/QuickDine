import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:quickdine/Authentication/supabasecredential.dart';
import 'package:quickdine/Database/DatabaseServices.dart';
import 'package:quickdine/preferences/shp.dart';
import 'package:quickdine/presentation/DrawerWidget/DrawerItem.dart';
import 'package:quickdine/presentation/DrawerWidget/DrawerItemModelClass.dart';
import 'package:quickdine/presentation/explore_screen/explore_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../UserModel/SupabaseUser.dart';
import '../../UserModel/usermodel.dart';
import '../DrawerWidget/DrawerWidget.dart';
import '../home_screen/widgets/listrectanglefiftyfive_item_widget.dart';
import '../home_screen/widgets/restaurantnear_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/listrectanglefiftyfive_item_model.dart';
import 'models/restaurantnear_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/app_bar/appbar_dropdown.dart';
import 'package:quickdine/widgets/app_bar/appbar_image.dart';
import 'package:quickdine/widgets/app_bar/appbar_stack.dart';
import 'package:quickdine/widgets/app_bar/custom_app_bar.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:quickdine/widgets/custom_search_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  get controller => HomeController();
  String id = "";
  List? myList;
  List? resList;
  List<Map<String, dynamic>> userList = [];
  List<Map<String, dynamic>> RestaurantList = [];
  int i = 0;
  int R = 0;
  void initState() {
    super.initState();
    readData();
    checkidValue();
  }
  final _tabStream = Supabase.instance.client
      .from('restaurant')
      .stream(primaryKey: ['id']);

  checkidValue() async {
    String uid = await shp().getUid() ?? "";
    setState(() {
      id = uid;
    });
    print("----" + id + "---------");
  }

  Future<void> readData() async {
    var response =
        await Supabase.instance.client.from('user').select().execute();
    var response2=await Supabase.instance.client.from('restaurant').select().execute();
    setState(() {
      myList = response.data.toList();
      resList=response2.data.toList();
      print('//////////////////////');
      myList!.forEach((element) {
        userList.add(element);
        i++;
      });
      resList!.forEach((element) {
        RestaurantList.add(element);
        R++;
      });
     // print('//////////////////////');
print(R);
      // print('...............');
      // print(myList![1]);
      // print(myList![0]["id"]);
      // print('...............');
    });
    for (int j = 0; j < i; j++) {
      if (id == userList[j]['id']) {
        print("id is at : ");
        print(j);
        print(userList[j]['first_name']);
        shp().setFirstname(userList[j]['first_name']);
        shp().setLastName(userList[j]['last_name']);
        shp().setemail(userList[j]['email_Id']);
        shp().setPassword(userList[j]['Password']);
        //print(userList[j]['Password']);
        shp().setPhone(userList[j]['phone_no']);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    print(userList);
    //readData();
    //userList.toList(growable: true);
    return Scaffold(
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
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            title: AppbarDropdown(
                hintText: "lbl_delhi".tr,
                margin: getMargin(top: 10),
                items: controller.homeModelObj.value.dropdownItemList,
                onTap: (value) {
                  controller.onSelected(value);
                }),
            actions: [
              AppbarStack(
                  margin: getMargin(left: 20, right: 20, top: 12),
                  onTap: onTapProfileIcon)
            ]),
        body: Stack(
          children: [
            //buildDrawer(),
            buildPAge(),
          ],
        ),
        drawer: buildDrawer(),
        bottomNavigationBar: SizedBox(
          height: 90.50,
          width: 10,
          child: GNav(
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.deepOrangeAccent.shade100,
            activeColor: Colors.white,
            selectedIndex: _currentIndex,
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
                onPressed: () => onTapPreORder(),
              ),
              GButton(
                  gap: 8,
                  icon: Icons.bookmark_border,
                  text: "Reservation",
                  onPressed: () {
                    onTapBottomReservationButton();
                  }),
            ],
          ),
        ));
  }

  Widget buildDrawer() => DrawerWidget(
        onSelectedItem: (item) {
          switch (item) {
            case DrawerItems.Info:
              return onTapInfo();
            case DrawerItems.profile:
              return onTapProfile();
            case DrawerItems.Pre_Order:
              return onTapPreORder();
            case DrawerItems.Offers:
              return onTapOffersandPromo();
            case DrawerItems.Logout:
              return onTaplogout();
          }
        },
      );
  Widget buildPAge() {
    return Container(
      child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
              child: Padding(
                  padding: getPadding(left: 11, top: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 7),
                            child: Text("msg_quickk_dine_fun".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium20)),
                        CustomSearchView(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.searchButtonController,
                          hintText: "Search For Restaurant,Cousins",
                          //"msg_search_for_restaurants".tr,
                          margin: getMargin(top: 22),
                          alignment: Alignment.center,
                          prefix: Container(
                            margin: getMargin(
                                left: 18, top: 0, right: 22, bottom: 13),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search_rounded, size: 20),
                            ),
                          ),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40.00)),
                        ),
                        Padding(
                            padding: getPadding(left: 8, top: 20, right: 25),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_best_offers".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium20),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtSeeall();
                                      },
                                      child: Padding(
                                          padding:
                                              getPadding(top: 6, bottom: 4),
                                          child: Text("lbl_see_all".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12)))
                                ])),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: getVerticalSize(122.00),
                                child: Obx(() => ListView.separated(
                                    padding: getPadding(top: 5),
                                    scrollDirection: Axis.horizontal,
                                    physics: BouncingScrollPhysics(),
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(17.00));
                                    },
                                    itemCount: controller.homeModelObj.value
                                        .listrectanglefiftyfiveItemList.length,
                                    itemBuilder: (context, index) {
                                      ListrectanglefiftyfiveItemModel model =
                                          controller.homeModelObj.value
                                                  .listrectanglefiftyfiveItemList[
                                              index];
                                      return ListrectanglefiftyfiveItemWidget(
                                          model,
                                          onTapStackrectanglefiftyfive:
                                              onTapStackrectanglefiftyfive);
                                    })))),
                        Padding(
                            padding: getPadding(left: 9, top: 21, right: 29),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_restaurants_near".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium20),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtSeeallOne();
                                      },
                                      child: Padding(
                                          padding:
                                              getPadding(top: 3, bottom: 7),
                                          child: Text("lbl_see_all".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12)))
                                ])),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: getVerticalSize(180.00),
                                child: Obx(() => ListView.separated(
                                    padding: getPadding(top: 6),
                                    scrollDirection: Axis.horizontal,
                                    physics: BouncingScrollPhysics(),
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(11.00));
                                    },
                                    itemCount: controller.homeModelObj.value
                                        .restaurantnearItemList.length,
                                    itemBuilder: (context, index) {
                                      RestaurantnearItemModel model = controller
                                          .homeModelObj
                                          .value
                                          .restaurantnearItemList[index];
                                      return RestaurantnearItemWidget(model);
                                    }
                                    )
                                )
                            )
                        ),

                        Padding(
                            padding: getPadding(left: 7, top: 19),
                            child: Text("msg_featured_restaurants".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium20)),

                        Container(
                          child: StreamBuilder<List<Map<String, dynamic>>>(
                            stream: _tabStream,
                            builder: (context, snapshot) {
                              final tab = snapshot.data!;
                              return ListView.builder(
                                shrinkWrap: true,
                                itemCount: tab.length,
                                itemBuilder: (context, index) {
                                  return Align(
                                    alignment: Alignment.bottomLeft,
                                    child: SizedBox(
                                      width: 800,
                                      height: 270,
                                      child: Card(
                                        color: Colors.white,
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:BorderRadius.circular(18)
                                        ),
                                        margin: EdgeInsets.fromLTRB(0, 6.0, 10.0, 5.0),
                                        child: ListTile(

                                          title: Container(
                                            margin: getMargin(top: 130),
                                            child: Wrap(
                                              children: [
                                                Row(
                                                children:<Widget> [
                                                  Align(
                                                    alignment:Alignment.centerLeft,
                                                    child: SizedBox(
                                                      width: 200,
                                                      child: Text(
                                                        tab[index]['rest_name'],
                                                        style: TextStyle(fontSize: 15,
                                                        fontWeight: FontWeight.bold),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                      alignment:Alignment.center,
                                                    child: Stack(
                                                      alignment: Alignment.center,
                                                      children: [
                                                        Padding(
                                                        padding: getPadding(
                                                          top: 15,
                                                          bottom: 20,
                                                          left: 95-19
                                                        ),
                                                        child: Align(
                                                          alignment: Alignment.centerRight,
                                                          child: RatingBar.builder(
                                                            initialRating: tab[index]['avg_stars'] ,
                                                            minRating: 1,
                                                            direction: Axis.horizontal,
                                                            allowHalfRating: true,
                                                            itemSize: getVerticalSize(
                                                              20.00,
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
                                                  margin: getMargin(top: 5),
                                                  child: Row(
                                                    children: <Widget>[

                                                      Align(
                                                        alignment:Alignment.centerLeft,
                                                        child: SizedBox(
                                                          width: 350,
                                                          child: Text(  tab[index]['rest_address'],
                                                            style: TextStyle(fontSize: 12),),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: getMargin(top: 10),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Align(
                                                        alignment:Alignment.centerLeft,
                                                        child: SizedBox(
                                                          width: 10,
                                                          child: Icon(Icons.percent_sharp,
                                                          color: Colors.orangeAccent,),
                                                        ),
                                                      ),
                                                     Container(
                                                       margin: getMargin(left: 15),
                                                       child: Row(
                                                         children: [
                                                           Text(
                                                               tab[index]['rest_discount_pecentage'].toString(),
                                                               style: TextStyle(fontSize: 20,
                                                               fontWeight: FontWeight.bold)
                                                           ),

                                                           Padding(
                                                             padding: const EdgeInsets.only(left: 8),
                                                             child: Text(
                                                                 "OFF",
                                                                 style: TextStyle(fontSize: 20,
                                                                     fontWeight: FontWeight.bold)
                                                             ),
                                                           ),
                                                         ],
                                                       ),

                                                     )
                                                    ],
                                                  ),
                                                )
                                              ]
                                            ),
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
                        // Align(
                        //     alignment: Alignment.center,
                        //   child: ListView.builder(
                        //       itemBuilder: (context, index) {
                        //         RestaurantnearItemModel model = controller
                        //             .homeModelObj
                        //             .value
                        //             .restaurants[index];
                        //         return RestaurantnearItemWidget(model);
                        //       })
                        //   ),
                      ]
                  )
              )
          )
      ),
    );
  }

  onTapStackrectanglefiftyfive() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapTxtSeeall() {
    Get.toNamed(AppRoutes.promoScreen);
  }

  onTapTxtSeeallOne() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }

  onTapProfileIcon() {
    Get.toNamed(AppRoutes.profileSettingScreen);
  }

  onTapBottomSearchButton() async {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapBottomHomeButton() async {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapBottomPre_OrderButton() {
    // Get.toNamed(AppRoutes.);
  }
  onTapBottomReservationButton() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }

  onTapMenuIconButtonInTopAppBar() {
    Get.toNamed(AppRoutes.sidemenuScreen);
  }

  onTapInfo() {
    Get.toNamed(AppRoutes.aboutUsScreen);
  }

  onTapProfile() {
    Get.toNamed(AppRoutes.profileSettingScreen);
  }

  onTapPreORder() {
    Get.toNamed(AppRoutes.orderpreScreen);
  }

  onTapOffersandPromo() {
    Get.toNamed(AppRoutes.promoScreen);
  }

  onTaplogout() {
    SupabaseCredential.supabaseClient.auth.signOut();
    Navigator.pushReplacementNamed(context, AppRoutes.signinScreen);

    shp().setUid("");
  }
}

// class HomeScreen extends GetWidget<HomeController> {
//   int _currentIndex=0;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         top: false,
//         bottom: false,
//         child: Scaffold(
//             resizeToAvoidBottomInset: false,
//             backgroundColor: ColorConstant.whiteA700,
//              appBar: AppBar(
//                backgroundColor: Colors.white,
//                elevation: 0,
//                centerTitle: true,
//                  leading: Builder(
//                    builder: (BuildContext context) {
//                      return IconButton(
//                        icon: const Icon(
//                          Icons.menu_rounded,
//                          color: Colors.black,
//                          size: 50, // Changing Drawer Icon Size
//                        ),
//                        onPressed: () {
//                          Scaffold.of(context).openDrawer();
//                        },
//                        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
//
//                      );
//                    },
//                  ),
//                title: AppbarDropdown(
//                      hintText: "lbl_delhi".tr,
//                      margin: getMargin(top: 10),
//                      items: controller.homeModelObj.value.dropdownItemList,
//                      onTap: (value) {
//                        controller.onSelected(value);
//                      }
//                      ),
//                  actions: [
//                      AppbarStack(
//                          margin: getMargin(left: 20, right: 20,top: 12),
//                          onTap: onTapProfileIcon
//                      )
//                    ]
//              ),
//              //CustomAppBar(
//             //     height: getVerticalSize(50.00),
//             //     leadingWidth: 60,
//             //     // leading: AppbarImage(
//             //     //     height: getSize(24.00),
//             //     //     width: getSize(24.00),
//             //     //     svgPath: ImageConstant.imgMenu,
//             //     //     margin: getMargin(left: 18, top: 7, bottom: 0),
//             //     //   onTap: (){
//             //     //       onTapMenuIconButtonInTopAppBar();
//             //     //   },
//             //     // ),
//             //     centerTitle: true,
//             //     title: AppbarDropdown(
//             //         hintText: "lbl_delhi".tr,
//             //         margin: getMargin(top: 10),
//             //         items: controller.homeModelObj.value.dropdownItemList,
//             //         onTap: (value) {
//             //           controller.onSelected(value);
//             //         }),
//             //     actions: [
//             //       AppbarStack(
//             //           margin: getMargin(left: 20, right: 20,top: 5),
//             //           onTap: onTapProfileIcon
//             //       )
//             //     ]),
//             body: Stack(
//               children: [
//                 buildDrawer(),
//                 buildPAge(),
//               ],
//             ),
//           drawer: buildDrawer(),
//           bottomNavigationBar:  SizedBox(height: 90.50, width: 10,
//             child: GNav(
//               duration: Duration(milliseconds: 400),
//               tabBackgroundColor: Colors.deepOrangeAccent.shade100,
//               activeColor: Colors.white,
//               selectedIndex: _currentIndex,
//               tabs: [
//                 GButton(
//                   gap: 8,
//                   icon: Icons.home,
//                   text: "Home",
//                   onPressed: (){onTapBottomHomeButton();
//                   },
//                 ),
//                 GButton(
//                   gap: 8,
//                   icon: Icons.search,
//                   text: "Search",
//                   onPressed: (){onTapBottomSearchButton();},
//                 ),
//                 GButton(
//                   gap: 8,
//                   icon: Icons.access_time,
//                   text: "Pre-Order",),
//                 GButton(
//                     gap: 8,
//                     icon: Icons.bookmark_border,
//                     text: "Reservation",
//                     onPressed: (){onTapBottomReservationButton();}),
//               ],
//             ),)
//         ),
//     );
//   }
