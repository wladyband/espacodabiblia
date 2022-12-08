import 'package:biblia/presentation/resources/routes_manager.dart';
import 'package:biblia/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal();

  static final MyApp intance = MyApp._internal();

  factory MyApp() => intance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.openingRoute,
      theme: getApplicationTheme(),
    );
  }
}
