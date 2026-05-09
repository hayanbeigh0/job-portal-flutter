import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'src/app/app.dart';
import 'src/app/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  runApp(const JobPortalApp());
}
