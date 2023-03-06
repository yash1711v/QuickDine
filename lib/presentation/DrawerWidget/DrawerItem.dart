import 'package:flutter/material.dart';
import 'DrawerItemModelClass.dart';

class DrawerItems {
  static const Info = DrawerItem(title: 'Who we are', icon: Icons.info);
  static const Pre_Order =
      DrawerItem(title: 'Your Order', icon: Icons.shopping_cart);
  static const Offers =
      DrawerItem(title: 'Help', icon: Icons.help);
  static const  reservation =
  DrawerItem(title: 'Your Reservations', icon: Icons.food_bank_rounded);
  static const Logout = DrawerItem(title: 'Logout', icon: Icons.logout_rounded);

  static final List<DrawerItem> all = [
    Info,
    Pre_Order,
    Offers,
    reservation,
    Logout
  ];
}
