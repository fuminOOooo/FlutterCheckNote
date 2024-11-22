import 'package:checknote/config/environment.dart';

void main() async {
  Production();
}

class Production extends Environment {
  final String appName = "CheckNote";
}