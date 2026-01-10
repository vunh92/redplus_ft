import 'package:flutter/material.dart';

import 'di/di.dart';
import 'app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}
