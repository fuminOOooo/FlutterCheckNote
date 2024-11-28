import 'package:checknote/shared/constants/number_constant.dart';
import 'package:flutter/material.dart';
import 'custom_color.dart';

class CustomTextStyle {
  static TextStyle appTitleLight = TextStyle(
      fontSize: NumberConstant.titleFontSize,
      fontWeight: FontWeight.bold,
      color: CustomColor.black);
  static TextStyle appTitleDark = TextStyle(
      fontSize: NumberConstant.titleFontSize,
      fontWeight: FontWeight.bold,
      color: CustomColor.white);
  static TextStyle appTitle = const TextStyle(
      fontSize: NumberConstant.titleFontSize, fontWeight: FontWeight.bold);
  static TextStyle checkButtonStyle = const TextStyle(
    fontSize: NumberConstant.checkButton , fontWeight: FontWeight.bold
  );
  static TextStyle noteButtonStyle = const TextStyle(
    fontSize: NumberConstant.noteButton , fontWeight: FontWeight.bold
  );
  static const TextStyle interactableBodyText = TextStyle(
      fontSize: NumberConstant.interactableBodyTextFontSize,
      fontWeight: FontWeight.normal);
}
