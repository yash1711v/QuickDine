import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/preferences/shp.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../widgets/custom_icon_button.dart';

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
  int count1=0;
  int Cou=0;
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
          return Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25)
            ),
            child: Stack(
              children: [Card(
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
                                        fit: BoxFit.cover,
                                        loadingBuilder: (BuildContext context,Widget child, ImageChunkEvent?
                                        loadingProgress){
                                          if (loadingProgress ==null) {
                                            return child;
                                          } else {
                                            return Lottie
                                                .asset(
                                                'assets2/123408-image-not-preview.json');
                                          }
                                        },
                                        height: 120,
                                        width: 100,

                                      ),
                                    ),

                                ),
                               Container(
                                   margin: getMargin(left: 15,bottom: 50),
                                   child: Text(
                                       FoodList![loca[index]]['foodname'],
                                     style: TextStyle(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold
                                     ),
                                   ),
                               ),

                      ],
                    ),
                      Container(
                        margin: getMargin(left: 122,top: 70),
                        child: Text(
                          "INR:"+" "+FoodList![loca[index]]['price'],
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(left: 190,top: 35),
                        child: CustomIconButton(
                            height: 58,
                            width: 59,
                            onTap: (){
                              setState(() {
                                if(count1>0){
                                  count1=count1-1;
                                  // if(count1!=0){
                                  //   Cou=0;
                                  //   Cou=FoodList![loca[index]]['price']*count1;
                                  // }
                                }
                              });
                            },
                            margin:
                            getMargin(left: 35),
                            shape: IconButtonShape
                                .RoundedBorder5,
                            child: CustomImageView(
                                svgPath: ImageConstant
                                    .iconMinus)),
                      ),

                      Container(
                        margin: getMargin(left: 300,top: 55,),
                        child: Text(
                         count1.toString(),
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),

                       Container(
                        margin: getMargin(left: 300,top: 35),
                        child: CustomIconButton(
                            height: 58,
                            width: 59,
                            onTap: (){
                             setState(() {
                               if(count1<10){
                                 count1=count1+1;
                               }
                               // Cou=0;
                               // Cou=FoodList![loca[index]]['price']*count1;
                               // }
                             });
                            },
                            margin:
                            getMargin(left: 35),
                            shape: IconButtonShape
                                .RoundedBorder5,
                            child: CustomImageView(
                                svgPath: ImageConstant
                                    .imgPlusBlack900)),
                      ),

                    ]
                  ),
                ),

              ]),
          );
        }
        );

  }


}
