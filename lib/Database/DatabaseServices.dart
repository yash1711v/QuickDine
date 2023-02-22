import 'package:flutter/material.dart';
import 'package:quickdine/UserModel/SupabaseUser.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase/supabase.dart';

import '../UserModel/usermodel.dart';

class DatabaseServices{
  final _collection = Supabase.instance.client.from('user');
  Future updateUserData(String firstName, String lastName, String phoneNumber, String emailID, String password, String uid)
  async {
    return await _collection.insert([{
      'first_name': firstName,
      'last_name': lastName,
      'phone_no': phoneNumber,
      'email_Id': emailID,
      'Password': password,
      'id': uid,
    }]);
  }

  //Fetching Data
  Future fetchUser() async {
    try {
      var response = await _collection.select().execute();
      print(response.data);
    }
    catch(e) {
      print(e.toString());
    }
  }
}