import '../trade_pair_screen/widgets/trade_pair_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:lenoli_s_application1/core/app_export.dart';
import 'package:lenoli_s_application1/presentation/trade_pair_one_page/trade_pair_one_page.dart';
import 'package:lenoli_s_application1/widgets/custom_bottom_bar.dart';
import 'package:lenoli_s_application1/widgets/custom_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class TradePairScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: size.height,
                width: double.maxFinite,
                decoration: AppDecoration.fillBluegray900,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(left: 20, right: 20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("BSC",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtJostMedium20),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("Show all",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.right,
                                              style: AppStyle.txtJostRegular14))
                                    ]),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(8));
                                        },
                                        itemCount: 4,
                                        itemBuilder: (context, index) {
                                          return TradePairItemWidget();
                                        }))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          padding: getPadding(all: 17),
                          decoration: AppDecoration.fillBluegray900,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 11, right: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgSignal,
                                              height: getVerticalSize(11),
                                              width: getHorizontalSize(28)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgSignalBlueGray400,
                                              height: getVerticalSize(11),
                                              width: getHorizontalSize(48))
                                        ])),
                                Container(
                                    margin:
                                        getMargin(left: 3, top: 26, bottom: 36),
                                    decoration: AppDecoration
                                        .outlineBluegray80001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder6),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 5, bottom: 6),
                                              child: Text("Charts",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGothicA1Bold14Bluegray400)),
                                          CustomButton(
                                              height: getVerticalSize(30),
                                              width: getHorizontalSize(169),
                                              text: "Trade",
                                              margin: getMargin(left: 62),
                                              padding:
                                                  ButtonPadding.PaddingAll6,
                                              fontStyle: ButtonFontStyle
                                                  .GothicA1SemiBold14)
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                              left: getHorizontalSize(4),
                              top: getVerticalSize(4),
                              right: getHorizontalSize(4),
                              bottom: getVerticalSize(4)),
                          strokeWidth: getHorizontalSize(4),
                          gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 0.67),
                              colors: [
                                ColorConstant.whiteA70026,
                                ColorConstant.whiteA70000
                              ]),
                          corners: Corners(
                              topLeft: Radius.circular(36),
                              topRight: Radius.circular(36),
                              bottomLeft: Radius.circular(36),
                              bottomRight: Radius.circular(36)),
                          child: Container(
                              height: getVerticalSize(1289),
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(36)))))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(left: 1),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 21, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleft,
                                                    height: getVerticalSize(13),
                                                    width: getHorizontalSize(7),
                                                    margin: getMargin(
                                                        top: 5, bottom: 6),
                                                    onTap: () {
                                                      onTapImgArrowleft(
                                                          context);
                                                    }),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 18,
                                                        top: 8,
                                                        bottom: 7),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      2),
                                                              width:
                                                                  getHorizontalSize(
                                                                      15),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(1)))),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      2),
                                                              width:
                                                                  getHorizontalSize(
                                                                      8),
                                                              margin: getMargin(
                                                                  top: 5),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(1))))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 8),
                                                    child: Text("BTC/USDT",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGothicA1SemiBold20)),
                                                Container(
                                                    margin: getMargin(left: 10),
                                                    padding: getPadding(
                                                        left: 6,
                                                        top: 2,
                                                        right: 6,
                                                        bottom: 2),
                                                    decoration: AppDecoration
                                                        .txtFillTeal40065
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder6),
                                                    child: Text("+2.38%",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGothicA1Medium14))
                                              ]),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgComputer,
                                              height: getVerticalSize(20),
                                              width: getHorizontalSize(59),
                                              margin:
                                                  getMargin(top: 3, bottom: 1))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 21, top: 23, right: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 6),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("43,810.58",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGothicA1Bold24),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 3),
                                                        child: Text(
                                                            "~ \$43,810.58",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtGothicA1SemiBold13))
                                                  ])),
                                          Spacer(),
                                          Container(
                                              width: getHorizontalSize(67),
                                              child: Text(
                                                  "24h Hight\n24h Low\n24h Volume",
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGothicA1SemiBold13Bluegray400)),
                                          Container(
                                              width: getHorizontalSize(61),
                                              margin: getMargin(left: 32),
                                              child: Text(
                                                  "45,504.32\n42,128.40\n205.08M",
                                                  maxLines: null,
                                                  textAlign: TextAlign.right,
                                                  style:
                                                      AppStyle.txtJostMedium13))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 17, right: 22),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 2, bottom: 4),
                                              child: Text("Time",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGothicA1SemiBold13)),
                                          Container(
                                              margin: getMargin(left: 14),
                                              padding: getPadding(
                                                  left: 7,
                                                  top: 2,
                                                  right: 7,
                                                  bottom: 2),
                                              decoration: AppDecoration
                                                  .txtFillBluegray80001
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtRoundedBorder6),
                                              child: Text("5m",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGothicA1SemiBold13WhiteA700)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 19, top: 2, bottom: 4),
                                              child: Text("15m",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGothicA1SemiBold13)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 26, top: 2, bottom: 4),
                                              child: Text("4H",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGothicA1SemiBold13)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 29, top: 2, bottom: 4),
                                              child: Text("More",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGothicA1SemiBold13)),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgSettingsBlueGray400,
                                              height: getVerticalSize(17),
                                              width: getHorizontalSize(18),
                                              margin:
                                                  getMargin(top: 3, bottom: 3))
                                        ])),
                                Container(
                                    height: getVerticalSize(255),
                                    width: getHorizontalSize(336),
                                    margin: getMargin(top: 12),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: getPadding(top: 12),
                                                  child: SizedBox(
                                                      width: getHorizontalSize(
                                                          280),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .blueGray40014)))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: getPadding(top: 74),
                                                  child: SizedBox(
                                                      width: getHorizontalSize(
                                                          280),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .blueGray40014)))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 118),
                                                  child: SizedBox(
                                                      width: getHorizontalSize(
                                                          280),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .blueGray40014)))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: getPadding(top: 43),
                                                  child: SizedBox(
                                                      width: getHorizontalSize(
                                                          280),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .blueGray40014)))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: getPadding(top: 105),
                                                  child: SizedBox(
                                                      width: getHorizontalSize(
                                                          280),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .blueGray40014)))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding:
                                                      getPadding(bottom: 87),
                                                  child: SizedBox(
                                                      width: getHorizontalSize(
                                                          280),
                                                      child: Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: ColorConstant
                                                              .blueGray40014)))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      14),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 86,
                                                                  bottom: 75),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(5),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(10),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      11),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 89,
                                                                  bottom: 75),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(5),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(7),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      8),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 89,
                                                                  bottom: 78),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(2),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.pink400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(7),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.pink400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      29),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 96,
                                                                  bottom: 50),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .pink400)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      19),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 106,
                                                                  bottom: 50),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(14),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(9),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      9),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 111,
                                                                  bottom: 55),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getSize(7),
                                                                            width: getSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.pink400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(9),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.pink400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      15),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 109,
                                                                  bottom: 51),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getSize(7),
                                                                            width: getSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.pink400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(14),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.pink400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      14),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 123,
                                                                  bottom: 38),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(4),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.pink400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(14),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.pink400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      10),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 119,
                                                                  bottom: 46),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(4),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.pink400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(7),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.pink400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      12),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 118,
                                                                  bottom: 45),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(11),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(4),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      5),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 115,
                                                                  bottom: 55),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(2),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(4),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      35),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 118,
                                                                  bottom: 22),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .pink400)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      15),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 138,
                                                                  bottom: 22),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(10),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(14),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      8),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 143,
                                                                  bottom: 24),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(4),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.pink400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(7),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.pink400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      34),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 113,
                                                                  bottom: 28),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .teal400)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      31),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 113,
                                                                  bottom: 31),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .pink400)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      8),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 136,
                                                                  bottom: 31),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .teal400)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      11),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 126,
                                                                  bottom: 38),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .teal400)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      16),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 111,
                                                                  bottom: 48),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(10),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(7),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      12),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 106,
                                                                  bottom: 57),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .teal400)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      3),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 104,
                                                                  bottom: 68),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(1),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(3),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      9),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 98,
                                                                  bottom: 68),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .teal400)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      26),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 73,
                                                                  bottom: 76),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(22),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(7),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      14),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 64,
                                                                  bottom: 97),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(6),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(11),
                                                                            width: getHorizontalSize(1),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      34),
                                                              width:
                                                                  getHorizontalSize(
                                                                      7),
                                                              margin: getMargin(
                                                                  top: 60,
                                                                  bottom: 81),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(14),
                                                                            width: getHorizontalSize(7),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: SizedBox(
                                                                            width: getHorizontalSize(
                                                                                1),
                                                                            child: Divider(
                                                                                height: getVerticalSize(22),
                                                                                thickness: getVerticalSize(22),
                                                                                color: ColorConstant.teal400)))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      175),
                                                              width:
                                                                  getHorizontalSize(
                                                                      69),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topLeft,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(33),
                                                                            width: getHorizontalSize(7),
                                                                            margin: getMargin(top: 41),
                                                                            decoration: BoxDecoration(color: ColorConstant.teal400))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topLeft,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(top: 36),
                                                                            child: SizedBox(width: getHorizontalSize(1), child: Divider(height: getVerticalSize(22), thickness: getVerticalSize(22), color: ColorConstant.teal400)))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerRight,
                                                                        child: Padding(
                                                                            padding: getPadding(right: 1),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                                                                              Container(height: getVerticalSize(1), width: getHorizontalSize(3), margin: getMargin(top: 36, bottom: 138), decoration: BoxDecoration(color: ColorConstant.gray700)),
                                                                              Container(height: getVerticalSize(1), width: getHorizontalSize(3), margin: getMargin(left: 2, top: 36, bottom: 138), decoration: BoxDecoration(color: ColorConstant.gray700)),
                                                                              Container(width: getHorizontalSize(36), margin: getMargin(left: 14), child: Text("43.810\n43.805\n43.800\n43.795\n43.790\n43.785", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtGothicA1Medium12))
                                                                            ]))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topRight,
                                                                        child: Container(
                                                                            margin:
                                                                                getMargin(top: 25),
                                                                            padding: getPadding(left: 4, top: 2, right: 4, bottom: 2),
                                                                            decoration: AppDecoration.txtFillTeal400.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder6),
                                                                            child: Text("43,805.35", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtGothicA1Medium12WhiteA700)))
                                                                  ]))
                                                        ]),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 6, top: 10),
                                                        child: Row(children: [
                                                          Text("20:45",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGothicA1Medium12Bluegray400),
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 26),
                                                              child: Text(
                                                                  "21:25",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGothicA1Medium12Bluegray400)),
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 26),
                                                              child: Text(
                                                                  "22:00",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGothicA1Medium12Bluegray400)),
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 26),
                                                              child: Text(
                                                                  "22:35",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGothicA1Medium12Bluegray400)),
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 33),
                                                              child: Text(
                                                                  "23:10",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGothicA1Medium12Bluegray400))
                                                        ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 5, right: 7),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgGroup1345,
                                                                  height:
                                                                      getVerticalSize(
                                                                          35),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          274),
                                                                  margin: getMargin(
                                                                      top: 10,
                                                                      bottom:
                                                                          3)),
                                                              Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "46.58",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtGothicA1Medium12Bluegray400),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                2),
                                                                        child: Text(
                                                                            "23.29",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtGothicA1Medium12Bluegray400)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                2),
                                                                        child: Text(
                                                                            "0.00",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtGothicA1Medium12Bluegray400))
                                                                  ])
                                                            ]))
                                                  ]))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 13, top: 18, right: 46),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  padding: getPadding(
                                                      left: 6,
                                                      top: 2,
                                                      right: 6,
                                                      bottom: 2),
                                                  decoration: AppDecoration
                                                      .txtFillBluegray80001
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder6),
                                                  child: Text("MA",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGothicA1SemiBold13)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 18,
                                                      top: 2,
                                                      bottom: 4),
                                                  child: Text("BOLL",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGothicA1SemiBold13)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 20,
                                                      top: 2,
                                                      bottom: 4),
                                                  child: Text("EMA",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGothicA1SemiBold13)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 26,
                                                      top: 2,
                                                      bottom: 4),
                                                  child: Text("Volume",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGothicA1SemiBold13)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 22,
                                                      top: 2,
                                                      bottom: 4),
                                                  child: Text("MACD",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGothicA1SemiBold13)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 23,
                                                      top: 2,
                                                      bottom: 4),
                                                  child: Text("More",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGothicA1SemiBold13))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 13, top: 24),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 2,
                                                      right: 8,
                                                      bottom: 2),
                                                  decoration: AppDecoration
                                                      .txtFillBluegray80001
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder6),
                                                  child: Text("Order Book",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGothicA1SemiBold14WhiteA700)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 27,
                                                      top: 2,
                                                      bottom: 3),
                                                  child: Text("Traders",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGothicA1SemiBold14)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 38,
                                                      top: 2,
                                                      bottom: 3),
                                                  child: Text("Info",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGothicA1SemiBold14))
                                            ]))),
                                Container(
                                    height: getVerticalSize(185),
                                    width: getHorizontalSize(374),
                                    margin: getMargin(top: 18),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding:
                                                      getPadding(right: 15),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          bottom:
                                                                              1),
                                                                  child: Text(
                                                                      "Sell Price",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtGothicA1Bold11)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              63,
                                                                          top:
                                                                              1),
                                                                  child: Text(
                                                                      "Quantity",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtGothicA1Bold11))
                                                            ]),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Container(
                                                                      height:
                                                                          getVerticalSize(
                                                                              142),
                                                                      width: getHorizontalSize(
                                                                          109),
                                                                      child: Stack(
                                                                          alignment:
                                                                              Alignment.centerLeft,
                                                                          children: [
                                                                            Align(
                                                                                alignment: Alignment.bottomCenter,
                                                                                child: Container(height: getVerticalSize(24), width: getHorizontalSize(109), decoration: BoxDecoration(color: ColorConstant.pink40065))),
                                                                            Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                  Container(height: getVerticalSize(23), width: getHorizontalSize(41), decoration: BoxDecoration(color: ColorConstant.pink40065)),
                                                                                  Container(height: getVerticalSize(24), width: getHorizontalSize(55), decoration: BoxDecoration(color: ColorConstant.pink40065)),
                                                                                  Container(height: getVerticalSize(24), width: getHorizontalSize(72), decoration: BoxDecoration(color: ColorConstant.pink40065)),
                                                                                  Container(height: getVerticalSize(23), width: getHorizontalSize(96), decoration: BoxDecoration(color: ColorConstant.pink40065))
                                                                                ])),
                                                                            Align(
                                                                                alignment: Alignment.topLeft,
                                                                                child: Container(height: getVerticalSize(24), width: getHorizontalSize(20), decoration: BoxDecoration(color: ColorConstant.pink40065))),
                                                                            Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(width: getHorizontalSize(37), margin: getMargin(left: 11), child: Text("43,805\n43,804\n43,798\n43,796\n43,794\n43,792", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtGothicA1SemiBold12Pink400)))
                                                                          ])),
                                                                  Container(
                                                                      width:
                                                                          getHorizontalSize(
                                                                              56),
                                                                      margin: getMargin(
                                                                          left:
                                                                              1,
                                                                          top:
                                                                              3,
                                                                          bottom:
                                                                              2),
                                                                      child: Text(
                                                                          "0.1600343\n0.2500543\n0.324341\n0.340584\n1.249345\n4.348503",
                                                                          maxLines:
                                                                              null,
                                                                          textAlign: TextAlign
                                                                              .right,
                                                                          style:
                                                                              AppStyle.txtGothicA1SemiBold12WhiteA7001))
                                                                ]))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 13, top: 1),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(children: [
                                                          Text("Quantity",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGothicA1Bold11),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 71),
                                                              child: Text(
                                                                  "Buy Price",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGothicA1Bold11))
                                                        ]),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9),
                                                            child: Row(
                                                                children: [
                                                                  Container(
                                                                      width:
                                                                          getHorizontalSize(
                                                                              56),
                                                                      margin: getMargin(
                                                                          top:
                                                                              3,
                                                                          bottom:
                                                                              2),
                                                                      child: Text(
                                                                          "0.1600343\n0.2500543\n0.324341\n0.340584\n1.249345\n4.348503",
                                                                          maxLines:
                                                                              null,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtGothicA1SemiBold12WhiteA7001)),
                                                                  Container(
                                                                      height:
                                                                          getVerticalSize(
                                                                              142),
                                                                      width: getHorizontalSize(
                                                                          109),
                                                                      margin: getMargin(
                                                                          left:
                                                                              7),
                                                                      child: Stack(
                                                                          alignment:
                                                                              Alignment.centerRight,
                                                                          children: [
                                                                            Align(
                                                                                alignment: Alignment.bottomCenter,
                                                                                child: Container(height: getVerticalSize(24), width: getHorizontalSize(109), decoration: BoxDecoration(color: ColorConstant.teal40065))),
                                                                            Align(
                                                                                alignment: Alignment.centerRight,
                                                                                child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                  Container(height: getVerticalSize(23), width: getHorizontalSize(41), decoration: BoxDecoration(color: ColorConstant.teal40065)),
                                                                                  Container(height: getVerticalSize(24), width: getHorizontalSize(55), decoration: BoxDecoration(color: ColorConstant.teal40065)),
                                                                                  Container(height: getVerticalSize(24), width: getHorizontalSize(72), decoration: BoxDecoration(color: ColorConstant.teal40065)),
                                                                                  Container(height: getVerticalSize(23), width: getHorizontalSize(96), decoration: BoxDecoration(color: ColorConstant.teal40065))
                                                                                ])),
                                                                            Align(
                                                                                alignment: Alignment.topRight,
                                                                                child: Container(height: getVerticalSize(24), width: getHorizontalSize(20), decoration: BoxDecoration(color: ColorConstant.teal40065))),
                                                                            Align(
                                                                                alignment: Alignment.centerRight,
                                                                                child: Container(width: getHorizontalSize(37), margin: getMargin(right: 12), child: Text("43,805\n43,804\n43,798\n43,796\n43,794\n43,792", maxLines: null, textAlign: TextAlign.right, style: AppStyle.txtGothicA1SemiBold12Teal4001)))
                                                                          ]))
                                                                ]))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .outlineWhiteA7001,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    1),
                                                            thickness:
                                                                getVerticalSize(
                                                                    1),
                                                            color: ColorConstant
                                                                .blueGray80001),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 20,
                                                                top: 14,
                                                                right: 19,
                                                                bottom: 28),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  CustomButton(
                                                                      height:
                                                                          getVerticalSize(
                                                                              40),
                                                                      width: getHorizontalSize(
                                                                          160),
                                                                      text:
                                                                          "Buy",
                                                                      variant:
                                                                          ButtonVariant
                                                                              .FillTeal400),
                                                                  CustomButton(
                                                                      height:
                                                                          getVerticalSize(
                                                                              40),
                                                                      width: getHorizontalSize(
                                                                          160),
                                                                      text:
                                                                          "Sell",
                                                                      margin: getMargin(
                                                                          left:
                                                                              15),
                                                                      variant:
                                                                          ButtonVariant
                                                                              .FillPink400)
                                                                ]))
                                                      ])))
                                        ]))
                              ])))
                ])),
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

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
