import 'package:checknote/config/core/app.dart';
import 'package:checknote/config/dependency_injection.dart';
import 'package:flutter/material.dart';

class Environment {
  static late Environment value;
  late String appName;
  Environment() {
    value = this;
    _init();
  }
  void _init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await DependencyInjection.init();
    var application = AppApplication();
    application.onCreate();
    runApp(AppComponent(application));
  }
}
