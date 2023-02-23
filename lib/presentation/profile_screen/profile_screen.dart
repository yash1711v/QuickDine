import 'dart:ffi';

import '../../Database/DatabaseServices.dart';
import '../../preferences/shp.dart';
import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/core/utils/validation_functions.dart';
import 'package:quickdine/widgets/custom_button.dart';
import 'package:quickdine/widgets/custom_text_form_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  get controller => ProfileController(); // Agar Undefined Controller ae to ye aega get controller=>"Os class ka Controler"
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _FirstName=TextEditingController();
  late  TextEditingController _lastname=TextEditingController();
  late TextEditingController _PhoneNumbercontroler=TextEditingController();
  late  TextEditingController _emailControler=TextEditingController();
  late TextEditingController _PassControler=TextEditingController();
  final FocusNode _firstname=FocusNode();
  final FocusNode _lasttname=FocusNode();
  final FocusNode _PhoneNumber=FocusNode();
  final FocusNode _email=FocusNode();
  final FocusNode _password=FocusNode();
  bool _isVisible = false;
  String firstname="";
  String lastname="";
  String email="";
  String password="";
  String id="";
  String phone="";
  void initState() {
    super.initState();
    checkidValue();
    _PhoneNumbercontroler=TextEditingController();
    _FirstName=TextEditingController();
    _lastname=TextEditingController();
    _emailControler=TextEditingController();
    _PassControler=TextEditingController();
    _isVisible=true;
  }
  checkidValue() async {
    String Firstname= await shp().getFirstname()??"";
    String Lastname= await shp().getLastName()??"";
    String Phone= await shp().getPhone()??"";
    String Email= await shp().getemail()??"";
    String Password= await shp().getPassword()??"";
    String Uid=await shp().getUid();
    setState(() {
      firstname= Firstname;
      lastname=Lastname;
      phone=Phone;
      email=Email;
      password=Password;
      id=Uid;
    });
    print("----"+password+"---------");
  }
  String fname="";
  String lname="";
  String Phone="";
  String Email="";
  String pass="";
  @override
  Widget build(BuildContext context) {
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
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse60,
                        height: getSize(
                          124.00,
                        ),
                        width: getSize(
                          124.00,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            62.00,
                          ),
                        ),
                        margin: getMargin(
                          top: 13,
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
                            decoration:  InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 0,), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 5, color: Colors.deepOrange.shade100), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              //errorText: "Please enter valid text",
                              hintText: 'Enter Your First name',
                              labelText: firstname,
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
                            decoration:  InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 0,), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 5, color: Colors.deepOrange.shade100), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              hintText: 'Enter Your Last name',
                              labelText: lastname,
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
                            decoration:  InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 0,), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 5, color: Colors.deepOrange.shade100), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              //errorText: "Please enter valid text",
                              hintText: 'Enter Your PhoneNumber',
                              labelText: phone.toString(),
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
                            decoration:  InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(width: 0,), //<-- SEE HERE
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(width: 5, color: Colors.deepOrange.shade100), //<-- SEE HERE
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                //errorText: "Please enter valid text",
                                hintText: 'Enter Your Email',
                                labelText: email,
                                prefixIcon: Icon(Icons.mail,
                                  color: Colors.deepOrange,)
                            ),
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
                                  borderSide:
                                  BorderSide(width: 0,), //<-- SEE HERE
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(width: 5, color: Colors.deepOrange.shade100), //<-- SEE HERE
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                //errorText: "Please enter valid text",
                                hintText: 'Enter Password',
                                labelText: password,
                                prefixIcon: Icon(Icons.lock,
                                  color: Colors.deepOrange,),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isVisible=!_isVisible;
                                    });
                                  }, icon: Icon(_isVisible?Icons.visibility:Icons.visibility_off),
                                  padding: EdgeInsets.fromLTRB(20, 0, 15, 0),
                                )
                            ),
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
                                    if(_FirstName.text==null){
                                      fname=firstname;
                                    }
                                    else{
                                      fname=_FirstName.text;
                                    }
                                    if(_lastname.text==null){
                                      lname=lastname;
                                    }
                                    else{
                                      lname=_lastname.text;
                                    }
                                    if(_emailControler.text==null){
                                      Email=email;
                                    }
                                    else{
                                      Email=_emailControler.text;
                                    }
                                    if(_PassControler.text==null){
                                      pass=password;
                                    }
                                    else{
                                      pass=_PassControler.text;
                                    }
                                    if(_PhoneNumbercontroler.text==null){
                                      Phone=phone.toString();
                                    }
                                    else{
                                      Phone=_PhoneNumbercontroler.text;
                                    }
                                  });
                                  Future.delayed(Duration(seconds: 1),() async{
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
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          ),
        ),
      ),
    );
  }
}
onTapSave() async{

}

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
