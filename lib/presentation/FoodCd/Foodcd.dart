import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/preferences/shp.dart';
import 'package:quickdine/presentation/Provider/ItemCardStateProvider.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:provider/src/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../widgets/custom_icon_button.dart';
import '../reserve_table_screen/controller/reserve_table_controller.dart';
import 'bottomSheet.dart';

  class FoodCards extends StatefulWidget {
  //const FoodCards({Key? key}) : super(key: key);
 String CuisineNAme;
  FoodCards({ required this.CuisineNAme});

  @override
  State<FoodCards> createState() => _FoodCardsState();
}

class _FoodCardsState extends State<FoodCards> {
  get controller => ReserveTableController();
  var ResID;
  List? Items;
  List? FoodList;
  bool Order=false;
 int count=0;
  int j=0;
  List? items=[];
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
   // print("----" + ResID + "---------");
    List? Itm = await shp().getCount()?? [];
    setState(() {
      for(int i=0;i<Itm!.length;i++){
        items!.add(Itm[i]);
      }
    });
    items!.sort();
      print(items.toString());
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
          count++;
        });
      }
    }
    // print(j);
  }
 // final _tabStream = Supabase.instance.client.from('food_item').stream(
 //     primaryKey: ['id']);
  List? itemid=[];
  @override
  Widget build(BuildContext context) {
    int Count1=0;
   //final cart=Provider.of<CardProvider>(context);

   final cart=new CardProvider();
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
        itemCount: count,
        itemBuilder: (BuildContext context, int index) {
        List<int> loca=[];
          for(int i=0;i<j;i++){
            //print(i);
            if(FoodList![i]['restid']==ResID && FoodList![i]['cuisine']==widget.CuisineNAme){
              //print(FoodList![i]['id'].toString()+" "+FoodList![i]['foodname']);
                loca.add(i);
            }
          }

          //count1=0;
          return Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25)
            ),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context,
                        builder:((context) {
                          return SimpleDialog(
                            backgroundColor: Colors.amber.shade100,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius
                                    .circular(
                                    24)),
                            title: Container(
                              margin: getMargin(),
                              child: Center(
                                child: ClipRRect(
                                  borderRadius:  BorderRadius
                                      .circular(
                                      15),
                                  child: Image.network(

                                    FoodList![loca[index]]['food_photo'],
                                    filterQuality:FilterQuality.high,
                                    fit: BoxFit.cover,
                                    loadingBuilder: (BuildContext context,Widget child, ImageChunkEvent?
                                    loadingProgress){
                                      if (loadingProgress ==null) {
                                        return child;
                                      } else {
                                        return Lottie
                                            .asset('assets2/123408-image-not-preview.json');
                                      }
                                    },
                                    height: 150,
                                    width: 150,
                                    
                                  ),
                                ),
                              ),
                            ),
                            children: [
                              Row(
                                children: [
                                   Container(
                                     margin:getMargin(left: 5),
                                     child: SizedBox(
                                       width:337,
                                       child: Text(
                                            "  "+FoodList![loca[index]]['foodname']+"(INR: "+FoodList![loca[index]]['price']+")",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.yellow.shade900,
                                            fontSize: 20
                                          ),),
                                     ),
                                   ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: getMargin(left: 130,top: 10),
                                      child: Text("Description",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                      ),
                                        textAlign: TextAlign.center,
                                      )),

                                ],
                              ),
                            Row(
                            children: [ Container(
                                margin: getMargin(left: 50,top: 10),
                                child: SizedBox(
                                  width:250,
                                  height: FoodList![loca[index]]['Description'].toString().length.toDouble(),
                                  child: Text(
                                    FoodList![loca[index]]['Description'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ))],
                          )
                            ],
                          );
                        })
                    );
                  },
                  child: Card(

                  color: Colors.white,
                  elevation: 5,
                    child: Stack(
                      children: [Row(
                        children: [
                                  Container(
                                      margin: getMargin(left: 8,top: 8,bottom: 8),
                                      child:  ClipRRect(
                                        borderRadius:  BorderRadius
                                            .circular(
                                            15),
                                        child: Image.network(

                                            FoodList![loca[index]]['food_photo'],
                                          filterQuality:FilterQuality.high,
                                          fit: BoxFit.cover,
                                          loadingBuilder: (BuildContext context,Widget child, ImageChunkEvent?
                                          loadingProgress){
                                            if (loadingProgress ==null) {
                                              return child;
                                            } else {
                                              return Lottie
                                                  .asset('assets2/123408-image-not-preview.json');
                                            }
                                          },
                                          height: 140,
                                          width: 110,
                                        ),
                                      ),
                                  ),
                                 Container(
                                     margin: getMargin(left: 15,bottom: 100),
                                     child: SizedBox(
                                       width: 250,
                                       child: Text(
                                           FoodList![loca[index]]['foodname'],
                                         style: TextStyle(
                                           fontSize: 20,
                                           fontWeight: FontWeight.bold
                                         ),
                                       ),
                                     ),
                                 ),

                        ],
                      ),
                        Container(
                          margin: getMargin(left: 132,top: 50),
                          child: Text(
                            "INR:"+" "+FoodList![loca[index]]['price'],
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(left: 335,top: 45),
                          child:  Order? Icon(Icons.remove_shopping_cart_rounded,
                            size: 40,
                              color:Colors.yellow.shade900,
                          ):IconButton(onPressed: () {

                            setState(() {
                              itemid?.add(FoodList![loca[index]]['id'].toString());
                              for(int i=0;i<itemid!.length;i++){items!.add(itemid![i]);}
                              // itemid?.forEach((element) {print(element);});
                             print( itemid.toString());
                              print( items.toString());
                              shp().setCount(items!);
                            });

                           }, icon: Icon(Icons.add_shopping_cart,
                            size: 40,
                            color: Colors.yellow.shade900,
                          ),)),

                        //
                        // Container(
                        //   margin: getMargin(left: 300,top: 80),
                        //   child: Text(
                        //    count1.toString(),
                        //     style: TextStyle(
                        //         fontSize: 20,
                        //         fontWeight: FontWeight.bold
                        //     ),
                        //   ),
                        //
                        // ),

                        //  Container(
                        //   margin: getMargin(left: 300,top: 65),
                        //   child: CustomIconButton(
                        //       height: 58,
                        //       width: 59,
                        //       onTap: (){
                        //        setState(() {
                        //          if(count1<10){
                        //            count1=count1+1;
                        //            print(count1);
                        //          }
                        //          // Cou=0;
                        //          // Cou=FoodList![loca[index]]['price']*count1;
                        //          // }
                        //        });
                        //       },
                        //       margin:
                        //       getMargin(left: 35),
                        //       shape: IconButtonShape
                        //           .RoundedBorder5,
                        //       child: CustomImageView(
                        //           svgPath: ImageConstant
                        //               .imgPlusBlack900)),
                        // ),

                      ]
                    ),

                  ),
                ),

              ]),
          );
        }
        );

  }


}
