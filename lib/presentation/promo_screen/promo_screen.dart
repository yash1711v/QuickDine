import 'package:google_nav_bar/google_nav_bar.dart';

import '../promo_screen/widgets/listrectanglefiftyfive3_item_widget.dart';
import '../promo_screen/widgets/listsaganratan_item_widget.dart';
import 'controller/promo_controller.dart';
import 'models/listrectanglefiftyfive3_item_model.dart';
import 'models/listsaganratan_item_model.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';

class PromoScreen extends StatefulWidget {
  const PromoScreen({Key? key}) : super(key: key);

  @override
  State<PromoScreen> createState() => _PromoScreenState();
}

class _PromoScreenState extends State<PromoScreen> {
  get controller => PromoController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
              child: Padding(
                padding: getPadding(
                  left: 11,
                  top: 44,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_promo_offers".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold20,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                        top: 18,
                      ),
                      child: Text(
                        "lbl_best_offers".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold20,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: getVerticalSize(
                          121.00,
                        ),
                        child: Obx(
                          () => ListView.separated(
                            padding: getPadding(
                              top: 4,
                            ),
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  17.00,
                                ),
                              );
                            },
                            itemCount: controller.promoModelObj.value
                                .listrectanglefiftyfive3ItemList.length,
                            itemBuilder: (context, index) {
                              Listrectanglefiftyfive3ItemModel model =
                                  controller.promoModelObj.value
                                      .listrectanglefiftyfive3ItemList[index];
                              return Listrectanglefiftyfive3ItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 10,
                      ),
                      child: Text(
                        "msg_top_restaurants".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold20,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 27,
                          top: 5,
                          right: 38,
                        ),
                        child: Obx(
                          () => ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  18.00,
                                ),
                              );
                            },
                            itemCount: controller.promoModelObj.value
                                .listsaganratanItemList.length,
                            itemBuilder: (context, index) {
                              ListsaganratanItemModel model = controller
                                  .promoModelObj
                                  .value
                                  .listsaganratanItemList[index];
                              return ListsaganratanItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 90.50,
            width: 10,
            child: GNav(
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.deepOrangeAccent.shade100,
              activeColor: Colors.white,
              tabs: [
                GButton(
                  gap: 8,
                  icon: Icons.home,
                  text: "Home",
                  onPressed: () => onTapBottomHomeButton(),
                ),
                GButton(
                  gap: 8,
                  icon: Icons.search,
                  text: "Search",
                  onPressed: () => onTapBottomSearchButton(),
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
                  onPressed: () => onTapBottomReservationButton(),
                ),
              ],
            ),
          )),
    );
  }

  onTapBottomSearchButton() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapBottomHomeButton() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapPreORder() {
    Get.toNamed(AppRoutes.orderpreScreen);
  }

  onTapBottomReservationButton() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }
}

// class PromoScreen extends GetWidget<PromoController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       bottom: false,
//       child: Scaffold(
//         backgroundColor: ColorConstant.whiteA700,
//         body: SizedBox(
//           width: size.width,
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: getPadding(
//                 left: 11,
//                 top: 44,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Align(
//                     alignment: Alignment.center,
//                     child: Text(
//                       "lbl_promo_offers".tr,
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: AppStyle.txtPoppinsSemiBold20,
//                     ),
//                   ),
//                   Padding(
//                     padding: getPadding(
//                       left: 4,
//                       top: 18,
//                     ),
//                     child: Text(
//                       "lbl_best_offers".tr,
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: AppStyle.txtPoppinsSemiBold20,
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Container(
//                       height: getVerticalSize(
//                         121.00,
//                       ),
//                       child: Obx(
//                         () => ListView.separated(
//                           padding: getPadding(
//                             top: 4,
//                           ),
//                           scrollDirection: Axis.horizontal,
//                           physics: BouncingScrollPhysics(),
//                           separatorBuilder: (context, index) {
//                             return SizedBox(
//                               height: getVerticalSize(
//                                 17.00,
//                               ),
//                             );
//                           },
//                           itemCount: controller.promoModelObj.value
//                               .listrectanglefiftyfive3ItemList.length,
//                           itemBuilder: (context, index) {
//                             Listrectanglefiftyfive3ItemModel model = controller
//                                 .promoModelObj
//                                 .value
//                                 .listrectanglefiftyfive3ItemList[index];
//                             return Listrectanglefiftyfive3ItemWidget(
//                               model,
//                             );
//                           },
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: getPadding(
//                       left: 1,
//                       top: 10,
//                     ),
//                     child: Text(
//                       "msg_top_restaurants".tr,
//                       overflow: TextOverflow.ellipsis,
//                       textAlign: TextAlign.left,
//                       style: AppStyle.txtPoppinsSemiBold20,
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.center,
//                     child: Padding(
//                       padding: getPadding(
//                         left: 27,
//                         top: 5,
//                         right: 38,
//                       ),
//                       child: Obx(
//                         () => ListView.separated(
//                           physics: NeverScrollableScrollPhysics(),
//                           shrinkWrap: true,
//                           separatorBuilder: (context, index) {
//                             return SizedBox(
//                               height: getVerticalSize(
//                                 18.00,
//                               ),
//                             );
//                           },
//                           itemCount: controller.promoModelObj.value
//                               .listsaganratanItemList.length,
//                           itemBuilder: (context, index) {
//                             ListsaganratanItemModel model = controller
//                                 .promoModelObj
//                                 .value
//                                 .listsaganratanItemList[index];
//                             return ListsaganratanItemWidget(
//                               model,
//                             );
//                           },
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//           bottomNavigationBar: SizedBox(height: 90.50, width: 10,
//             child: GNav(
//               duration: Duration(milliseconds: 400),
//               tabBackgroundColor: Colors.deepOrangeAccent.shade100,
//               activeColor: Colors.white,
//               tabs: [
//                 GButton(
//                   gap: 8,
//                   icon: Icons.home,
//                   text: "Home",
//                   onPressed: ()=>onTapBottomHomeButton(),),
//                 GButton(
//                   gap: 8,
//                   icon: Icons.search,
//                   text: "Search",
//                   onPressed: ()=>onTapBottomSearchButton(),
//                 ),
//                 GButton(
//                   gap: 8,
//                   icon: Icons.access_time,
//                   text: "Pre-Order",),
//                 GButton(
//                   gap: 8,
//                   icon: Icons.bookmark_border,
//                   text: "Reservation",
//                   onPressed: ()=>onTapBottomReservationButton(),),
//               ],
//             ),)
//       ),
//     );
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
