import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quickdine/preferences/shp.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

  class FoodCards extends StatefulWidget {
  //const FoodCards({Key? key}) : super(key: key);
 String CuisineNAme;
  FoodCards({ required this.CuisineNAme});

  @override
  State<FoodCards> createState() => _FoodCardsState();
}

class _FoodCardsState extends State<FoodCards> {
  var ResID;
  List? Items;
  List? FoodList;
String name="";
String Price="";
int Quant=0;
int count=0;
  int j=0;
  void initState() {
    readData();
    super.initState();
    checkidValue();

  }
  checkidValue() async {
    String uid = await shp().getresId()?? "";
    setState(() {
      ResID = uid;
    });
    print("----" + ResID + "---------");
  }
  Future<void> readData() async {
    var response3 =await Supabase.instance.client.from('food_item').select().execute();
    FoodList=response3.data.toList();

    FoodList!.forEach((element) {
      setState(() {
        j++;
      });
    });
    for(int i=0;i<j;i++){
      //print(i);
      if(FoodList![i]['restid']==ResID && FoodList![i]['cuisine']==widget.CuisineNAme){
        print(FoodList![i]['id'].toString()+" "+FoodList![i]['foodname']);
        setState(() {
          name=FoodList![i]['foodname'];
          Price=FoodList![i]['price'];
          count++;
        });
      }
    }
    // print(j);
  }
 // final _tabStream = Supabase.instance.client.from('food_item').stream(
 //     primaryKey: ['id']);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
        itemCount: count,
        itemBuilder: (BuildContext context, int index) {
        List<int> loca=[];
          for(int i=0;i<j;i++){
            //print(i);
            if(FoodList![i]['restid']==ResID && FoodList![i]['cuisine']==widget.CuisineNAme){
              print(FoodList![i]['id'].toString()+" "+FoodList![i]['foodname']);
                loca.add(i);
            }
          }
          return Card(
            child: Row(
              children: [
                      Text(FoodList![loca[index]]['foodname']),
                      Text(FoodList![loca[index]]['price']),
              ],
            ),
          );
        }
        );

  }

  Widget card(String name,String price,int Quant) {
    return Card(
      child: Row(
        children: [
          Text(name),
          Text(price.toString()),
          Text(Quant.toString()),
        ],
      ),
    );
  }

}
