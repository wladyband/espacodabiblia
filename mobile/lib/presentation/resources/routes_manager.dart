
import 'package:biblia/app/di.dart';
import 'package:biblia/presentation/forgot_password/forgot_password_view.dart';
import 'package:biblia/presentation/login/login_view.dart';
import 'package:biblia/presentation/main/main_view.dart';
import 'package:biblia/presentation/open/opening_view.dart';
import 'package:biblia/presentation/register/register_view.dart';
import 'package:biblia/presentation/resources/strings_manager.dart';
import 'package:biblia/presentation/study_by_chat/study_by_chat_view.dart';
import 'package:flutter/material.dart';



class Routes {
  static const String openingRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String studyByChatRoute = "/studyByChat";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.openingRoute:
        return MaterialPageRoute(builder: (_) => OpeningView());
      case Routes.loginRoute:
        initLoginModule();
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case Routes.studyByChatRoute:
        return MaterialPageRoute(builder: (_) => StudyByChatView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text(AppStrings.noRouteFound),
          ),
          body: const Center(child: Text(AppStrings.noRouteFound)),
        ));
  }
}