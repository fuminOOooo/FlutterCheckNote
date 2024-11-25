import 'package:flutter/material.dart';

class CustomColor {
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color red = Colors.red;
  static Color customGray = fromHex(hex: '#7D7983');
  static List<Color> appGradient = [
    fromHex(hex: "#7B92AD"),
    fromHex(hex: "#F4C313"),
  ];
}

Color fromHex({required String hex}) {
  // Usage : Color.hexToColor('#000000');
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}
