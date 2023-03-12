import 'package:flutter/services.dart';
import 'package:quickdine/Authentication/supabasecredential.dart';
import 'package:quickdine/preferences/shp.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:toast/toast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../UserModel/SupabaseUser.dart';
import 'controller/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/core/utils/validation_functions.dart';
import 'package:quickdine/widgets/custom_button.dart';
import 'package:quickdine/widgets/custom_text_form_field.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase/supabase.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController _emailControler = TextEditingController();
  TextEditingController _PassControler = TextEditingController();
  bool _isVisible = false;
  bool _isLoading = false;
  late SupabaseUser uid;
  String id = "";

  bool passenable = true; //boolean value to track password view enable disable.

  @override
  void initState() {
    super.initState();
    _emailControler = TextEditingController();
    _PassControler = TextEditingController();
    _isVisible = true;
  }

  bool IsLoading = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Future<void> _singIn() async {
    setState(() {
      _isLoading = true;
    });
    AuthResponse response = await SupabaseCredential.supabaseClient.auth
        .signInWithPassword(
            email: _emailControler.text, password: _PassControler.text).catchError((e){
      Toast.show(e.message, backgroundColor: Colors.grey,);
      print(e.message);
    });
    User? error = response.user;
    setState(() {
      uid = new SupabaseUser(uid: response.user!.id);
      //print(uid.uid);
      shp().setUid(uid.uid);
    });
    if (error != null) {
      print(error.email);
      Navigator.of(context)
          .pushReplacementNamed(AppRoutes.homeScreen, arguments: {
        "Uid": uid.uid,
      });
      Toast.show("Signin SuccessFull ",
          backgroundColor: Colors.grey, duration: 5);
    } else {
      //Navigator.of(context).pushReplacementNamed(AppRoutes.homeScreen);
      Toast.show("Not able to SignIn please Try again latter",
          backgroundColor: Colors.grey, duration: 5);
    }
  }

  Future<void> _singInWithFacebook() async {
    await SupabaseCredential.supabaseClient.auth.signInWithOAuth(
      Provider.facebook,
    );
  }

  Future<void> _singInWithGoogle() async {
    await SupabaseCredential.supabaseClient.auth.signInWithOAuth(
      Provider.google,
      //redirectTo: 'io.supabase.flutterquickstart://login-callback/'
    );
  }

  Future<void> _singInWithApple() async {
    await SupabaseCredential.supabaseClient.auth.signInWithOAuth(
      Provider.apple,
      //redirectTo: 'io.supabase.flutterquickstart://login-callback/'
    );
  }

  @override
  Widget build(BuildContext context) {
    print(id);
    ToastContext().init(context);
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding: getPadding(left: 23, right: 23),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage4,
                              height: getVerticalSize(140.00),
                              width: getHorizontalSize(156.00),
                              radius: BorderRadius.circular(
                                  getHorizontalSize(40.00)),
                              margin: getMargin(top: 35)),
                          Container(
                            margin: getMargin(top: 10),
                            child: SizedBox(
                              width: 360,
                              child: TextField(
                                //keyboardType: TextInputType.emailAddress,
                                controller: _emailControler,
                                obscureText: false,
                                focusNode: FocusNode(),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 0,
                                      ), //<-- SEE HERE
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 5,
                                          color: Colors.deepOrange
                                              .shade100), //<-- SEE HERE
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    //errorText: "Please enter valid text",
                                    hintText: 'Enter the Email',
                                    prefixIcon: Icon(
                                      Icons.mail,
                                      color: Colors.deepOrange,
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(top: 25),
                            child: SizedBox(
                              width: 360,
                              child:
                              TextField(




                                // obscureText: passenable, //if passenable == true, show **, else show password character
                                // decoration: InputDecoration(
                                //   enabledBorder: OutlineInputBorder(
                                //           borderSide: BorderSide(
                                //             width: 0,
                                //           ), //<-- SEE HERE
                                //           borderRadius: BorderRadius.circular(15.0),
                                //         ),
                                //         focusedBorder: OutlineInputBorder(
                                //           borderSide: BorderSide(
                                //               width: 5,
                                //               color: Colors.deepOrange
                                //                   .shade100), //<-- SEE HERE
                                //           borderRadius: BorderRadius.circular(15.0),
                                //         ),
                                //     labelText: "Password",
                                //     hintText: 'Enter Password',
                                //         prefixIcon: Icon(
                                //           Icons.lock,
                                //           color: Colors.deepOrange,
                                //         ),
                                //     suffix: IconButton(onPressed: (){ //add Icon button at end of TextField
                                //       setState(() { //refresh UI
                                //         if(passenable){ //if passenable == true, make it false
                                //           passenable = false;
                                //         }else{
                                //           passenable = true; //if passenable == false, make it true
                                //         }
                                //       });
                                //     }, icon: Icon(passenable == true?Icons.remove_red_eye:Icons.password))
                                //   //eye icon if passenable = true, else, Icon is ***__
                                // ),


                                controller: _PassControler,
                                obscureText: _isVisible,
                                keyboardType: TextInputType.visiblePassword,
                                focusNode: FocusNode(),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 0,
                                      ), //<-- SEE HERE
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 5,
                                          color: Colors.deepOrange
                                              .shade100), //<-- SEE HERE
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    //errorText: "Please enter valid text",
                                    hintText: 'Enter Password',
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Colors.deepOrange,
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isVisible = !_isVisible;
                                        });
                                      },
                                      icon: Icon(_isVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      padding:
                                          EdgeInsets.fromLTRB(20, 0, 15, 0),
                                    )),
                              ),
                            ),
                          ),
                          CustomButton(
                              height: 53,
                              width: 357,
                              text: "lbl_sign_in".tr,
                              margin: getMargin(top: 35),
                              variant: ButtonVariant.OutlineRed500_1,
                              shape: ButtonShape.RoundedBorder10,
                              padding: ButtonPadding.PaddingAll13,
                              fontStyle: ButtonFontStyle.PoppinsBold18,
                              onTap: () async {
                                _singIn();
                                // setState(() {
                                //   IsLoading=true;
                                // });
                                // dynamic signinValue=await userLogin(
                                //     email: _emailControler.text,
                                //     password: _PassControler.text);
                                //     if(signinValue!=null){
                                //       Navigator.pushReplacementNamed(context, AppRoutes.homeScreen);
                                //     }
                                //     else{
                                //           Toast.show("Wrong message",
                                //           backgroundColor: Colors.grey,
                                //               gravity:  Toast.bottom
                                //           );
                                //     }
                              }),
                          Padding(
                              padding: getPadding(top: 62),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(70.00),
                                        margin: getMargin(top: 15, bottom: 13),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray400)),
                                    Padding(
                                        padding: getPadding(left: 17),
                                        child: Text("msg_or_continue_with".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular20Black9008c)),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(70.00),
                                        margin: getMargin(
                                            left: 15, top: 15, bottom: 13),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray400))
                                  ])),
                          Padding(
                              padding: getPadding(top: 62),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.whiteA700,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color:
                                                      ColorConstant.black9000f,
                                                  width:
                                                      getHorizontalSize(1.00)),
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                          child: Container(
                                              height: getVerticalSize(48.00),
                                              width: getHorizontalSize(57.00),
                                              padding: getPadding(
                                                  left: 13,
                                                  top: 9,
                                                  right: 13,
                                                  bottom: 9),
                                              decoration: AppDecoration
                                                  .outlineBlack9000f
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgFacebookcircled,
                                                    height:
                                                        getVerticalSize(29.00),
                                                    width: getHorizontalSize(
                                                        30.00),
                                                    alignment: Alignment.center)
                                              ]))),
                                      onTap: () {
                                        _singInWithFacebook();
                                      },
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        _singInWithGoogle();
                                      },
                                      child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: getMargin(left: 33),
                                          color: ColorConstant.whiteA700,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color:
                                                      ColorConstant.black9000f,
                                                  width:
                                                      getHorizontalSize(1.00)),
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                          child: Container(
                                              height: getVerticalSize(48.00),
                                              width: getHorizontalSize(57.00),
                                              padding: getPadding(
                                                  left: 13,
                                                  top: 9,
                                                  right: 13,
                                                  bottom: 9),
                                              decoration: AppDecoration
                                                  .outlineBlack9000f
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgFacebookcircled29x30,
                                                    height:
                                                        getVerticalSize(29.00),
                                                    width: getHorizontalSize(
                                                        30.00),
                                                    alignment: Alignment.center)
                                              ]))),
                                    ),
                                    Container(
                                        height: getVerticalSize(48.00),
                                        width: getHorizontalSize(57.00),
                                        margin: getMargin(left: 33),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          29.00),
                                                      width: getHorizontalSize(
                                                          30.00),
                                                      margin:
                                                          getMargin(right: 9),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      _singInWithApple();
                                                    },
                                                    child: Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        elevation: 0,
                                                        margin:
                                                            EdgeInsets.all(0),
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        shape: RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                color: ColorConstant
                                                                    .black9000f,
                                                                width:
                                                                    getHorizontalSize(
                                                                        1.00)),
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    48.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    57.00),
                                                            padding: getPadding(
                                                                left: 13,
                                                                top: 9,
                                                                right: 13,
                                                                bottom: 9),
                                                            decoration: AppDecoration
                                                                .outlineBlack9000f
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Stack(children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgMacclient,
                                                                  height:
                                                                      getVerticalSize(
                                                                          29.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          30.00),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)
                                                            ])
                                                        )
                                                    ),
                                                  )
                                              )
                                            ])
                                    )
                                  ])
                          ),
                          Padding(
                              padding: getPadding(top: 85),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("lbl_not_a_membe".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular20Black9008c)
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtRegisternow();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(left: 9, top: 2),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: " ",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black9008c,
                                                          fontSize:
                                                              getFontSize(20),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400)
                                                  ),
                                                  TextSpan(
                                                      text: "lbl_register_now2"
                                                          .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .red500,
                                                          fontSize:
                                                              getFontSize(20),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400)
                                                  )
                                                ]),
                                                textAlign: TextAlign.left)
                                        )
                                    )
                                  ])
                          )
                        ])
                )
            )
        )
    );
  }

  onTapSignin() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapTxtRegisternow() {
    Get.toNamed(AppRoutes.signupScreen);
  }

