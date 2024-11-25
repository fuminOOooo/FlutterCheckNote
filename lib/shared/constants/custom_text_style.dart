import 'package:checknote/shared/constants/number_constant.dart';
import 'package:flutter/material.dart';

class CustomTextStyle {
  static const TextStyle appTitle = TextStyle(
      fontSize: NumberConstant.titleFontSize,
      fontWeight: FontWeight.bold
    );

  static const TextStyle interactableText = TextStyle(
      fontSize: NumberConstant.interactableTextFontSize,
      fontWeight: FontWeight.normal
    );
}
