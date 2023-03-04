import 'package:lottie/lottie.dart';

import '../../Database/DatabaseServices.dart';
import '../../preferences/shp.dart';
import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/custom_button.dart';
import 'package:supabase/supabase.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'dart:io';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  get controller =>
      ProfileController(); // Agar Undefined Controller ae to ye aega get controller=>"Os class ka Controller"
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _firstNameController = TextEditingController();
  late TextEditingController _lastNameController = TextEditingController();
  late TextEditingController _phoneNumberController = TextEditingController();
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();

  final FocusNode _firstNameNode = FocusNode();
  final FocusNode _lastNameNode = FocusNode();
  final FocusNode _phoneNumberNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();

  bool _isVisible = false;

  String firstName = "";
  String lastName = "";
  String email = "";
  String password = "";
  String id = "";
  String phone = "";

  void initState() {
    super.initState();
    checkidValue();
    _isVisible = true;
  }

  checkidValue() async {
    String firstName = await shp().getFirstname() ?? "";
    String lastName = await shp().getLastName() ?? "";
    String phone = await shp().getPhone() ?? "";
    String email = await shp().getemail() ?? "";
    String password = await shp().getPassword() ?? "";
    String uid = await shp().getUid();
    String PhotoLink=await shp().getProfileink();
    setState(() {
      this.firstName = firstName;
      this.lastName = lastName;
      this.phone = phone;
      this.email = email;
      this.password = password;
      this.id = uid;
      this.publicUrl=PhotoLink;
      _firstNameController.text = firstName;
      _lastNameController.text = lastName;
      _phoneNumberController.text = phone;
      _emailController.text = email;
      _passwordController.text = password;
    });
  }

  String fname = "";
  String lname = "";
  String Phone = "";
  String Email = "";
  String pass = "";

  static String supabaseURL = "https://omadswcnxjdbrufimbwy.supabase.co";
  static String supabaseKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9tYWRzd2NueGpkYnJ1ZmltYnd5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzY2NjIxMzQsImV4cCI6MTk5MjIzODEzNH0.qq-CgehJSfyr0KKZQFRKSHAAkKDXB2ezFnRTq5SQ904";

  final SupabaseClient client = SupabaseClient(supabaseURL, supabaseKey);
  bool uploadState = false;
  String publicUrl = "";
  @override
  Widget build(BuildContext context) {
    print(publicUrl);
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
                    left: 27,
                    top: 24,
                    right: 27,
                    bottom: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 19,
                        ),
                        child: Text(
                          "lbl_profile".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold20,
                        ),
                      ),

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
                                 backgroundImage:NetworkImage(publicUrl),
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

                      // CustomImageView(
                      //   imagePath: ImageConstant.imgEllipse60,
                      //   height: getSize(
                      //     124.00,
                      //   ),
                      //   width: getSize(
                      //     124.00,
                      //   ),
                      //   radius: BorderRadius.circular(
                      //     getHorizontalSize(
                      //       62.00,
                      //     ),
                      //   ),
                      //   margin: getMargin(
                      //     top: 13,
                      //   ),
                      //   onTap: () async {
                      //     setState(() {
                      //       uploadState = false;
                      //     });
                      //     final pickedFile =
                      //         await ImagePicker().getImage(source: ImageSource.gallery);
                      //     if (pickedFile != null) {
                      //       final file = File(pickedFile.path);
                      //       String fileName = basename(pickedFile.path);
                      //       await client.storage
                      //           .from('user-photos')
                      //           .upload(id + '_' + firstName + '_' + lastName, file)
                      //           .then((value) {
                      //         print('value -- ' + value);
                      //         setState(() {
                      //           uploadState = true;
                      //         });
                      //       });
                      //       print('filename -- ' + fileName);
                      //       publicUrl = client.storage
                      //           .from('restaurant-photos')
                      //           .getPublicUrl(fileName);
                      //       print('filename -- ' + publicUrl);
                      //
                      //       // Center(
                      //       //     child: Column(children: <Widget>[
                      //       //       Image.network(publicUrl),
                      //       //     ])
                      //       // );
                      //     }
                      //     uploadState
                      //         ? Text("Upload Complete")
                      //         : CircularProgressIndicator();
                      //   },
                      // ),
                      Container(
                        margin: getMargin(top: 20),
                        child: SizedBox(
                          width: 360,
                          child: TextField(
                            controller: _firstNameController,
                            obscureText: false,
                            focusNode: _firstNameNode,
                            // keyboardType: TextInputType.name,
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
                                    color: Colors
                                        .deepOrange.shade100), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              //errorText: "Please enter valid text",
                              hintText: 'First name',
                              labelText: 'First name',
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
                            controller: _lastNameController,
                            focusNode: _lastNameNode,
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
                                    color: Colors
                                        .deepOrange.shade100), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              hintText: 'Last name',
                              labelText: 'Last name',
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
                            controller: _phoneNumberController,
                            focusNode: _phoneNumberNode,
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
                                    color: Colors
                                        .deepOrange.shade100), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              //errorText: "Please enter valid text",
                              hintText: 'Mobile No.',
                              labelText: 'Mobile No.',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(top: 24),
                        child: SizedBox(
                          width: 360,
                          child: TextField(
                            controller: _emailController,
                            // keyboardType: TextInputType.name,
                            obscureText: false,
                            focusNode: _emailNode,
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
                                      color: Colors
                                          .deepOrange.shade100), //<-- SEE HERE
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                //errorText: "Please enter valid text",
                                hintText: 'example@abc.com',
                                labelText: 'Email Address',
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
                            controller: _passwordController,
                            obscureText: _isVisible,
                            // keyboardType: TextInputType.visiblePassword,
                            focusNode: _passwordNode,
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
                                      color: Colors
                                          .deepOrange.shade100), //<-- SEE HERE
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                //errorText: "Please enter valid text",
                                hintText: 'Password',
                                labelText: 'Password',
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
                                  padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
                                )),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            top: 53,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                height: 72,
                                width: 350,
                                text: "lbl_save".tr,
                                variant: ButtonVariant.OutlineRed500_1,
                                shape: ButtonShape.RoundedBorder10,
                                padding: ButtonPadding.PaddingAll19,
                                fontStyle: ButtonFontStyle.PoppinsBold18,
                                onTap: () async {
                                  setState(() {
                                    if (_firstNameController.text == null) {
                                      fname = firstName;
                                    } else {
                                      fname = _firstNameController.text;
                                    }
                                    if (_lastNameController.text == null) {
                                      lname = lastName;
                                    } else {
                                      lname = _lastNameController.text;
                                    }
                                    if (_emailController.text == null) {
                                      Email = email;
                                    } else {
                                      Email = _emailController.text;
                                    }
                                    if (_passwordController.text == null) {
                                      pass = password;
                                    } else {
                                      pass = _passwordController.text;
                                    }
                                    if (_phoneNumberController.text == null) {
                                      Phone = phone.toString();
                                    } else {
                                      Phone = _phoneNumberController.text;
                                    }
                                  });
                                  Future.delayed(Duration(seconds: 1),
                                      () async {
                                    await DatabaseServices().InsertuserData(
                                        fname,
                                        lname,
                                        Phone.toString(),
                                        email,
                                        pass,
                                        id);
                                    // shp().setFirstname(fname);
                                    // shp().setLastName(lname);
                                    // shp().setPhone(Phone);
                                    // shp().setemail(Email);
                                    // shp().setPassword(pass);
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
          ),
        ),
      ),
    );
  }
}

