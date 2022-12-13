import 'package:biblia/app/di.dart';
import 'package:biblia/app/my_app.dart';
import 'package:flutter/material.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  runApp(MyApp());
}
