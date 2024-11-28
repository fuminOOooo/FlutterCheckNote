part of 'app.dart';

class AppComponent extends StatefulWidget {
  final AppApplication _application;
  final ThemeMode _theme;
  const AppComponent(this._application, this._theme, {super.key});
  @override
  State createState() {
    return AppComponentState();
  }
}

class AppComponentState extends State<AppComponent> {
  @override
  void dispose() async {
    super.dispose();
    widget._application.onTerminate();
  }

  @override
  Widget build(BuildContext context) {
    final materialApp = GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      theme: CustomTheme.lightTheme,
      themeMode: widget._theme,
      defaultTransition: Transition.cupertino,
      darkTheme: CustomTheme.darkTheme,
      getPages: AppPages.routes,
      initialBinding: IntroBinding(),
      title: Environment.value.appName,
    );
    final provider =
        AppProvider(application: widget._application, child: materialApp);
    WidgetsFlutterBinding.ensureInitialized();
    return provider;
  }
}
