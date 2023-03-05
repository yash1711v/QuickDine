import '../../bttmNav.dart';
import 'controller/help_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/core/utils/validation_functions.dart';
import 'package:quickdine/widgets/custom_bottom_bar.dart';
import 'package:quickdine/widgets/custom_button.dart';
import 'package:quickdine/widgets/custom_text_form_field.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);
  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  get controller => HelpController();
  @override
  Widget build(BuildContext context) {
    var _currentIndex=0;
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Form(
          key: _formKey,
          child: Container(
            width: size.width,
            padding: getPadding(
              left: 31,
              top: 45,
              right: 31,
              bottom: 45,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 150,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgQuestionBlack900,
                        height: getSize(
                          24.00,
                        ),
                        width: getSize(
                          24.00,
                        ),
                        margin: getMargin(
                          bottom: 5,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                        ),
                        child: Text(
                          "lbl_help".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(top: 40),
                  child: TextField(
                    obscureText: false,
                    controller: controller.languageController,
                    // keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                        ), //<-- SEE HERE
                        borderRadius:
                        BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 5,
                            color: Colors.deepOrange
                                .shade100), //<-- SEE HERE
                        borderRadius:
                        BorderRadius.circular(15.0),
                      ),
                      //errorText: "Please enter valid text",
                      hintText: "lbl_first_name".tr,
                    ),
                  ),
                ),

                Container(
                  margin: getMargin(top: 24),
                  child: TextField(
                    obscureText: false,
                    controller: controller.groupThirtyFourController,
                    // keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                        ), //<-- SEE HERE
                        borderRadius:
                        BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 5,
                            color: Colors.deepOrange
                                .shade100), //<-- SEE HERE
                        borderRadius:
                        BorderRadius.circular(15.0),
                      ),
                      //errorText: "Please enter valid text",
                      hintText: "lbl_last_name".tr,
                    ),
                  ),
                ),
                Container(
                  width: 350,
                  height: 200,
                  margin: getMargin(top: 24),
                  child: SizedBox(
                    child: TextField(
                      obscureText: false,
                      // keyboardType: TextInputType.name,
                      maxLines: null,
                      expands: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 0,
                          ), //<-- SEE HERE
                          borderRadius:
                          BorderRadius.circular(15.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 5,
                              color: Colors.deepOrange
                                  .shade100), //<-- SEE HERE
                          borderRadius:
                          BorderRadius.circular(15.0),
                        ),
                        //errorText: "Please enter valid text",
                        hintText: "lbl_message".tr,
                      ),
                    ),
                  ),
                ),
                CustomButton(
                  height: 55,
                  width: 300,
                  text: "Send Your Problem To us".tr,
                  margin: getMargin(
                      right: 7,
                      bottom: 0,
                      top: 15
                  ),
                  variant: ButtonVariant.OutlineBlack90016,
                  shape: ButtonShape.RoundedBorder20,
                  padding: ButtonPadding.PaddingT14,
                  fontStyle: ButtonFontStyle.PoppinsMedium15,
                  prefixWidget: Container(
                      margin: getMargin(
                        right: 7,
                      ),
                      child:  Icon(Icons.outgoing_mail,
                          color: Colors.yellow.shade900)
                  ),
                  alignment: Alignment.bottomCenter,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: getHorizontalSize(
                      308.00,
                    ),
                    margin: getMargin(
                      top: 4,
                      right: 12,
                    ),
                    child: Text(
                      "msg_thanks_we_ll_respond".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular16,
                    ),
                  ),
                ),
                CustomButton(
                  height: 55,
                  width: 181,
                  text: "Request a call".tr,
                  margin: getMargin(
                      right: 7,
                      bottom: 10,
                      top: 15
                  ),
                  variant: ButtonVariant.OutlineBlack90016,
                  shape: ButtonShape.RoundedBorder20,
                  padding: ButtonPadding.PaddingT14,
                  fontStyle: ButtonFontStyle.PoppinsMedium15,
                  prefixWidget: Container(
                    margin: getMargin(
                      right: 7,
                    ),
                    child:  Icon(Icons.call,
                        color: Colors.yellow.shade900)
                  ),
                  alignment: Alignment.bottomCenter,
                ),
                CustomButton(
                  height: 55,
                  width: 181,
                  text: "Send Email".tr,
                  margin: getMargin(
                      right: 7,
                      bottom: 10,
                      top: 5
                  ),
                  variant: ButtonVariant.OutlineBlack90016,
                  shape: ButtonShape.RoundedBorder20,
                  padding: ButtonPadding.PaddingT14,
                  fontStyle: ButtonFontStyle.PoppinsMedium15,
                  prefixWidget: Container(
                    margin: getMargin(
                      right: 7,
                    ),
                    child: Icon(Icons.mail,
                    color: Colors.yellow.shade900)
                  ),
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBbbar(currentindex: 0)
      ),
    );
  }
}