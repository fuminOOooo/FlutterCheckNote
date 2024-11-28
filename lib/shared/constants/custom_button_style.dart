import 'package:flutter/material.dart';

import 'custom_color.dart';

class CustomButtonStyle {
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
      shadowColor: CustomColor.transparent,
      backgroundColor: CustomColor.transparent,
      shape: const RoundedRectangleBorder());
  static ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      shadowColor: CustomColor.transparent,
      backgroundColor: CustomColor.transparent,
      shape: const RoundedRectangleBorder(),
      side: BorderSide(color: CustomColor.transparent)
  );
}
