import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:quickdine/Authentication/supabasecredential.dart';
import 'package:quickdine/Database/DatabaseServices.dart';
import 'package:quickdine/UserModel/SupabaseUser.dart';
import 'package:quickdine/preferences/shp.dart';
import 'package:supabase/supabase.dart';
import 'package:toast/toast.dart';
import 'package:path/path.dart';
import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/core/utils/validation_functions.dart';
import 'package:quickdine/widgets/custom_button.dart';
import 'package:quickdine/widgets/custom_text_form_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  get controller => SignupController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _FirstName = TextEditingController();
  late TextEditingController _lastname = TextEditingController();
  late TextEditingController _PhoneNumbercontroler = TextEditingController();
  late TextEditingController _emailControler = TextEditingController();
  late TextEditingController _PassControler = TextEditingController();
  final FocusNode _firstname = FocusNode();
  final FocusNode _lasttname = FocusNode();
  final FocusNode _PhoneNumber = FocusNode();
  final FocusNode _email = FocusNode();
  final FocusNode _password = FocusNode();
  bool _isVisible = false;
  bool _isLoading = false;
  late User error;

  @override
  void initState() {
    super.initState();
    _PhoneNumbercontroler = TextEditingController();
    _FirstName = TextEditingController();
    _lastname = TextEditingController();
    _emailControler = TextEditingController();
    _PassControler = TextEditingController();
    _isVisible = true;
  }
  late var response;
  Future<void> _singUp() async {
    setState(() {
      _isLoading = true;
    });

    final bool emailValid =
    RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_emailControler.text);

    if (!emailValid) {
      Toast.show("Enter a valid Email ID", backgroundColor: Colors.grey,);
    }

    else {

    response = await SupabaseCredential.supabaseClient.auth
          .signUp(email: _emailControler.text, password: _PassControler.text).catchError((e){
          Toast.show(e.message, backgroundColor: Colors.grey,);
         print(e.message);
       });

      error=response.user!;
      await DatabaseServices().updateuserData(
          _FirstName.text,
          _lastname.text,
          _PhoneNumbercontroler.text,
          _emailControler.text,
          _PassControler.text,
          error.id,
          publicUrl
      ).then((value)=>print("Successfull")).catchError((e){
          print(e.toString());
      });
      if (error != null) {
        print(error.email);
        Get.toNamed(AppRoutes.signinScreen);
        Toast.show("Login SuccessFull Please Login ", backgroundColor: Colors.grey,);
      }
      else {
          Toast.show("Unable to SignUp, please yry again later", backgroundColor: Colors.grey,);
      }
      setState(() {
        _isLoading = false;
      });
    }
  }

  static String supabaseURL = "https://omadswcnxjdbrufimbwy.supabase.co";
  static String supabaseKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9tYWRzd2NueGpkYnJ1ZmltYnd5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzY2NjIxMzQsImV4cCI6MTk5MjIzODEzNH0.qq-CgehJSfyr0KKZQFRKSHAAkKDXB2ezFnRTq5SQ904";

  final SupabaseClient client = SupabaseClient(supabaseURL, supabaseKey);
  bool uploadState = false;
  String publicUrl = "";

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(
              child: Padding(
                child: Container(
                  child: Form(
                      key: _formKey,
                      child: Container(
                          width: size.width,
                          padding: getPadding(
                              left: 25, top: 30, right: 25, bottom: 12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 150,
                                  width: 200,
                                  child: GestureDetector(
                                    onTap: () async {
                                      // Code for uploading photo to Supabase Storage
                                      final pickedFile = await ImagePicker()
                                          .getImage(source: ImageSource.gallery);
                                      if (pickedFile != null) {
                                        final file = File(pickedFile.path);
                                        String fileName = basename(pickedFile.path);
                                        await client.storage
                                            .from('user-photos')
                                            .upload(fileName,
                                            file)
                                            .then((value) {
                                          setState(() {

                                          });
                                        });

                                        // Code for getting Download URL of uploaded image
                                        setState(() {
                                          publicUrl = client.storage
                                              .from('user-photos')
                                              .getPublicUrl(fileName);
                                          uploadState = true;
                                          setState(() {
                                            //shp().setProfileink(publicUrl);
                                            print(publicUrl.toString());
                                          });
                                        });
                                      }
                                      uploadState
                                          ? Text("Upload Complete")
                                          : CircularProgressIndicator();
                                    },
                                    child:   Stack(
                                      fit: StackFit.expand,
                                      children: [CircleAvatar(
                                        // backgroundColor: Colors.white,
                                        backgroundImage:
                                        uploadState==true?NetworkImage(publicUrl):AssetImage("assets2/user.png") as ImageProvider,
                                        radius: 60,

                                      ),
                                        //-------------------------------------------This is to add the button on it
                                        // Positioned(
                                        //     right: -16,
                                        //     bottom: 0,
                                        //     child: SizedBox(
                                        //         height: 46,
                                        //         width: 46,
                                        //         child: FlatButton(
                                        //           shape: RoundedRectangleBorder(
                                        //             borderRadius: BorderRadius.circular(50),
                                        //             side: BorderSide(color: Colors.white),
                                        //           ),
                                        //           color: Color(0xFFF5F6F9),
                                        //           onPressed: () {},
                                        //           // TODO: Icon not centered.
                                        //           child: Center(child: Icon(Icons.camera_alt_outlined)),
                                        //         )))

                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: getMargin(top: 20),
                                  child: SizedBox(
                                    width: 360,
                                    child: TextField(
                                      controller: _FirstName,
                                      obscureText: false,
                                      focusNode: _firstname,
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
                                        hintText: 'Enter Your First name',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: getMargin(top: 24),
                                  child: SizedBox(
                                    width: 360,
                                    child: TextField(
                                      obscureText: false,
                                      controller: _lastname,
                                      focusNode: _lasttname,
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
                                        hintText: 'Enter Your Last name',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: getMargin(top: 24),
                                  child: SizedBox(
                                    width: 360,
                                    child: TextField(
                                      //controller: controller.phoneNumberTextController,
                                      // keyboardType: TextInputType.phone,
                                      obscureText: false,
                                      maxLines: 1,
                                      maxLength: 10,
                                      controller: _PhoneNumbercontroler,
                                      focusNode: _PhoneNumber,
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
                                        hintText: 'Enter Your PhoneNumber',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: getMargin(top: 24),
                                  child: SizedBox(
                                    width: 360,
                                    child: TextField(
                                      controller: _emailControler,
                                      // keyboardType: TextInputType.name,
                                      obscureText: false,
                                      focusNode: _email,
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
                                          hintText: 'Enter Your Email',
                                          prefixIcon: Icon(
                                            Icons.mail,
                                            color: Colors.deepOrange,
                                          )),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: getMargin(top: 24),
                                  child: SizedBox(
                                    width: 360,
                                    child: TextField(
                                      controller: _PassControler,
                                      obscureText: _isVisible,
                                      // keyboardType: TextInputType.visiblePassword,
                                      focusNode: _password,
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
                                            padding: EdgeInsets.fromLTRB(
                                                20, 0, 15, 0),
                                          )),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: getMargin(top: 1),
                                  child: CustomButton(
                                      height: 53,
                                      width: 357,
                                      text: "msg_create_an_account".tr,
                                      margin: getMargin(top: 27),
                                      variant: ButtonVariant.OutlineAmber500,
                                      shape: ButtonShape.RoundedBorder10,
                                      padding: ButtonPadding.PaddingAll13,
                                      fontStyle: ButtonFontStyle.PoppinsBold18,
                                      onTap: () {
                                        _singUp();
                                        onTapCreateanaccountOne();
                                      }),
                                ),
                                CustomButton(
                                    height: 53,
                                    width: 357,
                                    text: "msg_continue_as_a_guest".tr,
                                    margin: getMargin(top: 21),
                                    variant: ButtonVariant.OutlineRed500,
                                    shape: ButtonShape.RoundedBorder10,
                                    fontStyle: ButtonFontStyle.PoppinsBold18,
                                    onTap: () {}),
                                Padding(
                                    padding: getPadding(top: 61),
                                    child: Text("msg_terms_conditions".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterLight12))
                              ]))),
                ),
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
              ),
            )));
  }

  onTapCreateanaccountOne() async {}

  onTapContinueasaguest() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}

// // ignore_for_file: must_be_immutable
// class SignupScreen extends GetWidget<SignupController> {
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
//                     padding:
//                         getPadding(left: 25, top: 12, right: 25, bottom: 12),
//                     child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           CustomImageView(
//                               imagePath: ImageConstant.imgImage4,
//                               height: getVerticalSize(140.00),
//                               width: getHorizontalSize(156.00),
//                               radius: BorderRadius.circular(
//                                   getHorizontalSize(40.00)),
//                               margin: getMargin(top: 84)),
//                           CustomTextFormField(
//                               width: 356,
//                               focusNode: FocusNode(),
//                               controller: controller.languageController,
//                               hintText: "lbl_first_name".tr,
//                               margin: getMargin(top: 35),
//                               padding: TextFormFieldPadding.PaddingAll8,
//                               validator: (value) {
//                                 if (!isText(value)) {
//                                   return "Please enter valid text";
//                                 }
//                                 return null;
//                               }),
//                           CustomTextFormField(
//                               width: 357,
//                               focusNode: FocusNode(),
//                               controller:
//                                   controller.lastNameTextFieldController,
//                               hintText: "lbl_last_name".tr,
//                               margin: getMargin(top: 28),
//                               padding: TextFormFieldPadding.PaddingAll8,
//                               validator: (value) {
//                                 if (!isText(value)) {
//                                   return "Please enter valid text";
//                                 }
//                                 return null;
//                               }),
//                           CustomTextFormField(
//                               width: 357,
//                               focusNode: FocusNode(),
//                               controller: controller.phoneNumberTextController,
//                               hintText: "lbl_phone_number".tr,
//                               margin: getMargin(top: 28),
//                               padding: TextFormFieldPadding.PaddingAll8,
//                               textInputType: TextInputType.phone,
//                               validator: (value) {
//                                 if (!isValidPhone(value)) {
//                                   return "Please enter valid phone number";
//                                 }
//                                 return null;
//                               }),
//                           CustomTextFormField(
//                               width: 357,
//                               focusNode: FocusNode(),
//                               controller: controller.emailTextFieldController,
//                               hintText: "lbl_email".tr,
//                               margin: getMargin(top: 28),
//                               padding: TextFormFieldPadding.PaddingAll11,
//                               textInputType: TextInputType.emailAddress,
//                               validator: (value) {
//                                 if (value == null ||
//                                     (!isValidEmail(value, isRequired: true))) {
//                                   return "Please enter valid email";
//                                 }
//                                 return null;
//                               }),
//                           Obx(() => CustomTextFormField(
//                               width: 356,
//                               focusNode: FocusNode(),
//                               controller: controller.groupSixtyOneController,
//                               hintText: "lbl_password".tr,
//                               margin: getMargin(top: 28),
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
//                               text: "msg_create_an_account".tr,
//                               margin: getMargin(top: 27),
//                               variant: ButtonVariant.OutlineAmber500,
//                               shape: ButtonShape.RoundedBorder10,
//                               padding: ButtonPadding.PaddingAll13,
//                               fontStyle: ButtonFontStyle.PoppinsBold18,
//                               onTap: onTapCreateanaccountOne),
//                           CustomButton(
//                               height: 53,
//                               width: 357,
//                               text: "msg_continue_as_a_guest".tr,
//                               margin: getMargin(top: 21),
//                               variant: ButtonVariant.OutlineRed500,
//                               shape: ButtonShape.RoundedBorder10,
//                               fontStyle: ButtonFontStyle.PoppinsBold18,
//                               onTap: onTapContinueasaguest),
//                           Padding(
//                               padding: getPadding(top: 61),
//                               child: Text("msg_terms_conditions".tr,
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: AppStyle.txtInterLight12))
//                         ])))));
//   }
//
//   onTapCreateanaccountOne() {
//     Get.toNamed(AppRoutes.homeScreen);
//   }
//
//   onTapContinueasaguest() {
//     Get.toNamed(AppRoutes.homeScreen);
//   }
// }
