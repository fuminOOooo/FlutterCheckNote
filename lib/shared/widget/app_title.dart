import 'package:checknote/shared/constants/custom_text_style.dart';
import 'package:checknote/shared/constants/string_constant.dart';
import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return 
      Text(
        StringConstant.appName,
        style: CustomTextStyle.appTitle
      );
  }
}
