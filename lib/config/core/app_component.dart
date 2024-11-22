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
      defaultTransition: Transition.cupertino,
      getPages: AppPages.routes,
      initialBinding: LaunchBinding(),
      title: Environment.value.appName,
    );
    return AppProvider(application: widget._application, child: materialApp);
  }
}
