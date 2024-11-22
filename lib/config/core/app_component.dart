part of 'app.dart';

class AppComponent extends StatefulWidget {
  final AppApplication _application;
  const AppComponent(this._application, {super.key});
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
      themeMode: ThemeMode.system,
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
