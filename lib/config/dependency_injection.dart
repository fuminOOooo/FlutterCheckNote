import 'package:checknote/shared/services/storage_service.dart';
import 'package:get/get.dart';

class DependencyInjection extends GetxService {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().instance());
  }
}