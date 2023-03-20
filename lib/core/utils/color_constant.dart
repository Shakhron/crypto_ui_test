import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color teal40065 = fromHex('#6520c997');

  static Color whiteA7007e = fromHex('#7effffff');

  static Color blueA700 = fromHex('#1f62f1');

  static Color pink40065 = fromHex('#65f72f72');

  static Color blueA200 = fromHex('#438af9');

  static Color teal400 = fromHex('#20c997');

  static Color black900 = fromHex('#070b0f');

  static Color black901 = fromHex('#000000');

  static Color blueGray800 = fromHex('#2f385e');

  static Color whiteA70019 = fromHex('#19ffffff');

  static Color blueGray40014 = fromHex('#147d8696');

  static Color blueGray900 = fromHex('#212630');

  static Color pink400 = fromHex('#f72f72');

  static Color gray700 = fromHex('#5b5b5b');

  static Color blueGray200 = fromHex('#adb5bd');

  static Color blueGray400 = fromHex('#7d8696');

  static Color blueGray40090 = fromHex('#907d8696');

  static Color gray900 = fromHex('#1d1d1d');

  static Color blueGray80001 = fromHex('#333a47');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color whiteA70066 = fromHex('#66ffffff');

  static Color whiteA70026 = fromHex('#26ffffff');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo500 = fromHex('#2d3dd4');

  static Color whiteA7007a = fromHex('#7affffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
