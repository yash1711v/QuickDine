import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';
import 'package:quickdine/Authentication/supabasecredential.dart';
import 'package:quickdine/preferences/shp.dart';
import 'package:quickdine/presentation/DrawerWidget/DrawerItem.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:geolocator/geolocator.dart';
import '../../bttmNav.dart';
import '../DrawerWidget/DrawerWidget.dart';
import 'controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quickdine/core/app_export.dart';
import 'package:quickdine/widgets/app_bar/appbar_dropdown.dart';
import 'package:quickdine/widgets/custom_search_view.dart';
import 'package:geocoding/geocoding.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:permission_handler/permission_handler.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _currentIndex ;
  get controller => HomeController();
  String id = "";
  List? myList;
  List<Map<String, dynamic>> userList = [];
  int i = 0;
  int R = 0;
  String resId = "";
  String loca="";
  void initState() {
    super.initState();
    readData();
    checkidValue();
    _currentIndex= 0;
    getCurrentLocation();
  }
  static String supabaseURL = "https://omadswcnxjdbrufimbwy.supabase.co";
  static String supabaseKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9tYWRzd2NueGpkYnJ1ZmltYnd5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzY2NjIxMzQsImV4cCI6MTk5MjIzODEzNH0.qq-CgehJSfyr0KKZQFRKSHAAkKDXB2ezFnRTq5SQ904";

  final SupabaseClient client = SupabaseClient(supabaseURL, supabaseKey);
  bool uploadState = false;
  String publicUrl = "";

  final _tabStream = Supabase.instance.client
      .from('restaurant')
      .stream(primaryKey: ['id']).eq('isMember', true);

  //for restaurant near You
  final _tabStream2 = Supabase.instance.client.from('restaurant').stream(
      primaryKey: [
        'id'
      ]).eq("rest_address",
      '3rd, K-23, Rakesh Marg, Pocket F, Nehru Nagar III, Nehru Nagar, Ghaziabad, Uttar Pradesh 201001');

  //for Best Offers
  final _tabStream3 =
      Supabase.instance.client.from('restaurant').stream(primaryKey: ['id']);

  //for checking the data in Preferences
  checkidValue() async {
    String uid = await shp().getUid() ?? "";
    setState(() {
      id = uid;
    });
    print("----" + id + "---------");
  }

  Future<void> readData() async {
    var response =
        await Supabase.instance.client.from('user').select().execute();

    setState(() {
      myList = response.data.toList();
      myList!.forEach((element) {
        userList.add(element);
        i++;

      });
    });
    for (int j = 0; j < i; j++) {
      if (id == userList[j]['id']) {
        print("id is at : ");
        print(j);
        print(userList[j]['first_name']);
        shp().setFirstname(userList[j]['first_name']);
        shp().setLastName(userList[j]['last_name']);
        shp().setemail(userList[j]['email_Id']);
        shp().setPassword(userList[j]['Password']);
        //print(userList[j]['Password']);
        shp().setPhone(userList[j]['phone_no']);
        shp().setProfileink(userList[j]['profile_photo']);
        print(userList[j]['profile_photo']);
      }
    }
  }
  //Code For Getting Current Location
