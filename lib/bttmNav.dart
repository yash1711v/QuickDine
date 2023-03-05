import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quickdine/routes/app_routes.dart';

import 'core/utils/size_utils.dart';
class BottomNavBbbar extends StatelessWidget {
  var currentindex;
  BottomNavBbbar({required this.currentindex});

  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(left: 14, bottom: 15, right: 15),
      padding: EdgeInsets.only(left: 10, right: 20),
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
          ]),
      child: SizedBox(
        height: 88,
        child: GNav(
          duration: Duration(milliseconds: 400),
          tabBackgroundColor: Colors.deepOrangeAccent.shade100,
          activeColor: Colors.white,
          selectedIndex: currentindex,
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
              icon: Icons.person_rounded,
              text: "Profile",
              onPressed: () => onTapProfileIcon(),
            ),
          ],
        ),
      ),
    );
  }
}

onTapBottomSearchButton() async {
  Get.toNamed(AppRoutes.exploreScreen);
}

onTapBottomHomeButton() async {
  Get.toNamed(AppRoutes.homeScreen);
}

onTapProfileIcon() {
  Get.toNamed(AppRoutes.profileScreen);
}