// // ignore_for_file: must_be_immutable
// class SigninScreen extends GetWidget<SigninController> {
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         top: false,
//         bottom: false,
//         child: Scaffold(
//             resizeToAvoidBottomInset: false,
//             backgroundColor: ColorConstant.whiteA700,
//             body: Form(
//                 key: _formKey,
//                 child: Container(
//                     width: size.width,
//                     padding: getPadding(left: 23, right: 23),
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           CustomImageView(
//                               imagePath: ImageConstant.imgImage4,
//                               height: getVerticalSize(140.00),
//                               width: getHorizontalSize(156.00),
//                               radius: BorderRadius.circular(
//                                   getHorizontalSize(40.00)),
//                               margin: getMargin(top: 35)),
//                           Container(
//                               margin: getMargin(left: 11, top: 54, right: 1),
//                               padding: getPadding(
//                                   left: 29, top: 11, right: 29, bottom: 11),
//                               decoration: AppDecoration.outlineBlack9000f
//                                   .copyWith(
//                                       borderRadius:
//                                           BorderRadiusStyle.roundedBorder10),
//                               child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     CustomImageView(
//                                         svgPath: ImageConstant.imgVector,
//                                         height: getVerticalSize(14.00),
//                                         width: getHorizontalSize(17.00),
//                                         margin: getMargin(top: 7, bottom: 8)),
//                                     Padding(
//                                         padding:
//                                             getPadding(left: 18, right: 156),
//                                         child: Text("lbl_user_name".tr,
//                                             overflow: TextOverflow.ellipsis,
//                                             textAlign: TextAlign.left,
//                                             style:
//                                                 AppStyle.txtPoppinsRegular20))
//                                   ])),
//                           Obx(() => CustomTextFormField(
//                               width: 356,
//                               focusNode: FocusNode(),
//                               controller: controller.groupEightController,
//                               hintText: "lbl_password".tr,
//                               margin: getMargin(top: 26),
//                               padding: TextFormFieldPadding.PaddingT11,
//                               textInputAction: TextInputAction.done,
//                               textInputType: TextInputType.visiblePassword,
//                               prefix: Container(
//                                   margin: getMargin(
//                                       left: 28, top: 16, right: 23, bottom: 17),
//                                   child: CustomImageView(
//                                       svgPath: ImageConstant.imgLock)),
//                               prefixConstraints: BoxConstraints(
//                                   maxHeight: getVerticalSize(53.00)),
//                               suffix: InkWell(
//                                   onTap: () {
//                                     controller.isShowPassword.value =
//                                         !controller.isShowPassword.value;
//                                   },
//                                   child: Container(
//                                       margin: getMargin(
//                                           left: 30,
//                                           top: 18,
//                                           right: 25,
//                                           bottom: 15),
//                                       child: CustomImageView(
//                                           svgPath:
//                                               controller.isShowPassword.value
//                                                   ? ImageConstant.imgEdit
//                                                   : ImageConstant.imgEdit))),
//                               suffixConstraints: BoxConstraints(
//                                   maxHeight: getVerticalSize(53.00)),
//                               validator: (value) {
//                                 if (value == null ||
//                                     (!isValidPassword(value,
//                                         isRequired: true))) {
//                                   return "Please enter valid password";
//                                 }
//                                 return null;
//                               },
//                               isObscureText: !controller.isShowPassword.value)),
//                           CustomButton(
//                               height: 53,
//                               width: 357,
//                               text: "lbl_sign_in".tr,
//                               margin: getMargin(top: 35),
//                               variant: ButtonVariant.OutlineRed500_1,
//                               shape: ButtonShape.RoundedBorder10,
//                               padding: ButtonPadding.PaddingAll13,
//                               fontStyle: ButtonFontStyle.PoppinsBold18,
//                               onTap: onTapSignin),
//                           Padding(
//                               padding: getPadding(top: 62),
//                               child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                         height: getVerticalSize(1.00),
//                                         width: getHorizontalSize(70.00),
//                                         margin: getMargin(top: 15, bottom: 13),
//                                         decoration: BoxDecoration(
//                                             color: ColorConstant.gray400)),
//                                     Padding(
//                                         padding: getPadding(left: 17),
//                                         child: Text("msg_or_continue_with".tr,
//                                             overflow: TextOverflow.ellipsis,
//                                             textAlign: TextAlign.left,
//                                             style: AppStyle
//                                                 .txtPoppinsRegular20Black9008c)),
//                                     Container(
//                                         height: getVerticalSize(1.00),
//                                         width: getHorizontalSize(70.00),
//                                         margin: getMargin(
//                                             left: 15, top: 15, bottom: 13),
//                                         decoration: BoxDecoration(
//                                             color: ColorConstant.gray400))
//                                   ])),
//                           Padding(
//                               padding: getPadding(top: 62),
//                               child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Card(
//                                         clipBehavior: Clip.antiAlias,
//                                         elevation: 0,
//                                         margin: EdgeInsets.all(0),
//                                         color: ColorConstant.whiteA700,
//                                         shape: RoundedRectangleBorder(
//                                             side: BorderSide(
//                                                 color: ColorConstant.black9000f,
//                                                 width: getHorizontalSize(1.00)),
//                                             borderRadius: BorderRadiusStyle
//                                                 .roundedBorder10),
//                                         child: Container(
//                                             height: getVerticalSize(48.00),
//                                             width: getHorizontalSize(57.00),
//                                             padding: getPadding(
//                                                 left: 13,
//                                                 top: 9,
//                                                 right: 13,
//                                                 bottom: 9),
//                                             decoration: AppDecoration
//                                                 .outlineBlack9000f
//                                                 .copyWith(
//                                                     borderRadius:
//                                                         BorderRadiusStyle
//                                                             .roundedBorder10),
//                                             child: Stack(children: [
//                                               CustomImageView(
//                                                   imagePath: ImageConstant
//                                                       .imgFacebookcircled,
//                                                   height:
//                                                       getVerticalSize(29.00),
//                                                   width:
//                                                       getHorizontalSize(30.00),
//                                                   alignment: Alignment.center)
//                                             ]))),
//                                     Card(
//                                         clipBehavior: Clip.antiAlias,
//                                         elevation: 0,
//                                         margin: getMargin(left: 33),
//                                         color: ColorConstant.whiteA700,
//                                         shape: RoundedRectangleBorder(
//                                             side: BorderSide(
//                                                 color: ColorConstant.black9000f,
//                                                 width: getHorizontalSize(1.00)),
//                                             borderRadius: BorderRadiusStyle
//                                                 .roundedBorder10),
//                                         child: Container(
//                                             height: getVerticalSize(48.00),
//                                             width: getHorizontalSize(57.00),
//                                             padding: getPadding(
//                                                 left: 13,
//                                                 top: 9,
//                                                 right: 13,
//                                                 bottom: 9),
//                                             decoration: AppDecoration
//                                                 .outlineBlack9000f
//                                                 .copyWith(
//                                                     borderRadius:
//                                                         BorderRadiusStyle
//                                                             .roundedBorder10),
//                                             child: Stack(children: [
//                                               CustomImageView(
//                                                   imagePath: ImageConstant
//                                                       .imgFacebookcircled29x30,
//                                                   height:
//                                                       getVerticalSize(29.00),
//                                                   width:
//                                                       getHorizontalSize(30.00),
//                                                   alignment: Alignment.center)
//                                             ]))),
//                                     Container(
//                                         height: getVerticalSize(48.00),
//                                         width: getHorizontalSize(57.00),
//                                         margin: getMargin(left: 33),
//                                         child: Stack(
//                                             alignment: Alignment.center,
//                                             children: [
//                                               Align(
//                                                   alignment:
//                                                       Alignment.centerRight,
//                                                   child: Container(
//                                                       height: getVerticalSize(
//                                                           29.00),
//                                                       width: getHorizontalSize(
//                                                           30.00),
//                                                       margin:
//                                                           getMargin(right: 9),
//                                                       decoration: BoxDecoration(
//                                                           color: ColorConstant
//                                                               .whiteA700))),
//                                               Align(
//                                                   alignment: Alignment.center,
//                                                   child: Card(
//                                                       clipBehavior:
//                                                           Clip.antiAlias,
//                                                       elevation: 0,
//                                                       margin: EdgeInsets.all(0),
//                                                       color: ColorConstant
//                                                           .whiteA700,
//                                                       shape: RoundedRectangleBorder(
//                                                           side: BorderSide(
//                                                               color: ColorConstant
//                                                                   .black9000f,
//                                                               width:
//                                                                   getHorizontalSize(
//                                                                       1.00)),
//                                                           borderRadius:
//                                                               BorderRadiusStyle
//                                                                   .roundedBorder10),
//                                                       child: Container(
//                                                           height:
//                                                               getVerticalSize(
//                                                                   48.00),
//                                                           width:
//                                                               getHorizontalSize(
//                                                                   57.00),
//                                                           padding: getPadding(
//                                                               left: 13,
//                                                               top: 9,
//                                                               right: 13,
//                                                               bottom: 9),
//                                                           decoration: AppDecoration
//                                                               .outlineBlack9000f
//                                                               .copyWith(
//                                                                   borderRadius:
//                                                                       BorderRadiusStyle
//                                                                           .roundedBorder10),
//                                                           child:
//                                                               Stack(children: [
//                                                             CustomImageView(
//                                                                 imagePath:
//                                                                     ImageConstant
//                                                                         .imgMacclient,
//                                                                 height:
//                                                                     getVerticalSize(
//                                                                         29.00),
//                                                                 width:
//                                                                     getHorizontalSize(
//                                                                         30.00),
//                                                                 alignment:
//                                                                     Alignment
//                                                                         .center)
//                                                           ]))))
//                                             ]))
//                                   ])),
//                           Padding(
//                               padding: getPadding(top: 85),
//                               child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Padding(
//                                         padding: getPadding(bottom: 2),
//                                         child: Text("lbl_not_a_membe".tr,
//                                             overflow: TextOverflow.ellipsis,
//                                             textAlign: TextAlign.left,
//                                             style: AppStyle
//                                                 .txtPoppinsRegular20Black9008c)),
//                                     GestureDetector(
//                                         onTap: () {
//                                           onTapTxtRegisternow();
//                                         },
//                                         child: Padding(
//                                             padding:
//                                                 getPadding(left: 9, top: 2),
//                                             child: RichText(
//                                                 text: TextSpan(children: [
//                                                   TextSpan(
//                                                       text: " ",
//                                                       style: TextStyle(
//                                                           color: ColorConstant
//                                                               .black9008c,
//                                                           fontSize:
//                                                               getFontSize(20),
//                                                           fontFamily: 'Poppins',
//                                                           fontWeight:
//                                                               FontWeight.w400)),
//                                                   TextSpan(
//                                                       text: "lbl_register_now2"
//                                                           .tr,
//                                                       style: TextStyle(
//                                                           color: ColorConstant
//                                                               .red500,
//                                                           fontSize:
//                                                               getFontSize(20),
//                                                           fontFamily: 'Poppins',
//                                                           fontWeight:
//                                                               FontWeight.w400))
//                                                 ]),
//                                                 textAlign: TextAlign.left)))
//                                   ]))
//                         ])))));
//   }
//
//   onTapSignin() {
//     Get.toNamed(AppRoutes.homeScreen);
//   }
//
//   onTapTxtRegisternow() {
//     Get.toNamed(AppRoutes.signupScreen);
//   }
// }
}
