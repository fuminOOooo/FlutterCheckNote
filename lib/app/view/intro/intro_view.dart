part of 'intro.dart';

class IntroView extends StatelessWidget {
  static const String PATH = '/';

  final IntroLogic _logic = Get.find<IntroLogic>();
  final IntroState _state = Get.find<IntroLogic>().state;

  initState() {
    _logic.updateTheme();
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(children: [
      Obx(() => Switch(
        value: _state.darkMode.value == ThemeMode.dark,
        onChanged: (val) => _logic.updateTheme(),
      )),
      const Text(
        StringConstant.darkModeText,
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
