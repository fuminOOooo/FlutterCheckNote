part of 'check.dart';
class CheckBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckLogic());
  }
} 