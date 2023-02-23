import 'package:shared_preferences/shared_preferences.dart';

class shp {
  late String Uid = "";
  String firstName = "";
  String LastName = "";
  String email = "";
  String Password = "";
  String Phone = "";
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
}
