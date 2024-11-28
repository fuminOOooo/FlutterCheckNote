part of 'check.dart';
class CheckView extends StatelessWidget {
  // ignore: constant_identifier_names
  static const String PATH = StringConstant.checkViewPath;
  final CheckLogic _logic = Get.find<CheckLogic>();
  final CheckState _state = Get.find<CheckLogic>().state;
  final size = Get.mediaQuery.size;
  CheckView({super.key});
  initState() {}
  @override
  Widget build(BuildContext context) {
    return BaseView(
      children: const [
        
      ]
    );
  }
}
