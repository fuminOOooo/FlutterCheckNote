import 'package:checknote/config/environment.dart';
import 'package:flutter/material.dart';

void main() async {
  Production();
}

class Production extends Environment {
  @override
  final String appName = "CheckNote";
}
