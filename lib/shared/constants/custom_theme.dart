import 'package:checknote/shared/constants/custom_color.dart';
import 'package:checknote/shared/constants/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomTheme {
static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: CustomColor.white,
      titleTextStyle: CustomTextStyle.appTitleLight
    ),
    scaffoldBackgroundColor: CustomColor.white,
    useMaterial3: true,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: CustomColor.black,
      onPrimary: CustomColor.black,
      secondary: CustomColor.customGray,
      onSecondary: CustomColor.white,
      error: CustomColor.red,
      onError: CustomColor.white,
      surface: CustomColor.white,
      onSurface: CustomColor.black
    )
  );

  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: CustomColor.black,
      titleTextStyle: CustomTextStyle.appTitleDark
    ),
    scaffoldBackgroundColor: CustomColor.black,
    useMaterial3: true,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: CustomColor.white,
      onPrimary: CustomColor.black,
      secondary: CustomColor.customGray,
      onSecondary: CustomColor.black,
      error: CustomColor.red,
      onError: CustomColor.white,
      surface: CustomColor.black,
      onSurface: CustomColor.white
    )
  );
}