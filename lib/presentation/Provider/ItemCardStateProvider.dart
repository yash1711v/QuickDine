import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardProvider with ChangeNotifier{
  int _counter=0;
  int get counter=>_counter;

   double _price=0.0;
  double get price=>_price;

  void _setPRefItems() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    prefs.setInt("cart_item", _counter);
    prefs.setDouble("total_price", _price);
    notifyListeners();
  }
  void _getPRefItems() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    _counter=prefs.getInt("cart_item")??0;
    _price=prefs.getDouble("total_price")??0.0;
    notifyListeners();
  }
  void addCounter(){
    _counter++;
    _setPRefItems();
    notifyListeners();
    }
  void decCounter(){
    _counter--;
    _setPRefItems();
    notifyListeners();
    }

 int getCounter(){
  _getPRefItems();
  print(_counter);
    return _counter;
    }
//For Total Price
  void addprice(double productprice){
   _price=_price+productprice;
    _setPRefItems();
    notifyListeners();
  }
  void decprice(double productprice){
    _price=_price-productprice;
    _setPRefItems();
    notifyListeners();
  }

 double getprice(){
    _getPRefItems();
    return _price;
  }


}