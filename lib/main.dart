import 'package:flutter/material.dart';
import 'package:recipe_app/common/constant.dart';

import 'application.dart';
import 'injector.dart' as di;

main() {
  print(TOKEN);
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const Application());
}
