part of 'app.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const INITIAL = IntroView.PATH;
  static final routes = [
    GetPage(
      name: INITIAL,
      page: () => IntroView(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: CheckView.PATH, 
      page: () => CheckView(),
      binding: CheckBinding(),
      transition: Transition.fade
    )
  ];
}
