part of 'intro.dart';

class IntroView extends StatelessWidget {
  static const String PATH = '/';

  final IntroLogic logic = Get.find<IntroLogic>();
  final IntroState state = Get.find<IntroLogic>().state;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
        body: Center(
          child: Text(
            "Hello World.\nIntroView",
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1.0),
          ),
        )
      )
    );
  }
}
