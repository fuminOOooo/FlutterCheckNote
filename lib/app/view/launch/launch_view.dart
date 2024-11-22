part of 'launch.dart';

class LaunchView extends StatelessWidget {

  static const String PATH = '/';

  final LaunchLogic logic = Get.find<LaunchLogic>();
  final LaunchState state = Get.find<LaunchLogic>().state;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      body: Stack(
        children: [
          Column(
            children: [
              Text("Hello World.")
            ],
          ),
        ],
      )
    );
  }
}