onTapSave() async {}

//olde
// class ProfileScreen extends GetWidget<ProfileController> {
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       bottom: false,
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: ColorConstant.whiteA700,
//         body: Form(
//           key: _formKey,
//           child: Container(
//             width: size.width,
//             padding: getPadding(
//               left: 27,
//               top: 24,
//               right: 27,
//               bottom: 24,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: getPadding(
//                     top: 19,
//                   ),
//                   child: Text(
//                     "lbl_profile".tr,
//                     overflow: TextOverflow.ellipsis,
//                     textAlign: TextAlign.left,
//                     style: AppStyle.txtPoppinsSemiBold20,
//                   ),
//                 ),
//                 CustomImageView(
//                   imagePath: ImageConstant.imgEllipse60,
//                   height: getSize(
//                     124.00,
//                   ),
//                   width: getSize(
//                     124.00,
//                   ),
//                   radius: BorderRadius.circular(
//                     getHorizontalSize(
//                       62.00,
//                     ),
//                   ),
//                   margin: getMargin(
//                     top: 13,
//                   ),
//                 ),
//                 CustomTextFormField(
//                   width: 356,
//                   focusNode: FocusNode(),
//                   controller: controller.languageController,
//                   hintText: "lbl_first_name".tr,
//                   margin: getMargin(
//                     top: 54,
//                   ),
//                   validator: (value) {
//                     if (!isText(value)) {
//                       return "Please enter valid text";
//                     }
//                     return null;
//                   },
//                 ),
//                 CustomTextFormField(
//                   width: 357,
//                   focusNode: FocusNode(),
//                   controller: controller.lastNameFormTextFieldController,
//                   hintText: "lbl_last_name".tr,
//                   margin: getMargin(
//                     top: 35,
//                   ),
//                   validator: (value) {
//                     if (!isText(value)) {
//                       return "Please enter valid text";
//                     }
//                     return null;
//                   },
//                 ),
//                 CustomTextFormField(
//                   width: 357,
//                   focusNode: FocusNode(),
//                   controller: controller.groupSixtySixController,
//                   hintText: "lbl_phone_number".tr,
//                   margin: getMargin(
//                     top: 35,
//                   ),
//                   textInputType: TextInputType.phone,
//                   validator: (value) {
//                     if (!isValidPhone(value)) {
//                       return "Please enter valid phone number";
//                     }
//                     return null;
//                   },
//                 ),
//                 CustomTextFormField(
//                   width: 357,
//                   focusNode: FocusNode(),
//                   controller: controller.emailFormTextFeildController,
//                   hintText: "lbl_email".tr,
//                   margin: getMargin(
//                     top: 35,
//                   ),
//                   textInputAction: TextInputAction.done,
//                   textInputType: TextInputType.emailAddress,
//                   validator: (value) {
//                     if (value == null ||
//                         (!isValidEmail(value, isRequired: true))) {
//                       return "Please enter valid email";
//                     }
//                     return null;
//                   },
//                 ),
//                 Container(
//                   margin: getMargin(
//                     left: 2,
//                     top: 35,
//                     right: 1,
//                   ),
//                   padding: getPadding(
//                     left: 29,
//                     top: 16,
//                     right: 29,
//                     bottom: 16,
//                   ),
//                   decoration: AppDecoration.outlineBlack9000f.copyWith(
//                     borderRadius: BorderRadiusStyle.roundedBorder10,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: getPadding(
//                           bottom: 4,
//                         ),
//                         child: Text(
//                           "lbl_password".tr,
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtPoppinsRegular20,
//                         ),
//                       ),
//                       CustomImageView(
//                         svgPath: ImageConstant.imgEdit,
//                         height: getSize(
//                           20.00,
//                         ),
//                         width: getSize(
//                           20.00,
//                         ),
//                         margin: getMargin(
//                           top: 2,
//                           right: 4,
//                           bottom: 12,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: Padding(
//                     padding: getPadding(
//                       top: 53,
//                       right: 12,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         CustomButton(
//                           height: 72,
//                           width: 148,
//                           text: "lbl_save".tr,
//                           variant: ButtonVariant.OutlineRed500_1,
//                           shape: ButtonShape.RoundedBorder10,
//                           padding: ButtonPadding.PaddingAll19,
//                           fontStyle: ButtonFontStyle.PoppinsBold18,
//                         ),
//                         CustomButton(
//                           height: 72,
//                           width: 148,
//                           text: "lbl_edit".tr,
//                           margin: getMargin(
//                             left: 21,
//                           ),
//                           variant: ButtonVariant.FillAmber500,
//                           shape: ButtonShape.RoundedBorder10,
//                           padding: ButtonPadding.PaddingAll19,
//                           fontStyle: ButtonFontStyle.PoppinsBold18,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
