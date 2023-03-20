import 'package:flutter/material.dart';
import 'package:lenoli_s_application1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBluegray80001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray80001,
          width: getHorizontalSize(
            1,
          ),
          // strokeAlign: StrokeAlign.outside,
        ),
      );
  static BoxDecoration get fillBluegray400 => BoxDecoration(
        color: ColorConstant.blueGray400,
      );
  static BoxDecoration get outlineBluegray400 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray400,
          width: getHorizontalSize(
            2,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray900 => BoxDecoration(
        color: ColorConstant.blueGray80001,
        border: Border.all(
          color: ColorConstant.blueGray900,
          width: getHorizontalSize(
            1,
          ),
          // strokeAlign: StrokeAlign.outside,
        ),
      );
  static BoxDecoration get outline => BoxDecoration();
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillBluegray80001 => BoxDecoration(
        color: ColorConstant.blueGray80001,
      );
  static BoxDecoration get fillBlueA700 => BoxDecoration(
        color: ColorConstant.blueA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: ColorConstant.blueGray900,
      );
  static BoxDecoration get fillWhiteA7007a => BoxDecoration(
        color: ColorConstant.whiteA7007a,
      );
  static BoxDecoration get txtFillBluegray80001 => BoxDecoration(
        color: ColorConstant.blueGray80001,
      );
  static BoxDecoration get txtFillTeal400 => BoxDecoration(
        color: ColorConstant.teal400,
      );
  static BoxDecoration get txtFillTeal40065 => BoxDecoration(
        color: ColorConstant.teal40065,
      );
  static BoxDecoration get outlineWhiteA7001 => BoxDecoration(
        color: ColorConstant.blueGray900,
        border: Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1,
          ),
          // strokeAlign: StrokeAlign.center,
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6,
    ),
  );

  static BorderRadius roundedBorder36 = BorderRadius.circular(
    getHorizontalSize(
      36,
    ),
  );

  static BorderRadius roundedBorder2 = BorderRadius.circular(
    getHorizontalSize(
      2,
    ),
  );

  static BorderRadius txtRoundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6,
    ),
  );
}
