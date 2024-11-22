part of 'intro.dart';

class IntroState {
  IntroState();
  var darkMode = Get.isDarkMode.obs;
  var appearance = Get.theme.obs;
  var str = ''.obs;
}
