part of 'intro.dart';

class IntroState {
  IntroState();
  Rx<ThemeMode> darkMode = ThemeMode.system.obs;
  var str = ''.obs;
}
