import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
    );
  }
}

//
// class SplashScreen extends GetWidget<SplashController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         top: false,
//         bottom: false,
//         child: Scaffold(
//             extendBody: true,
//             extendBodyBehindAppBar: true,
//             backgroundColor: ColorConstant.red500,
//             body: Container(
//                 width: size.width,
//                 height: size.height,
//                 decoration: BoxDecoration(
//                     color: ColorConstant.red500,
//                     border: Border.all(
//                         color: ColorConstant.amber500,
//                         width: getHorizontalSize(1.00)),
//                     gradient: LinearGradient(
//                         begin: Alignment(-0.19, 0.08),
//                         end: Alignment(0.5, 1),
//                         colors: [
//                           ColorConstant.whiteA70075,
//                           ColorConstant.whiteA70033,
//                           ColorConstant.whiteA70033
//                         ])),
//                 child: Container(
//                     width: size.width,
//                     padding: getPadding(left: 106, right: 106),
//                     child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           CustomImageView(
//                               imagePath: ImageConstant.imgImage5,
//                               height: getVerticalSize(163.00),
//                               width: getHorizontalSize(182.00),
//                               margin: getMargin(bottom: 1))
//                         ]
//                     )
//                 )
//             )
//         ));
//   }
// }
