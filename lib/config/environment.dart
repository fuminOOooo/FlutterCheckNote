import 'package:checknote/config/core/app.dart';
import 'package:flutter/material.dart';

class Environment {
  static late Environment value;
  late String appName;
  Environment() {
    value = this;
    _init();
  }
  void _init() {
    var application = AppApplication();
    application.onCreate();
    runApp(AppComponent(application));
  }
}
