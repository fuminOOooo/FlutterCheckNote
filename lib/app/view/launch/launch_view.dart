part of 'launch.dart';

class LaunchView extends StatelessWidget {

  static const String PATH = '/';

  final LaunchLogic logic = Get.find<LaunchLogic>();
  final LaunchState state = Get.find<LaunchLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: const Stack(
        children: [
          Column(
            children: [
              Text("Hello World.\nLaunch View")
            ],
          ),
        ],
      )
    );
  }
}
