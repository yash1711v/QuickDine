import 'package:flutter/material.dart';
import 'DrawerItemModelClass.dart';

class DrawerItems {
  static const Info = DrawerItem(title: 'Who we are', icon: Icons.info);
  static const profile = DrawerItem(title: 'Profile', icon: Icons.person);
  static const Pre_Order =
      DrawerItem(title: 'Pre-Order', icon: Icons.add_shopping_cart_rounded);
  static const Offers =
      DrawerItem(title: 'Offers & Promos', icon: Icons.local_offer_rounded);
  static const Logout = DrawerItem(title: 'Logout', icon: Icons.logout_rounded);

  static final List<DrawerItem> all = [
    Info,
    profile,
    Pre_Order,
    Offers,
    Logout
  ];
}
