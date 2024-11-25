part of 'intro.dart';

class IntroLogic extends GetxController {
  final SharedPreferences _storageService = Get.find<SharedPreferences>();
  final IntroState state = IntroState();
  updateTheme() {
    var themeName = "";
    if (state.darkMode.value == ThemeMode.dark) {
      state.darkMode.value = ThemeMode.light;
      themeName = StringConstant.light;
    } else {
      state.darkMode.value = ThemeMode.dark;
      themeName = StringConstant.dark;
    }
    Get.changeThemeMode(state.darkMode.value);
    _storageService.setString(StringConstant.appTheme, themeName);
  }
}
