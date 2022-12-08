
import 'package:biblia/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const Center(
        child: Text("Bem vindo ao Login de acesso"),
      ),
    );
  }
}
