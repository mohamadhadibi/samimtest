import 'package:flutter/material.dart';
import 'package:samimtest/di/injection_container.dart' as di;

import 'presentation/app/application.dart';

main() async {
  await di.init();
  runApp(const Application());
}
