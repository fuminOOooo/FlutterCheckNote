part of 'intro.dart';

class IntroView extends StatelessWidget {
  static const String PATH = '/';
  final IntroLogic _logic = Get.find<IntroLogic>();
  final IntroState _state = Get.find<IntroLogic>().state;
  final size = Get.mediaQuery.size;

  IntroView({super.key});

  initState() {
    _logic.updateTheme();
  }

  _checkButton() {
    return SizedBox(
      width: size.width,
      child: ElevatedButton(
        style: CustomButtonStyle.elevatedButtonStyle,
        onPressed: () => {},
        child: Stack(
          alignment: Alignment.center,
          children: [
            Obx(() => Opacity(
                opacity: (_state.darkMode.value == ThemeMode.dark)
                    ? NumberConstant.darkenOpacity
                    : NumberConstant.fullOpacity,
                child: CustomPadding.defaultPadding(
                    child: ImageAsset.checkButton))),
            Text(StringConstant.checkTitle,
                style: CustomTextStyle.checkButtonStyle)
          ],
    )));
  }

  _noteButton() {
    return SizedBox(
          width: size.width,
          child: ElevatedButton(
              style: CustomButtonStyle.elevatedButtonStyle,
              onPressed: () => {},
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Obx(() => Opacity(
                      opacity: (_state.darkMode.value == ThemeMode.dark)
                          ? NumberConstant.darkenOpacity
                          : NumberConstant.fullOpacity,
                      child: CustomPadding.defaultPadding(
                          child: ImageAsset.noteButton))),
                  Text(StringConstant.noteTitle,
                      style: CustomTextStyle.noteButtonStyle)
                ],
              )));
  }

  @override
  Widget build(BuildContext context) {
    return BaseView(children: [
      _checkButton(),
      _noteButton(),
      CustomPadding.topPadding(
          child: Obx(() => Switch(
                value: _state.darkMode.value == ThemeMode.dark,
                onChanged: (val) => _logic.updateTheme(),
              ))),
      const Text(
        StringConstant.darkModeText,
        style: TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
