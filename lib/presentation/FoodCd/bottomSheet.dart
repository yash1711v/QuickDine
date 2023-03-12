import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/utils/size_utils.dart';
import '../../preferences/shp.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  List? item=[];
  String ResID="";

  List? fitems=[];
  void initState() {
    //readData();
    super.initState();
    checkidValue();
  }
  checkidValue() async {
    List? FoodList=[];
    String uid = await shp().getresId()?? "";
   setState(() {
     ResID = uid;
   });
  print("-------------"+ResID);
   List?Itm = await shp().getCount()?? [];
    List<int>items=[];
    setState(() {
       for(int i=0;i<Itm!.length;i++){
          items!.add(int.parse(Itm[i]));
       //print(Itm[i]);
      }
    });
    items.sort();
    print(items.toString());
    //This IS for Reserve table----------------------------
    var response3 =
    await Supabase.instance.client.from('food_item').select().execute();
    FoodList = response3.data.toList();
    // FoodList?.sort();
    int j=0;
    List<int>Fooditemid=[];
    FoodList!.forEach((element) {
      j++;
    });

    for (int i = 0; i < j; i++) {
      setState(() {
        Fooditemid.addIf(FoodList![i]['restid'] ==  ResID,
            FoodList![i]['id']);
      });

    }
   // print("///////////////////////////");
    Fooditemid.sort();
    //Fooditemid.sort();
    print("Food List Item id Which is Assosiated with Respective ResId: "+Fooditemid.toString());
    //items.sort();

    for (int i = 0; i <items.length; i++) {
      for(int k=0;k<Fooditemid!.length;k++)
      {
        if(items[i]==Fooditemid[k]){
         //print("true");
          item!.add(items[i]);
        }
      }
    }

    for (int i = 0; i <item!.length; i++) {
      for(int k=0;k<j;k++)
      {
        if(FoodList![k]['id']==item![i]){
        print("true");
        fitems!.add(FoodList![k]);

      }
      }
    }
    print("///////////////////////////");
    for(int h=0;h<fitems!.length;h++){
      print( fitems![h]['id']);
    }
    print("///////////////////////////");
   item!.sort();
    print("Food List Item id present in the PArticular Cart Item: "+item.toString()+"Length: "+item!.length.toString());
   print("Fitems Length: "+fitems!.length.toString());
  }
  @override
  Widget build(BuildContext context) {


    return ListView.builder(
        // shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: fitems!.length,
        itemBuilder: (BuildContext context, int index){
         return Container(
           height: 100,
           width: 150,
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25)
           ),
           child:Stack(
             children: [
               GestureDetector(
                 onTap: (){},
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

                                   fitems![index]['food_photo'],
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
                                   height: 70,
                                   width: 60,
                                 ),
                               ),
                             ),
                             Container(
                               margin: getMargin(left:15,bottom: 20),
                               child: SizedBox(
                                 width:  110,
                                 child: Text(
                                   fitems![index]['foodname'],
                                   style: TextStyle(
                                       fontSize: 15,
                                       fontWeight: FontWeight.bold
                                   ),
                                 ),
                               ),
                             ),

                           ],
                         ),
                           Container(
                             margin: getMargin(left: 85,top: 55),
                             child: Text(
                               "INR:"+" "+fitems![index]['price'],
                               style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold
                               ),
                             ),
                           ),
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
               )
             ],
           ),
         );
        }
    );
  }
}
