import 'package:flutter/material.dart';

import 'application.dart';
import 'injector.dart' as di;

main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const Application());
}
