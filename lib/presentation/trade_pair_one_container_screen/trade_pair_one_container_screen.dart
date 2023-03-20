import 'package:flutter/material.dart';
import 'package:lenoli_s_application1/core/app_export.dart';
import 'package:lenoli_s_application1/presentation/trade_pair_one_page/trade_pair_one_page.dart';
import 'package:lenoli_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class TradePairOneContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.tradePairOnePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Markets:
        return "/";
      case BottomBarEnum.Trade:
        return AppRoutes.tradePairOnePage;
      case BottomBarEnum.Assets:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.tradePairOnePage:
        return TradePairOnePage();
      default:
        return DefaultWidget();
    }
  }

  @override
  void onInit(BuildContext context) {}
}
