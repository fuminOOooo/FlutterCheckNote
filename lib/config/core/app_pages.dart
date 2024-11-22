part of 'app.dart';

class AppPages {

  static const INITIAL = IntroView.PATH;

  static final routes = [
    // GetPage(
    //   name: INITIAL,
    //   page: () => LaunchView(),
    //   binding: LaunchBinding(),
    // ),
  GetPage(
      name: INITIAL,
      page: () => IntroView(),
      binding: IntroBinding(),
    ),
  ];

}