void getCurrentLocation() async{
    var position=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark placeMark=placemarks[0];
    String? name = placeMark.name;
    String? subLocality = placeMark.subLocality;
    String? locality = placeMark.locality;
    String? administrativeArea = placeMark.administrativeArea;
    String? postalCode = placeMark.postalCode;
    String? country = placeMark.country;
    String address = "${name}, ${subLocality}, ${locality}, ${administrativeArea} ${postalCode}, ${country}";
      print(locality);
      setState(() {
        loca=locality!;
      });

}
  @override
  Widget build(BuildContext context) {
    print(userList);
    print(loca);
    //readData();
    //userList.toList(growable: true);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
      //Using this to Extend the Home Screen
      extendBody: true,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu_rounded,
                  color: Colors.black,
                  size: 50, // Changing Drawer Icon Size
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Container(
            child: Row(
              children: [
                Container(
                  margin: getMargin(left: 80),
                  child: Icon(Icons.location_on,
                  color: Colors.black,),
                ),
                Text(loca,
                style: TextStyle(
                  color: Colors.black
                ),),
              ],
            ),
          ),
        actions: [
          Lottie.asset('assets2/Shopping.json')
        ],
    ),
      body: Stack(
        children: [
          //buildDrawer(),
          buildPAge(),
        ],
      ),
      drawer: buildDrawer(),
      bottomNavigationBar: BottomNavBbbar(currentindex: _currentIndex),
    );
  }

  Widget buildDrawer() => DrawerWidget(
        onSelectedItem: (item) {
          switch (item) {
            case DrawerItems.Info:
              return onTapInfo();
            case DrawerItems.profile:
              return onTapProfile();
            case DrawerItems.Pre_Order:
              return  onTapYourORder();
            case DrawerItems.Offers:
              return onHelp();
            case DrawerItems.reservation:
              return onTapBottomReservationButton();
            case DrawerItems.Logout:
              return onTaplogout();
          }
        },
      );
  Widget buildPAge() {
    return Container(
      child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
              child: Padding(
                  padding: getPadding(left: 11, top: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomSearchView(
                          width: 343,
                          focusNode: FocusNode(),
                          controller: controller.searchButtonController,
                          hintText: "Search For Restaurant,Cousins",
                          //"msg_search_for_restaurants".tr,
                          margin: getMargin(top: 22),
                          alignment: Alignment.center,
                          prefix: Container(
                            margin: getMargin(
                                left: 18, top: 1, right: 22),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search_rounded, size: 20),
                            ),
                          ),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(50.00)),
                          // suffix: Container(
                          //   child: IconButton(
                          //     onPressed: () {},
                          //     icon: Icon(Icons.mic, size: 20),
                          //   ),
                          // ),
                        ),
                        //Restaurant Near You
                        Padding(
                            padding: getPadding(left: 9, top: 21, right: 29),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_restaurants_near".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium20),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtSeeallOne();
                                      },
                                      child: Padding(
                                          padding:
                                              getPadding(top: 3, bottom: 7),
                                          child: Text("lbl_see_all".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12)))
                                ])),
                        Container(
                          child: StreamBuilder<List<Map<String, dynamic>>>(
                            stream: _tabStream2,
                            builder: (context, snapshot) {
                              if (!snapshot.hasData) {
                                return Lottie.asset("assets2/featuredres.json");
                              }
                              final tab = snapshot.data!;
                              return Row(
                                children: <Widget>[
                                  Expanded(
                                    child: SizedBox(
                                      height: 250,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: tab.length,
                                        scrollDirection: Axis.horizontal,
                                        //physics: NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          double avgRating = tab[index]
                                                  ['avg_stars']
                                              .toDouble();
                                          return Align(
                                            alignment: Alignment.bottomLeft,
                                            child: SizedBox(
                                              width: 200,
                                              height: 1000,
                                              child: GestureDetector(
                                                onTap: () {

                                                  showDialog(
                                                      context: context,
                                                      builder: ((context) {
                                                        return SimpleDialog(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24)),
                                                          title: Text(
                                                              "Choose What You Want"),
                                                          children: [
                                                            Row(
                                                              children: [
                                                                GestureDetector(
                                                                  onTap: (){
                                                                    onTapBottomReservationButton();
                                                                           },
                                                                  child: Container(
                                                                    margin:
                                                                        getMargin(
                                                                            left:
                                                                                30,
                                                                            top:
                                                                                20),
                                                                    child: Icon(Icons
                                                                        .fastfood_rounded,
                                                                      color: Colors.yellow.shade900,
                                                                    size: 100,
                                                                    ),
                                                                  ),
                                                                ),
                                                                GestureDetector(
                                                                  onTap: (){
                                                                    onTapDialogueReservetableButton();
                                                                  },
                                                                  child: Container(
                                                                    margin:
                                                                    getMargin(
                                                                        left:
                                                                        60,
                                                                        top:
                                                                        50),
                                                                    child: Icon(Icons
                                                                        .table_bar_rounded,
                                                                      color: Colors.yellow.shade900,
                                                                      size: 110,
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),

                                                            Row(
                                                              children: [
                                                                Container(
                                                                  margin:getMargin(left: 35, top: 4),
                                                                  child: Text("Pre-Order",
                                                                  style: TextStyle(
                                                                    fontWeight: FontWeight.w700,
                                                                    fontSize: 15
                                                                  ),),
                                                                ),
                                                                Container(
                                                                  margin:getMargin(left: 90, top: 4),
                                                                  child: Text("Reserve Table",
                                                                    style: TextStyle(
                                                                        fontWeight: FontWeight.w700,
                                                                        fontSize: 15
                                                                    ),),
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        );
                                                      }));
                                                  setState(() {
                                                    resId = tab[index]['id'];
                                                  });
                                                  shp().setresId(resId);
                                                },
                                                child: Card(
                                                  color: Colors.white,
                                                  elevation: 5,
                                                  // Neeche ke do comment hata dio Card ka background hatane ke liya or Uppr ka comment kardio color and elevation kon
                                                  // color: Colors.transparent,
                                                  // elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  margin: EdgeInsets.fromLTRB(
                                                      5, 6.0, 0.0, 5.0),
                                                  child: ListTile(
                                                    title: Wrap(children: [
                                                      Container(
                                                        margin: getMargin(
                                                          top: 10,
                                                        ),
                                                        child: Align(
                                                          // alignment: Alignment.center,
                                                          child: Center(
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child:
                                                                      SizedBox(
                                                                    height: 145,
                                                                    width: 157,
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              15),
                                                                      child: Image
                                                                          .network(
                                                                        tab[index]
                                                                            [
                                                                            'rest_photo'],
                                                                        loadingBuilder: (BuildContext context,
                                                                            Widget
                                                                                child,
                                                                            ImageChunkEvent?
                                                                                loadingProgress) {
                                                                          if (loadingProgress ==
                                                                              null) {
                                                                            return child;
                                                                          } else {
                                                                            return Lottie.asset('assets2/123408-image-not-preview.json');
                                                                          }
                                                                        },
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            getMargin(top: 0),
                                                        child: Wrap(children: [
                                                          Row(
                                                            children: <Widget>[
                                                              Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: SizedBox(
                                                                  width: 98,
                                                                  child: Text(
                                                                    tab[index][
                                                                        'rest_name'],
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding:
                                                                            getPadding(
                                                                          top:
                                                                              15,
                                                                          bottom:
                                                                              17,
                                                                          left:
                                                                              0,
                                                                        ),
                                                                        child:
                                                                            Align(
                                                                          alignment:
                                                                              Alignment.centerRight,
                                                                          child:
                                                                              RatingBar.builder(
                                                                            initialRating:
                                                                                avgRating,
                                                                            minRating:
                                                                                1,
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            allowHalfRating:
                                                                                true,
                                                                            itemSize:
                                                                                getVerticalSize(
                                                                              13.00,
                                                                            ),
                                                                            unratedColor:
                                                                                ColorConstant.gray400,
                                                                            itemCount:
                                                                                5,
                                                                            ignoreGestures:
                                                                                true,
                                                                            updateOnDrag:
                                                                                false,
                                                                            onRatingUpdate:
                                                                                (rating) {},
                                                                            itemBuilder:
                                                                                (context, _) {
                                                                              return Icon(
                                                                                Icons.star,
                                                                                color: ColorConstant.amber500,
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ]),
                                                              ),
                                                            ],
                                                          ),
                                                          Container(
                                                            margin: getMargin(
                                                                top: 0),
                                                            child: Row(
                                                              children: <
                                                                  Widget>[
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      SizedBox(
                                                                    width: 10,
                                                                    child: Icon(
                                                                      Icons
                                                                          .percent_sharp,
                                                                      color: Colors
                                                                          .orangeAccent,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin:
                                                                      getMargin(
                                                                    left: 15,
                                                                  ),
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                          tab[index]['rest_discount_pecentage']
                                                                              .toString(),
                                                                          style: TextStyle(
                                                                              fontSize: 20,
                                                                              fontWeight: FontWeight.bold)),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.only(left: 8),
                                                                        child: Text(
                                                                            "OFF",
                                                                            style:
                                                                                TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ]),
                                                      ),
                                                    ]),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
//From Here Featured RestUarant Cards Are Visible
                        Padding(
                            padding: getPadding(left: 7, top: 19),
                            child: Text("msg_featured_restaurants".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium20)),
                        Container(
                          child: StreamBuilder<List<Map<String, dynamic>>>(
                            stream: _tabStream,
                            builder: (context, snapshot) {
                              if (!snapshot.hasData) {
                                return Lottie.asset("assets2/featuredres.json");
                              }
                              final tab = snapshot.data!;

                              return ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: tab.length,
                                itemBuilder: (context, index) {
                                  double avgRating =
                                      tab[index]['avg_stars'].toDouble();
                                  return Align(
                                    alignment: Alignment.bottomLeft,
                                    child: SizedBox(
                                      width: 760,
                                      height: 275,
                                      child: GestureDetector(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: ((context) {
                                                return SimpleDialog(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          24)),
                                                  title: Text(
                                                      "Choose What You Want"),
                                                  children: [
                                                    Row(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: (){
                                                            onTapBottomReservationButton();
                                                          },
                                                          child: Container(
                                                            margin:
                                                            getMargin(
                                                                left:
                                                                30,
                                                                top:
                                                                20),
                                                            child: Icon(Icons
                                                                .fastfood_rounded,
                                                              color: Colors.yellow.shade900,
                                                              size: 100,
                                                            ),
                                                          ),
                                                        ),
                                                        GestureDetector(
                                                          onTap: (){
                                                            onTapDialogueReservetableButton();
                                                          },
                                                          child: Container(
                                                            margin:
                                                            getMargin(
                                                                left:
                                                                60,
                                                                top:
                                                                50),
                                                            child: Icon(Icons
                                                                .table_bar_rounded,
                                                              color: Colors.yellow.shade900,
                                                              size: 110,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),

                                                    Row(
                                                      children: [
                                                        Container(
                                                          margin:getMargin(left: 35, top: 4),
                                                          child: Text("Pre-Order",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.w700,
                                                                fontSize: 15
                                                            ),),
                                                        ),
                                                        Container(
                                                          margin:getMargin(left: 90, top: 4),
                                                          child: Text("Reserve Table",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.w700,
                                                                fontSize: 15
                                                            ),),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              }));
                                          setState(() {
                                            resId = tab[index]['id'];
                                          });
                                          shp().setresId(resId);
                                        },
                                        child: Card(
                                          color: Colors.white,
                                          elevation: 5,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18)),
                                          margin: EdgeInsets.fromLTRB(
                                              0, 6.0, 10.0, 5.0),
                                          child: ListTile(
                                            title: Wrap(children: [
                                              Container(
                                                margin: getMargin(
                                                  top: 10,
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: SizedBox(
                                                          height: 130,
                                                          width: 365,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                            child:
                                                                Image.network(
                                                              tab[index][
                                                                  'rest_photo'],
                                                              fit: BoxFit.cover,
                                                              loadingBuilder:
                                                                  (BuildContext
                                                                          context,
                                                                      Widget
                                                                          child,
                                                                      ImageChunkEvent?
                                                                          loadingProgress) {
                                                                if (loadingProgress ==
                                                                    null) {
                                                                  return child;
                                                                } else {
                                                                  return Lottie
                                                                      .asset(
                                                                          'assets2/123408-image-not-preview.json');
                                                                }
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: getMargin(top: 5),
                                                child: Wrap(children: [
                                                  Row(
                                                    children: <Widget>[
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: SizedBox(
                                                          width: 188,
                                                          child: Text(
                                                            tab[index]
                                                                ['rest_name'],
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 15,
                                                                        bottom:
                                                                            20,
                                                                        left: 95 -
                                                                            19),
                                                                child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: RatingBar
                                                                      .builder(
                                                                    initialRating:
                                                                        avgRating,
                                                                    minRating:
                                                                        1,
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    allowHalfRating:
                                                                        true,
                                                                    itemSize:
                                                                        getVerticalSize(
                                                                      20.00,
                                                                    ),
                                                                    unratedColor:
                                                                        ColorConstant
                                                                            .gray400,
                                                                    itemCount:
                                                                        5,
                                                                    ignoreGestures:
                                                                        true,
                                                                    updateOnDrag:
                                                                        false,
                                                                    onRatingUpdate:
                                                                        (rating) {},
                                                                    itemBuilder:
                                                                        (context,
                                                                            _) {
                                                                      return Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: ColorConstant
                                                                            .amber500,
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            ]),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    margin: getMargin(top: 1),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: SizedBox(
                                                            width: 340,
                                                            child: Text(
                                                              tab[index][
                                                                  'rest_address'],
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: getMargin(top: 4),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: SizedBox(
                                                            width: 10,
                                                            child: Icon(
                                                              Icons
                                                                  .percent_sharp,
                                                              color: Colors
                                                                  .orangeAccent,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: getMargin(
                                                              left: 15),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                  tab[index][
                                                                          'rest_discount_pecentage']
                                                                      .toString(),
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            8),
                                                                child: Text(
                                                                    "OFF",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight.bold)),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ]),
                                              ),
                                            ]),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ])))),
    );
  }

  onTapStackrectanglefiftyfive() {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapTxtSeeall() {
    Get.toNamed(AppRoutes.promoScreen);
  }

  onTapTxtSeeallOne() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }

  onTapProfileIcon() {
    Get.toNamed(AppRoutes.profileSettingScreen);
  }

  onTapBottomSearchButton() async {
    Get.toNamed(AppRoutes.exploreScreen);
  }

  onTapBottomHomeButton() async {
    Get.toNamed(AppRoutes.homeScreen);
  }
  onTapYourORder() {
    Get.toNamed(AppRoutes.orderHistoryScreen);
  }
  onHelp() {
    Get.toNamed(AppRoutes.helpScreen);
  }

  onTapBottomReservationButton() {
    Get.toNamed(AppRoutes.reserveTableScreen);
  }
  onTapDialogueReservetableButton() {
    Get.toNamed(AppRoutes.reserverTableDetailsScreen);
  }

  onTapMenuIconButtonInTopAppBar() {
    Get.toNamed(AppRoutes.sidemenuScreen);
  }

  onTapInfo() {
    Get.toNamed(AppRoutes.aboutUsScreen);
  }

  onTapProfile() {
    Get.toNamed(AppRoutes.profileSettingScreen);
  }


  onTapOffersandPromo() {
    Get.toNamed(AppRoutes.promoScreen);
  }

  onTaplogout() {
    SupabaseCredential.supabaseClient.auth.signOut();
    Navigator.pushReplacementNamed(context, AppRoutes.signinScreen);

    shp().setUid("");
  }
}


