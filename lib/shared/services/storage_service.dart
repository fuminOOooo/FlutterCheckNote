import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService extends GetxService {
  Future<SharedPreferences> instance() async {
    return await SharedPreferences.getInstance();
  }
}