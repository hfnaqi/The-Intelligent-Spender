import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/iphone_13_pro_max_six_screen/iphone_13_pro_max_six_screen.dart';
import '../presentation/search_four_screen/search_four_screen.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String searchFourScreen = '/search_four_screen';

  static const String iphone13ProMaxSixScreen = '/iphone_13_pro_max_six_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    signUpScreen: (context) => SignUpScreen(),
    signInScreen: (context) => SignInScreen(),
    searchFourScreen: (context) => SearchFourScreen(),
    iphone13ProMaxSixScreen: (context) => Iphone13ProMaxSixScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => Iphone13ProMaxSixScreen()
  };
}
