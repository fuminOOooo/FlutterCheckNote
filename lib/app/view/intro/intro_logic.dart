part of 'intro.dart';

class IntroLogic extends GetxController {
  final IntroState state = IntroState();
  final _storageService = Get.find<SharedPreferences>();

  changeTheme() {
    ThemeData updatedTheme =
        Get.isDarkMode ? ThemeData.light() : ThemeData.dark();
    state.darkMode.value = !Get.isDarkMode;
    Get.changeTheme(updatedTheme);
    update();
  }
}
