import 'package:flutter/material.dart';
import 'package:quickdine/UserModel/SupabaseUser.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase/supabase.dart';

import '../UserModel/usermodel.dart';

class DatabaseServices{
  final  _collection = Supabase.instance.client.from('user');
  Future updateuserData(String FirstName,String lastname,String phoneNumber,String emailID,String Password,String Uid) async{

    return await _collection.insert([{
      'first_name': FirstName,
      'last_name': lastname,
      'phone_no': phoneNumber,
      'email_Id': emailID,
      'Password': Password,
      'id':  Uid,
    }]);
  }
//Fetching Data
Future  fetchUser() async {
    try{
      var resposnse=await _collection.select().execute();
      print(resposnse.data);
    }
    catch(e){
      print(e.toString());
    }
}
}