part of 'app.dart';

class AppApplication implements Application {
  ThemeMode getThemeOnCreate() {
    final SharedPreferences storageService = Get.find<SharedPreferences>();
    final previousTheme = storageService.getString(StringConstant.appTheme);
    switch (previousTheme) {
      case StringConstant.dark:
        return ThemeMode.dark;
      case StringConstant.light:
        return ThemeMode.light;
      default:
        return ThemeMode.light;
    }
  }

  @override
  void onCreate() {}

  @override
  void onTerminate() {}
  
}
