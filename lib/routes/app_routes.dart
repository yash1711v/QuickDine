import 'package:quickdine/presentation/splash_screen/splash_screen.dart';
import 'package:quickdine/presentation/splash_screen/binding/splash_binding.dart';
import 'package:quickdine/presentation/signup_screen/signup_screen.dart';
import 'package:quickdine/presentation/signup_screen/binding/signup_binding.dart';
import 'package:quickdine/presentation/signin_screen/signin_screen.dart';
import 'package:quickdine/presentation/signin_screen/binding/signin_binding.dart';
import 'package:quickdine/presentation/home_screen/home_screen.dart';
import 'package:quickdine/presentation/home_screen/binding/home_binding.dart';
import 'package:quickdine/presentation/explore_screen/explore_screen.dart';
import 'package:quickdine/presentation/explore_screen/binding/explore_binding.dart';
import 'package:quickdine/presentation/sidemenu_screen/sidemenu_screen.dart';
import 'package:quickdine/presentation/sidemenu_screen/binding/sidemenu_binding.dart'; 
import 'package:quickdine/presentation/explore2afterclickingonsearch_screen/explore2afterclickingonsearch_screen.dart';
import 'package:quickdine/presentation/explore2afterclickingonsearch_screen/binding/explore2afterclickingonsearch_binding.dart';
import 'package:quickdine/presentation/about_us_screen/about_us_screen.dart';
import 'package:quickdine/presentation/about_us_screen/binding/about_us_binding.dart';
import 'package:quickdine/presentation/profile_setting_screen/profile_setting_screen.dart';
import 'package:quickdine/presentation/profile_setting_screen/binding/profile_setting_binding.dart';
import 'package:quickdine/presentation/profile_screen/profile_screen.dart';
import 'package:quickdine/presentation/profile_screen/binding/profile_binding.dart';
import 'package:quickdine/presentation/promo_screen/promo_screen.dart';
import 'package:quickdine/presentation/promo_screen/binding/promo_binding.dart';
import 'package:quickdine/presentation/order_history_screen/order_history_screen.dart';
import 'package:quickdine/presentation/order_history_screen/binding/order_history_binding.dart';
import 'package:quickdine/presentation/help_screen/help_screen.dart';
import 'package:quickdine/presentation/help_screen/binding/help_binding.dart';
import 'package:quickdine/presentation/reserve_table_screen/reserve_table_screen.dart';
import 'package:quickdine/presentation/reserve_table_screen/binding/reserve_table_binding.dart';
import 'package:quickdine/presentation/reserver_table_details_screen/reserver_table_details_screen.dart';
import 'package:quickdine/presentation/reserver_table_details_screen/binding/reserver_table_details_binding.dart';
import 'package:quickdine/presentation/pay_bill_screen/pay_bill_screen.dart';
import 'package:quickdine/presentation/pay_bill_screen/binding/pay_bill_binding.dart';
import 'package:quickdine/presentation/confirmed_screen/confirmed_screen.dart';
import 'package:quickdine/presentation/confirmed_screen/binding/confirmed_binding.dart';
import 'package:quickdine/presentation/restaurantmap_screen/restaurantmap_screen.dart';
import 'package:quickdine/presentation/restaurantmap_screen/binding/restaurantmap_binding.dart';
import 'package:quickdine/presentation/orderpre_screen/orderpre_screen.dart';
import 'package:quickdine/presentation/orderpre_screen/binding/orderpre_binding.dart';
import 'package:quickdine/presentation/add_to_order_screen/add_to_order_screen.dart';
import 'package:quickdine/presentation/add_to_order_screen/binding/add_to_order_binding.dart';
import 'package:quickdine/presentation/my_order_screen/my_order_screen.dart';
import 'package:quickdine/presentation/my_order_screen/binding/my_order_binding.dart';
import 'package:quickdine/presentation/paid_fail_screen/paid_fail_screen.dart';
import 'package:quickdine/presentation/paid_fail_screen/binding/paid_fail_binding.dart';
import 'package:quickdine/presentation/paid_successfull_screen/paid_successfull_screen.dart';
import 'package:quickdine/presentation/paid_successfull_screen/binding/paid_successfull_binding.dart';
import 'package:quickdine/presentation/frame_nine_screen/frame_nine_screen.dart';
import 'package:quickdine/presentation/frame_nine_screen/binding/frame_nine_binding.dart';
import 'package:quickdine/presentation/waiter_call_details_screen/waiter_call_details_screen.dart';
import 'package:quickdine/presentation/waiter_call_details_screen/binding/waiter_call_details_binding.dart';
import 'package:quickdine/presentation/review_screen/review_screen.dart';
import 'package:quickdine/presentation/review_screen/binding/review_binding.dart';
import 'package:quickdine/presentation/feedback_screen/feedback_screen.dart';
import 'package:quickdine/presentation/feedback_screen/binding/feedback_binding.dart';
import 'package:quickdine/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:quickdine/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signupScreen = '/signup_screen';

  static const String signinScreen = '/signin_screen';

  static const String homeScreen = '/home_screen';

  static const String exploreScreen = '/explore_screen';

  static const String sidemenuScreen = '/sidemenu_screen';

  static const String home2afterclickingontextScreen =
      '/home2afterclickingontext_screen';

  static const String explore2afterclickingonsearchScreen =
      '/explore2afterclickingonsearch_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String profileSettingScreen = '/profile_setting_screen';

  static const String profileScreen = '/profile_screen';

  static const String promoScreen = '/promo_screen';

  static const String orderHistoryScreen = '/order_history_screen';

  static const String helpScreen = '/help_screen';

  static const String reserveTableScreen = '/reserve_table_screen';

  static const String reserverTableDetailsScreen =
      '/reserver_table_details_screen';

  static const String payBillScreen = '/pay_bill_screen';

  static const String confirmedScreen = '/confirmed_screen';

  static const String restaurantmapScreen = '/restaurantmap_screen';

  static const String orderpreScreen = '/orderpre_screen';

  static const String addToOrderScreen = '/add_to_order_screen';

  static const String myOrderScreen = '/my_order_screen';

  static const String paidFailScreen = '/paid_fail_screen';

  static const String paidSuccessfullScreen = '/paid_successfull_screen';

  static const String frameNineScreen = '/frame_nine_screen';

  static const String waiterCallDetailsScreen = '/waiter_call_details_screen';

  static const String reviewScreen = '/review_screen';

  static const String feedbackScreen = '/feedback_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: signinScreen,
      page: () => SigninScreen(),
      bindings: [
        SigninBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: exploreScreen,
      page: () => ExploreScreen(),
      bindings: [
        ExploreBinding(),
      ],
    ),
    GetPage(
      name: sidemenuScreen,
      page: () => SidemenuScreen(),
      bindings: [
        SidemenuBinding(),
      ],
    ),

    GetPage(
      name: explore2afterclickingonsearchScreen,
      page: () => Explore2afterclickingonsearchScreen(),
      bindings: [
        Explore2afterclickingonsearchBinding(),
      ],
    ),
    GetPage(
      name: aboutUsScreen,
      page: () => AboutUsScreen(),
      bindings: [
        AboutUsBinding(),
      ],
    ),
    GetPage(
      name: profileSettingScreen,
      page: () => ProfileSettingScreen(),
      bindings: [
        ProfileSettingBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: promoScreen,
      page: () => PromoScreen(),
      bindings: [
        PromoBinding(),
      ],
    ),
    GetPage(
      name: orderHistoryScreen,
      page: () => OrderHistoryScreen(),
      bindings: [
        OrderHistoryBinding(),
      ],
    ),
    GetPage(
      name: helpScreen,
      page: () => HelpScreen(),
      bindings: [
        HelpBinding(),
      ],
    ),
    GetPage(
      name: reserveTableScreen,
      page: () => ReserveTableScreen(),
      bindings: [
        ReserveTableBinding(),
      ],
    ),
    GetPage(
      name: reserverTableDetailsScreen,
      page: () => ReserverTableDetailsScreen(),
      bindings: [
        ReserverTableDetailsBinding(),
      ],
    ),
    GetPage(
      name: payBillScreen,
      page: () => PayBillScreen(),
      bindings: [
        PayBillBinding(),
      ],
    ),
    GetPage(
      name: confirmedScreen,
      page: () => ConfirmedScreen(),
      bindings: [
        ConfirmedBinding(),
      ],
    ),
    GetPage(
      name: restaurantmapScreen,
      page: () => RestaurantmapScreen(),
      bindings: [
        RestaurantmapBinding(),
      ],
    ),
    GetPage(
      name: orderpreScreen,
      page: () => OrderpreScreen(),
      bindings: [
        OrderpreBinding(),
      ],
    ),
    GetPage(
      name: addToOrderScreen,
      page: () => AddToOrderScreen(),
      bindings: [
        AddToOrderBinding(),
      ],
    ),
    GetPage(
      name: myOrderScreen,
      page: () => MyOrderScreen(),
      bindings: [
        MyOrderBinding(),
      ],
    ),
    GetPage(
      name: paidFailScreen,
      page: () => PaidFailScreen(),
      bindings: [
        PaidFailBinding(),
      ],
    ),
    GetPage(
      name: paidSuccessfullScreen,
      page: () => PaidSuccessfullScreen(),
      bindings: [
        PaidSuccessfullBinding(),
      ],
    ),
    GetPage(
      name: frameNineScreen,
      page: () => FrameNineScreen(),
      bindings: [
        FrameNineBinding(),
      ],
    ),
    GetPage(
      name: waiterCallDetailsScreen,
      page: () => WaiterCallDetailsScreen(),
      bindings: [
        WaiterCallDetailsBinding(),
      ],
    ),
    GetPage(
      name: reviewScreen,
      page: () => ReviewScreen(),
      bindings: [
        ReviewBinding(),
      ],
    ),
    GetPage(
      name: feedbackScreen,
      page: () => FeedbackScreen(),
      bindings: [
        FeedbackBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
