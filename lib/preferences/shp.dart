import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class shp {
  late String Uid = "";
   String profileLink = "";
  String firstName = "";
  String LastName = "";
  String email = "";
  String Password = "";
  String Phone = "";
  String restId = "";
  getUid() async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    Uid = shpui.getString("Uid")!;
    return Uid;
  }

  setUid(String Id) async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    shpui.setString("Uid", Id);
    // return Uid;
  }
  getresId() async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    restId = shpui.getString("resid")!;
    return restId;
  }

  setresId(String resId) async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    shpui.setString("resid", resId);
    // return Uid;
  }

  getFirstname() async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    firstName = shpui.getString("firstname")!;
    return firstName;
  }

  setFirstname(String firstname) async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    shpui.setString("firstname", firstname);
    // return Uid;
  }

  getLastName() async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    LastName = shpui.getString("Lastname")!;
    return LastName;
  }

  setLastName(String lastname) async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    shpui.setString("Lastname", lastname);
    // return Uid;
  }

  getemail() async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    email = shpui.getString("email")!;
    return email;
  }

  setemail(String Email) async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    shpui.setString("email", Email);
    // return Uid;
  }

  getPassword() async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    Password = shpui.getString("password")!;
    return Password;
  }

  setPassword(String password) async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    shpui.setString("password", password);
    // return Uid;
  }

  getPhone() async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    Phone = shpui.getString("phone")!;
    return Phone;
  }

  setPhone(String phone) async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    shpui.setString("phone", phone);
    // return Uid;
  }
  setProfileink(String profileLink) async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    shpui.setString("profileLink", profileLink);
    // return Uid;
  }
  getProfileink() async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    profileLink = shpui.getString("profileLink")!;
    return profileLink;
  }

  List Count=[[],[]];
  setCount(List count) async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    shpui.setString("Count", jsonEncode(count));
    // return Uid;
  }
  getCount() async {
    SharedPreferences shpui = await SharedPreferences.getInstance();
    Count = jsonDecode(shpui.getString("Count")!);
    Set<String> cat = {};
    Count.forEach((element) {
      cat.add(element);
    });
    Count.clear();
    cat.forEach((element) {
      Count.add(element);
    });
    // Count.sort();
    return Count;
  }
}
