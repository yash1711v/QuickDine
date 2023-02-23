import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/preferences/shp.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase/supabase.dart';

import '../../Authentication/supabasecredential.dart';
import '../../UserModel/SupabaseUser.dart';
import '../../routes/app_routes.dart';
import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String id = "";

  @override
  void initState() {
    super.initState();
    checkidValue();
    final session = checkidValue();
    Future.delayed(Duration(seconds: 2), () {
      if (id == "") {
        print(session);
        Navigator.of(context).pushReplacementNamed(AppRoutes.signinScreen);
      } else {
        print(session);
        Navigator.of(context).pushReplacementNamed(AppRoutes.homeScreen);
      }
    });
  }

  checkidValue() async {
    String uid = await shp().getUid() ?? "";
    setState(() {
      id = uid;
    });
    print("----" + id + "---------");
    return id;
  }

  get controller => SplashController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepOrangeAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 300,
                width: 300,
                child:
                    // Lottie.asset("assets/images/ani.mp4.lottie.json",
                    // ),
                    CustomImageView(
                  imagePath: "assets/images/Logo.png",
                )
                //Lottie.network("https://assets7.lottiefiles.com/packages/lf20_vkqybeu5/data.json"),
                ),
            SizedBox(
              height: 20,
            ),
            // Text("QuickDine"),
          ],
        ),
      ),
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
