import 'package:flutter/material.dart';
import 'package:quickdine/presentation/DrawerWidget/DrawerItem.dart';

import 'DrawerItemModelClass.dart';

class DrawerWidget extends StatelessWidget {
  final ValueChanged<DrawerItem> onSelectedItem; //Responsible For Navigation
  const DrawerWidget(
      {Key? key, required this.onSelectedItem //Responsible For Navigation
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [builDrawerItems(context)],
      ),
    );
  }

  Widget builDrawerItems(BuildContext context) => Column(
        children: DrawerItems.all
            .map((item) => ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  leading: Icon(item.icon, color: Colors.white),
                  title: Text(
                    item.title,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onTap: () => onSelectedItem(item),
                ))
            .toList(),
      );
}
