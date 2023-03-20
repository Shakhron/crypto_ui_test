import '../trade_pair_one_page/widgets/trade_pair_one_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:lenoli_s_application1/core/app_export.dart';
import 'package:lenoli_s_application1/widgets/custom_button.dart';
import 'package:lenoli_s_application1/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class TradePairOnePage extends StatelessWidget {
  TextEditingController groupNineController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Container(
          height: getVerticalSize(
            729,
          ),
          width: double.maxFinite,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getVerticalSize(
                    729,
                  ),
                  width: double.maxFinite,
                  decoration: AppDecoration.fillBluegray900,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: getPadding(
                            left: 20,
                            right: 20,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "BSC",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtJostMedium20,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
                                    ),
                                    child: Text(
                                      "Show all",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
                                      style: AppStyle.txtJostRegular14,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 12,
                                ),
                                child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                      height: getVerticalSize(
                                        8,
                                      ),
                                    );
                                  },
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return TradePairOneItemWidget();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: getPadding(
                            left: 17,
                            top: 13,
                            right: 17,
                            bottom: 13,
                          ),
                          decoration: AppDecoration.fillBluegray900,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 11,
                                  top: 4,
                                  right: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgSignal,
                                      height: getVerticalSize(
                                        11,
                                      ),
                                      width: getHorizontalSize(
                                        28,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgSignalBlueGray400,
                                      height: getVerticalSize(
                                        11,
                                      ),
                                      width: getHorizontalSize(
                                        48,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 3,
                                  top: 26,
                                ),
                                decoration:
                                    AppDecoration.outlineBluegray80001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: Row(
                                  children: [
                                    CustomButton(
                                      height: getVerticalSize(
                                        30,
                                      ),
                                      width: getHorizontalSize(
                                        169,
                                      ),
                                      text: "Charts",
                                      padding: ButtonPadding.PaddingAll6,
                                      fontStyle: ButtonFontStyle.GothicA1Bold14,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 61,
                                        top: 5,
                                        bottom: 6,
                                      ),
                                      child: Text(
                                        "Trade",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGothicA1SemiBold14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 3,
                                  top: 15,
                                  right: 6,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 8,
                                        bottom: 7,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: getVerticalSize(
                                              2,
                                            ),
                                            width: getHorizontalSize(
                                              15,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.blueGray400,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  1,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: getVerticalSize(
                                              2,
                                            ),
                                            width: getHorizontalSize(
                                              8,
                                            ),
                                            margin: getMargin(
                                              top: 5,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.blueGray400,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 8,
                                      ),
                                      child: Text(
                                        "BTC/USDT",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGothicA1SemiBold20,
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        left: 10,
                                      ),
                                      padding: getPadding(
                                        left: 6,
                                        top: 2,
                                        right: 6,
                                        bottom: 2,
                                      ),
                                      decoration: AppDecoration.txtFillTeal40065
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.txtRoundedBorder6,
                                      ),
                                      child: Text(
                                        "+2.38%",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGothicA1Medium14,
                                      ),
                                    ),
                                    Spacer(),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgGroup1319,
                                      height: getVerticalSize(
                                        15,
                                      ),
                                      width: getHorizontalSize(
                                        10,
                                      ),
                                      margin: getMargin(
                                        top: 5,
                                        bottom: 4,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgGroup1317,
                                      height: getVerticalSize(
                                        4,
                                      ),
                                      width: getHorizontalSize(
                                        18,
                                      ),
                                      margin: getMargin(
                                        left: 20,
                                        top: 11,
                                        bottom: 9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              4,
                            ),
                            top: getVerticalSize(
                              4,
                            ),
                            right: getHorizontalSize(
                              4,
                            ),
                            bottom: getVerticalSize(
                              4,
                            ),
                          ),
                          strokeWidth: getHorizontalSize(
                            4,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(
                              0.5,
                              0,
                            ),
                            end: Alignment(
                              0.5,
                              0.67,
                            ),
                            colors: [
                              ColorConstant.whiteA70026,
                              ColorConstant.whiteA70000,
                            ],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(
                              36,
                            ),
                            topRight: Radius.circular(
                              36,
                            ),
                            bottomLeft: Radius.circular(
                              36,
                            ),
                            bottomRight: Radius.circular(
                              36,
                            ),
                          ),
                          child: Container(
                            padding: getPadding(
                              left: 18,
                              top: 139,
                              right: 18,
                              bottom: 139,
                            ),
                            decoration: AppDecoration.outline.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder36,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    501,
                                  ),
                                  width: getHorizontalSize(
                                    336,
                                  ),
                                  margin: getMargin(
                                    left: 1,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: getPadding(
                                            bottom: 17,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "TBCC / USDT",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGothicA1Bold14,
                                                  ),
                                                  Text(
                                                    "2022-03-06 17:50:12",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGothicA1SemiBold13,
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 2,
                                                ),
                                                child: Text(
                                                  "Limit / Sell",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGothicA1Bold13,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 7,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        bottom: 1,
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "Amount",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtGothicA1SemiBold13,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    getPadding(
                                                                  left: 35,
                                                                ),
                                                                child: Text(
                                                                  "0,00 / 4407,32",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGothicA1SemiBold13,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 4,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Price",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGothicA1SemiBold13,
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      getPadding(
                                                                    left: 51,
                                                                  ),
                                                                  child: Text(
                                                                    "0,0673",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtGothicA1SemiBold13WhiteA700,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: getMargin(
                                                        top: 17,
                                                      ),
                                                      padding: getPadding(
                                                        left: 10,
                                                        top: 1,
                                                        right: 10,
                                                        bottom: 1,
                                                      ),
                                                      decoration: AppDecoration
                                                          .fillBluegray80001
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder6,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding: getPadding(
                                                              bottom: 2,
                                                            ),
                                                            child: Text(
                                                              "Cancel",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGothicA1SemiBold14WhiteA700,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: getVerticalSize(
                                                382,
                                              ),
                                              width: getHorizontalSize(
                                                336,
                                              ),
                                              child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        378,
                                                      ),
                                                      width: getHorizontalSize(
                                                        336,
                                                      ),
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: getMargin(
                                                                right: 1,
                                                                bottom: 33,
                                                              ),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                side:
                                                                    BorderSide(
                                                                  color: ColorConstant
                                                                      .blueGray400,
                                                                  width:
                                                                      getHorizontalSize(
                                                                    2,
                                                                  ),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  getHorizontalSize(
                                                                    2,
                                                                  ),
                                                                ),
                                                              ),
                                                              child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                  16,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  14,
                                                                ),
                                                                padding:
                                                                    getPadding(
                                                                  all: 5,
                                                                ),
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineBluegray400
                                                                        .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder2,
                                                                ),
                                                                child: Stack(
                                                                  children: [
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgGroup8754,
                                                                      height:
                                                                          getVerticalSize(
                                                                        6,
                                                                      ),
                                                                      width:
                                                                          getHorizontalSize(
                                                                        4,
                                                                      ),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                378,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                336,
                                                              ),
                                                              child: Stack(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          getPadding(
                                                                        top: 9,
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                            padding:
                                                                                getPadding(
                                                                              left: 15,
                                                                              top: 8,
                                                                              right: 15,
                                                                              bottom: 8,
                                                                            ),
                                                                            decoration:
                                                                                AppDecoration.outlineBluegray900.copyWith(
                                                                              borderRadius: BorderRadiusStyle.roundedBorder6,
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                CustomImageView(
                                                                                  svgPath: ImageConstant.imgGroup8643,
                                                                                  height: getVerticalSize(
                                                                                    2,
                                                                                  ),
                                                                                  width: getHorizontalSize(
                                                                                    8,
                                                                                  ),
                                                                                  margin: getMargin(
                                                                                    top: 11,
                                                                                    bottom: 11,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: getPadding(
                                                                                    left: 40,
                                                                                    top: 4,
                                                                                  ),
                                                                                  child: Text(
                                                                                    "43,805.35",
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    textAlign: TextAlign.left,
                                                                                    style: AppStyle.txtGothicA1SemiBold16,
                                                                                  ),
                                                                                ),
                                                                                CustomImageView(
                                                                                  svgPath: ImageConstant.imgPlus,
                                                                                  height: getSize(
                                                                                    8,
                                                                                  ),
                                                                                  width: getSize(
                                                                                    8,
                                                                                  ),
                                                                                  margin: getMargin(
                                                                                    left: 36,
                                                                                    top: 8,
                                                                                    right: 3,
                                                                                    bottom: 8,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            margin:
                                                                                getMargin(
                                                                              top: 14,
                                                                            ),
                                                                            padding:
                                                                                getPadding(
                                                                              left: 15,
                                                                              top: 10,
                                                                              right: 15,
                                                                              bottom: 10,
                                                                            ),
                                                                            decoration:
                                                                                AppDecoration.outlineBluegray900.copyWith(
                                                                              borderRadius: BorderRadiusStyle.roundedBorder6,
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Container(
                                                                                  height: getVerticalSize(
                                                                                    2,
                                                                                  ),
                                                                                  width: getHorizontalSize(
                                                                                    8,
                                                                                  ),
                                                                                  margin: getMargin(
                                                                                    top: 9,
                                                                                    bottom: 9,
                                                                                  ),
                                                                                  decoration: BoxDecoration(
                                                                                    color: ColorConstant.whiteA70066,
                                                                                    borderRadius: BorderRadius.circular(
                                                                                      getHorizontalSize(
                                                                                        1,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: getPadding(
                                                                                    left: 25,
                                                                                  ),
                                                                                  child: Text(
                                                                                    "Amount (BTC)",
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    textAlign: TextAlign.left,
                                                                                    style: AppStyle.txtGothicA1SemiBold16WhiteA7007e,
                                                                                  ),
                                                                                ),
                                                                                CustomImageView(
                                                                                  svgPath: ImageConstant.imgPlus,
                                                                                  height: getSize(
                                                                                    8,
                                                                                  ),
                                                                                  width: getSize(
                                                                                    8,
                                                                                  ),
                                                                                  margin: getMargin(
                                                                                    left: 22,
                                                                                    top: 6,
                                                                                    right: 3,
                                                                                    bottom: 6,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          getPadding(
                                                                        bottom:
                                                                            80,
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          CustomTextFormField(
                                                                            width:
                                                                                getHorizontalSize(
                                                                              80,
                                                                            ),
                                                                            focusNode:
                                                                                FocusNode(),
                                                                            controller:
                                                                                groupNineController,
                                                                            hintText:
                                                                                "0.01",
                                                                            textInputAction:
                                                                                TextInputAction.done,
                                                                            suffix:
                                                                                Container(
                                                                              margin: getMargin(
                                                                                left: 28,
                                                                                top: 11,
                                                                                right: 10,
                                                                                bottom: 11,
                                                                              ),
                                                                              decoration: BoxDecoration(
                                                                                color: ColorConstant.whiteA700,
                                                                                borderRadius: BorderRadius.circular(
                                                                                  getHorizontalSize(
                                                                                    1,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              child: CustomImageView(
                                                                                svgPath: ImageConstant.imgVector7,
                                                                              ),
                                                                            ),
                                                                            suffixConstraints:
                                                                                BoxConstraints(
                                                                              maxHeight: getVerticalSize(
                                                                                30,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            margin:
                                                                                getMargin(
                                                                              left: 7,
                                                                            ),
                                                                            padding:
                                                                                getPadding(
                                                                              all: 4,
                                                                            ),
                                                                            decoration:
                                                                                AppDecoration.fillBluegray80001.copyWith(
                                                                              borderRadius: BorderRadiusStyle.roundedBorder6,
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: getPadding(
                                                                                    top: 1,
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                    children: [
                                                                                      Container(
                                                                                        height: getSize(
                                                                                          7,
                                                                                        ),
                                                                                        width: getSize(
                                                                                          7,
                                                                                        ),
                                                                                        decoration: BoxDecoration(
                                                                                          color: ColorConstant.pink400,
                                                                                          borderRadius: BorderRadius.circular(
                                                                                            getHorizontalSize(
                                                                                              2,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        height: getVerticalSize(
                                                                                          5,
                                                                                        ),
                                                                                        width: getHorizontalSize(
                                                                                          11,
                                                                                        ),
                                                                                        margin: getMargin(
                                                                                          left: 4,
                                                                                          bottom: 2,
                                                                                        ),
                                                                                        decoration: BoxDecoration(
                                                                                          color: ColorConstant.whiteA70019,
                                                                                          borderRadius: BorderRadius.circular(
                                                                                            getHorizontalSize(
                                                                                              2,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  height: getVerticalSize(
                                                                                    5,
                                                                                  ),
                                                                                  width: getHorizontalSize(
                                                                                    11,
                                                                                  ),
                                                                                  margin: getMargin(
                                                                                    top: 1,
                                                                                  ),
                                                                                  decoration: BoxDecoration(
                                                                                    color: ColorConstant.whiteA70019,
                                                                                    borderRadius: BorderRadius.circular(
                                                                                      getHorizontalSize(
                                                                                        2,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: getPadding(
                                                                                    top: 1,
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                    children: [
                                                                                      Container(
                                                                                        height: getSize(
                                                                                          7,
                                                                                        ),
                                                                                        width: getSize(
                                                                                          7,
                                                                                        ),
                                                                                        decoration: BoxDecoration(
                                                                                          color: ColorConstant.teal400,
                                                                                          borderRadius: BorderRadius.circular(
                                                                                            getHorizontalSize(
                                                                                              2,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        height: getVerticalSize(
                                                                                          5,
                                                                                        ),
                                                                                        width: getHorizontalSize(
                                                                                          11,
                                                                                        ),
                                                                                        margin: getMargin(
                                                                                          left: 4,
                                                                                          top: 2,
                                                                                        ),
                                                                                        decoration: BoxDecoration(
                                                                                          color: ColorConstant.whiteA70019,
                                                                                          borderRadius: BorderRadius.circular(
                                                                                            getHorizontalSize(
                                                                                              2,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              getPadding(
                                                                            top:
                                                                                125,
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(
                                                                                svgPath: ImageConstant.imgGroup1325,
                                                                                height: getVerticalSize(
                                                                                  14,
                                                                                ),
                                                                                width: getHorizontalSize(
                                                                                  200,
                                                                                ),
                                                                              ),
                                                                              CustomButton(
                                                                                height: getVerticalSize(
                                                                                  42,
                                                                                ),
                                                                                width: getHorizontalSize(
                                                                                  200,
                                                                                ),
                                                                                text: "Total (USDT)",
                                                                                margin: getMargin(
                                                                                  top: 21,
                                                                                ),
                                                                                fontStyle: ButtonFontStyle.GothicA1SemiBold16,
                                                                              ),
                                                                              Padding(
                                                                                padding: getPadding(
                                                                                  top: 18,
                                                                                ),
                                                                                child: Row(
                                                                                  children: [
                                                                                    Text(
                                                                                      "Avbl",
                                                                                      overflow: TextOverflow.ellipsis,
                                                                                      textAlign: TextAlign.left,
                                                                                      style: AppStyle.txtGothicA1SemiBold13Bluegray40090,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: getPadding(
                                                                                        left: 68,
                                                                                      ),
                                                                                      child: Text(
                                                                                        "1 000.00 USDT",
                                                                                        overflow: TextOverflow.ellipsis,
                                                                                        textAlign: TextAlign.left,
                                                                                        style: AppStyle.txtGothicA1SemiBold13WhiteA700,
                                                                                      ),
                                                                                    ),
                                                                                    Card(
                                                                                      clipBehavior: Clip.antiAlias,
                                                                                      elevation: 0,
                                                                                      margin: getMargin(
                                                                                        left: 7,
                                                                                        top: 2,
                                                                                      ),
                                                                                      color: ColorConstant.blueGray400,
                                                                                      shape: RoundedRectangleBorder(
                                                                                        borderRadius: BorderRadius.circular(
                                                                                          getHorizontalSize(
                                                                                            7,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      child: Container(
                                                                                        height: getSize(
                                                                                          14,
                                                                                        ),
                                                                                        width: getSize(
                                                                                          14,
                                                                                        ),
                                                                                        padding: getPadding(
                                                                                          all: 3,
                                                                                        ),
                                                                                        decoration: AppDecoration.fillBluegray400.copyWith(
                                                                                          borderRadius: BorderRadiusStyle.roundedBorder6,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          alignment: Alignment.center,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: Alignment.center,
                                                                                              child: Container(
                                                                                                height: getVerticalSize(
                                                                                                  2,
                                                                                                ),
                                                                                                width: getHorizontalSize(
                                                                                                  8,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: ColorConstant.whiteA700,
                                                                                                  borderRadius: BorderRadius.circular(
                                                                                                    getHorizontalSize(
                                                                                                      1,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: Alignment.center,
                                                                                              child: Container(
                                                                                                height: getVerticalSize(
                                                                                                  8,
                                                                                                ),
                                                                                                width: getHorizontalSize(
                                                                                                  2,
                                                                                                ),
                                                                                                decoration: BoxDecoration(
                                                                                                  color: ColorConstant.whiteA700,
                                                                                                  borderRadius: BorderRadius.circular(
                                                                                                    getHorizontalSize(
                                                                                                      1,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              CustomButton(
                                                                                height: getVerticalSize(
                                                                                  40,
                                                                                ),
                                                                                width: getHorizontalSize(
                                                                                  200,
                                                                                ),
                                                                                text: "Buy BTC",
                                                                                margin: getMargin(
                                                                                  top: 20,
                                                                                ),
                                                                                variant: ButtonVariant.FillTeal400,
                                                                                fontStyle: ButtonFontStyle.GothicA1Bold16,
                                                                              ),
                                                                              Padding(
                                                                                padding: getPadding(
                                                                                  top: 27,
                                                                                ),
                                                                                child: Row(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      padding: getPadding(
                                                                                        left: 11,
                                                                                        top: 2,
                                                                                        right: 11,
                                                                                        bottom: 2,
                                                                                      ),
                                                                                      decoration: AppDecoration.txtFillBluegray80001.copyWith(
                                                                                        borderRadius: BorderRadiusStyle.txtRoundedBorder6,
                                                                                      ),
                                                                                      child: Text(
                                                                                        "Open Orders (4)",
                                                                                        overflow: TextOverflow.ellipsis,
                                                                                        textAlign: TextAlign.left,
                                                                                        style: AppStyle.txtGothicA1SemiBold14WhiteA700,
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: getPadding(
                                                                                        left: 21,
                                                                                        top: 2,
                                                                                        bottom: 3,
                                                                                      ),
                                                                                      child: Text(
                                                                                        "Funds",
                                                                                        overflow: TextOverflow.ellipsis,
                                                                                        textAlign: TextAlign.left,
                                                                                        style: AppStyle.txtGothicA1SemiBold14,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: getPadding(
                                                                                  top: 11,
                                                                                ),
                                                                                child: Row(
                                                                                  children: [
                                                                                    Card(
                                                                                      clipBehavior: Clip.antiAlias,
                                                                                      elevation: 0,
                                                                                      margin: getMargin(
                                                                                        top: 2,
                                                                                        bottom: 1,
                                                                                      ),
                                                                                      color: ColorConstant.blueA700,
                                                                                      shape: RoundedRectangleBorder(
                                                                                        borderRadius: BorderRadius.circular(
                                                                                          getHorizontalSize(
                                                                                            3,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      child: Container(
                                                                                        height: getSize(
                                                                                          14,
                                                                                        ),
                                                                                        width: getSize(
                                                                                          14,
                                                                                        ),
                                                                                        padding: getPadding(
                                                                                          left: 3,
                                                                                          top: 4,
                                                                                          right: 3,
                                                                                          bottom: 4,
                                                                                        ),
                                                                                        decoration: AppDecoration.fillBlueA700.copyWith(
                                                                                          borderRadius: BorderRadiusStyle.roundedBorder2,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            CustomImageView(
                                                                                              svgPath: ImageConstant.imgVector582,
                                                                                              height: getVerticalSize(
                                                                                                5,
                                                                                              ),
                                                                                              width: getHorizontalSize(
                                                                                                8,
                                                                                              ),
                                                                                              alignment: Alignment.bottomCenter,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: getPadding(
                                                                                        left: 9,
                                                                                      ),
                                                                                      child: Text(
                                                                                        "Show all ",
                                                                                        overflow: TextOverflow.ellipsis,
                                                                                        textAlign: TextAlign.left,
                                                                                        style: AppStyle.txtGothicA1SemiBold14,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              getPadding(
                                                                            bottom:
                                                                                138,
                                                                          ),
                                                                          child:
                                                                              Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                children: [
                                                                                  Container(
                                                                                    width: getHorizontalSize(
                                                                                      37,
                                                                                    ),
                                                                                    margin: getMargin(
                                                                                      top: 5,
                                                                                      bottom: 1,
                                                                                    ),
                                                                                    child: Text(
                                                                                      "43,805\n43,804\n43,798\n43,796\n43,794\n43,792",
                                                                                      maxLines: null,
                                                                                      textAlign: TextAlign.left,
                                                                                      style: AppStyle.txtGothicA1SemiBold12,
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    height: getVerticalSize(
                                                                                      72,
                                                                                    ),
                                                                                    width: getHorizontalSize(
                                                                                      71,
                                                                                    ),
                                                                                    margin: getMargin(
                                                                                      left: 8,
                                                                                    ),
                                                                                    child: Stack(
                                                                                      alignment: Alignment.topRight,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: Alignment.topCenter,
                                                                                          child: Container(
                                                                                            height: getVerticalSize(
                                                                                              18,
                                                                                            ),
                                                                                            width: getHorizontalSize(
                                                                                              71,
                                                                                            ),
                                                                                            decoration: BoxDecoration(
                                                                                              color: ColorConstant.pink40065,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.topRight,
                                                                                          child: Container(
                                                                                            height: getVerticalSize(
                                                                                              18,
                                                                                            ),
                                                                                            width: getHorizontalSize(
                                                                                              54,
                                                                                            ),
                                                                                            margin: getMargin(
                                                                                              top: 18,
                                                                                            ),
                                                                                            decoration: BoxDecoration(
                                                                                              color: ColorConstant.pink40065,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.bottomRight,
                                                                                          child: Container(
                                                                                            height: getVerticalSize(
                                                                                              18,
                                                                                            ),
                                                                                            width: getHorizontalSize(
                                                                                              40,
                                                                                            ),
                                                                                            margin: getMargin(
                                                                                              bottom: 18,
                                                                                            ),
                                                                                            decoration: BoxDecoration(
                                                                                              color: ColorConstant.pink40065,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.bottomRight,
                                                                                          child: Container(
                                                                                            height: getVerticalSize(
                                                                                              18,
                                                                                            ),
                                                                                            width: getHorizontalSize(
                                                                                              20,
                                                                                            ),
                                                                                            decoration: BoxDecoration(
                                                                                              color: ColorConstant.pink40065,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.bottomRight,
                                                                                          child: Container(
                                                                                            width: getHorizontalSize(
                                                                                              32,
                                                                                            ),
                                                                                            child: Text(
                                                                                              "20,5K\n20,1K\n19,5K\n19,2K\n18,5K\n18,3K",
                                                                                              maxLines: null,
                                                                                              textAlign: TextAlign.right,
                                                                                              style: AppStyle.txtGothicA1Bold12,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Container(
                                                                                height: getVerticalSize(
                                                                                  38,
                                                                                ),
                                                                                width: getHorizontalSize(
                                                                                  82,
                                                                                ),
                                                                                margin: getMargin(
                                                                                  top: 10,
                                                                                ),
                                                                                child: Stack(
                                                                                  alignment: Alignment.bottomLeft,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: Alignment.topCenter,
                                                                                      child: Text(
                                                                                        "43,810.58",
                                                                                        overflow: TextOverflow.ellipsis,
                                                                                        textAlign: TextAlign.left,
                                                                                        style: AppStyle.txtGothicA1SemiBold18,
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: Alignment.bottomLeft,
                                                                                      child: Text(
                                                                                        "~ \$43,810.58",
                                                                                        overflow: TextOverflow.ellipsis,
                                                                                        textAlign: TextAlign.left,
                                                                                        style: AppStyle.txtGothicA1Medium13,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                height: getVerticalSize(
                                                                                  108,
                                                                                ),
                                                                                width: getHorizontalSize(
                                                                                  117,
                                                                                ),
                                                                                margin: getMargin(
                                                                                  top: 11,
                                                                                ),
                                                                                child: Stack(
                                                                                  alignment: Alignment.bottomRight,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: Alignment.bottomRight,
                                                                                      child: Container(
                                                                                        height: getVerticalSize(
                                                                                          18,
                                                                                        ),
                                                                                        width: getHorizontalSize(
                                                                                          107,
                                                                                        ),
                                                                                        decoration: BoxDecoration(
                                                                                          color: ColorConstant.teal40065,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: Alignment.bottomRight,
                                                                                      child: Container(
                                                                                        height: getVerticalSize(
                                                                                          18,
                                                                                        ),
                                                                                        width: getHorizontalSize(
                                                                                          94,
                                                                                        ),
                                                                                        margin: getMargin(
                                                                                          bottom: 18,
                                                                                        ),
                                                                                        decoration: BoxDecoration(
                                                                                          color: ColorConstant.teal40065,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: Alignment.bottomRight,
                                                                                      child: Container(
                                                                                        height: getVerticalSize(
                                                                                          18,
                                                                                        ),
                                                                                        width: getHorizontalSize(
                                                                                          71,
                                                                                        ),
                                                                                        margin: getMargin(
                                                                                          bottom: 36,
                                                                                        ),
                                                                                        decoration: BoxDecoration(
                                                                                          color: ColorConstant.teal40065,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: Alignment.topRight,
                                                                                      child: Container(
                                                                                        height: getVerticalSize(
                                                                                          18,
                                                                                        ),
                                                                                        width: getHorizontalSize(
                                                                                          54,
                                                                                        ),
                                                                                        margin: getMargin(
                                                                                          top: 36,
                                                                                        ),
                                                                                        decoration: BoxDecoration(
                                                                                          color: ColorConstant.teal40065,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: Alignment.topRight,
                                                                                      child: Container(
                                                                                        height: getVerticalSize(
                                                                                          18,
                                                                                        ),
                                                                                        width: getHorizontalSize(
                                                                                          40,
                                                                                        ),
                                                                                        margin: getMargin(
                                                                                          top: 18,
                                                                                        ),
                                                                                        decoration: BoxDecoration(
                                                                                          color: ColorConstant.teal40065,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: Alignment.topRight,
                                                                                      child: Container(
                                                                                        height: getVerticalSize(
                                                                                          18,
                                                                                        ),
                                                                                        width: getHorizontalSize(
                                                                                          20,
                                                                                        ),
                                                                                        decoration: BoxDecoration(
                                                                                          color: ColorConstant.teal40065,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: Alignment.centerLeft,
                                                                                      child: Container(
                                                                                        width: getHorizontalSize(
                                                                                          37,
                                                                                        ),
                                                                                        child: Text(
                                                                                          "43,811\n43,812\n43,714\n43,716\n43,717\n43,720",
                                                                                          maxLines: null,
                                                                                          textAlign: TextAlign.left,
                                                                                          style: AppStyle.txtGothicA1SemiBold12Teal400,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: Alignment.centerRight,
                                                                                      child: Container(
                                                                                        width: getHorizontalSize(
                                                                                          32,
                                                                                        ),
                                                                                        child: Text(
                                                                                          "15,2K\n16,1K\n17,5K\n19,2K\n18,5K\n21,3K",
                                                                                          maxLines: null,
                                                                                          textAlign: TextAlign.right,
                                                                                          style: AppStyle.txtGothicA1Bold12,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Container(
                                                      padding: getPadding(
                                                        left: 9,
                                                        top: 2,
                                                        right: 9,
                                                        bottom: 2,
                                                      ),
                                                      decoration: AppDecoration
                                                          .txtFillBluegray80001
                                                          .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder6,
                                                      ),
                                                      child: Text(
                                                        "Cancel all",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGothicA1SemiBold14WhiteA700,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgGroup1334,
                                              height: getVerticalSize(
                                                118,
                                              ),
                                              width: getHorizontalSize(
                                                335,
                                              ),
                                              margin: getMargin(
                                                top: 9,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 14,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "BTC / USDT",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGothicA1Bold14,
                                      ),
                                      Text(
                                        "2022-03-05 16:45:24",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGothicA1SemiBold13,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 4,
                                  ),
                                  child: Text(
                                    "Limit / Buy",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGothicA1Bold13Teal400,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 6,
                                    bottom: 409,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 5,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Amount",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGothicA1SemiBold13,
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 35,
                                                  ),
                                                  child: Text(
                                                    "0,00 / 0,32500543",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGothicA1SemiBold13,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Price",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGothicA1SemiBold13,
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 51,
                                                    ),
                                                    child: Text(
                                                      "23,900",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGothicA1SemiBold13WhiteA700,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          24,
                                        ),
                                        width: getHorizontalSize(
                                          65,
                                        ),
                                        margin: getMargin(
                                          top: 16,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: getVerticalSize(
                                                  24,
                                                ),
                                                width: getHorizontalSize(
                                                  65,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant
                                                      .blueGray80001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      6,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                "Cancel",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGothicA1SemiBold14WhiteA700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
