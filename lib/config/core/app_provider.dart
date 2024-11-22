part of 'app.dart';

class AppProvider extends InheritedWidget {
  late final AppApplication application;

  AppProvider({Key? key, required Widget child, required this.application})
      : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static AppProvider of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<AppProvider>()
        as AppProvider);
  }

  static AppApplication getApplication(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<AppProvider>()
            as AppProvider)
        .application;
  }
}
