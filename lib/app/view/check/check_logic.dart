part of 'check.dart';
class CheckLogic extends GetxController {
  final SharedPreferences _storageService = Get.find<SharedPreferences>();
  final CheckState state = CheckState();
}
