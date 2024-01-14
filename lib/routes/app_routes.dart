import 'package:flutter/material.dart';
import 'package:cyber_s_application1/presentation/iphone_14_15_pro_max_one_screen/iphone_14_15_pro_max_one_screen.dart';
import 'package:cyber_s_application1/presentation/iphone_14_15_pro_max_four_screen/iphone_14_15_pro_max_four_screen.dart';
import 'package:cyber_s_application1/presentation/iphone_14_15_pro_max_five_screen/iphone_14_15_pro_max_five_screen.dart';
import 'package:cyber_s_application1/presentation/iphone_14_15_pro_max_two_screen/iphone_14_15_pro_max_two_screen.dart';
import 'package:cyber_s_application1/presentation/iphone_14_15_pro_max_three_screen/iphone_14_15_pro_max_three_screen.dart';
import 'package:cyber_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone1415ProMaxOneScreen =
      '/iphone_14_15_pro_max_one_screen';

  static const String iphone1415ProMaxFourScreen =
      '/iphone_14_15_pro_max_four_screen';

  static const String iphone1415ProMaxFiveScreen =
      '/iphone_14_15_pro_max_five_screen';

  static const String iphone1415ProMaxTwoScreen =
      '/iphone_14_15_pro_max_two_screen';

  static const String iphone1415ProMaxThreeScreen =
      '/iphone_14_15_pro_max_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone1415ProMaxOneScreen: (context) => Iphone1415ProMaxOneScreen(),
    iphone1415ProMaxFourScreen: (context) => Iphone1415ProMaxFourScreen(),
    iphone1415ProMaxFiveScreen: (context) => Iphone1415ProMaxFiveScreen(),
    iphone1415ProMaxTwoScreen: (context) => Iphone1415ProMaxTwoScreen(),
    iphone1415ProMaxThreeScreen: (context) => Iphone1415ProMaxThreeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
