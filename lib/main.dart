import 'package:checknote/config/environment.dart';
import 'package:checknote/shared/constants/string_constant.dart';

void main() async {
  Production();
}

class Production extends Environment {
  @override
  // ignore: overridden_fields
  final String appName = StringConstant.appName;
}
