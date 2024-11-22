part of 'intro.dart';

class IntroView extends StatelessWidget {
  static const String PATH = '/';

  final IntroLogic logic = Get.find<IntroLogic>();
  final IntroState state = Get.find<IntroLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Switch(
            onChanged: (val) => logic.changeTheme(),
            value: state.darkMode.value)
        ),
        const Text(
          "Dark Mode",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    )));
  }
}
