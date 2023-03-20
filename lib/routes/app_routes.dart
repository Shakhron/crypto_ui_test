import 'package:flutter/material.dart';
import 'package:lenoli_s_application1/presentation/trade_pair_one_container_screen/trade_pair_one_container_screen.dart';
import 'package:lenoli_s_application1/presentation/trade_pair_screen/trade_pair_screen.dart';
import 'package:lenoli_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String tradePairOnePage = '/trade_pair_one_page';

  static const String tradePairOneContainerScreen =
      '/trade_pair_one_container_screen';

  static const String tradePairScreen = '/trade_pair_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    tradePairOneContainerScreen: (context) => TradePairOneContainerScreen(),
    tradePairScreen: (context) => TradePairScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
