import 'package:flutter/material.dart';
import 'package:quickdine/presentation/DrawerWidget/DrawerItem.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widgets/custom_image_view.dart';
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
      child: Container(
        width: 300,
        height: 1000,
        color: Colors.white,
        child: Column(
          children: [
            CustomImageView(
                imagePath: ImageConstant.imgImage4,
                height: getVerticalSize(140.00),
                width: getHorizontalSize(156.00),
                radius: BorderRadius.circular(
                    getHorizontalSize(40.00)),
                margin: getMargin(top: 84)),
            builDrawerItems(context)
          ],
        ),
      ),
    );
  }

  Widget builDrawerItems(BuildContext context) => Column(
    children: DrawerItems.all
        .map((item) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      leading: Icon(item.icon, color: Colors.black),
      title: Text(
        item.title,
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
      onTap: () => onSelectedItem(item),
    ))
        .toList(),
  );
}