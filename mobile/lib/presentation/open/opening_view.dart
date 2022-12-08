import 'dart:async';

import 'package:biblia/presentation/resources/assets_manager.dart';
import 'package:biblia/presentation/resources/color_manager.dart';
import 'package:biblia/presentation/resources/font_manager.dart';
import 'package:biblia/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class OpeningView extends StatefulWidget {
  const OpeningView({Key? key}) : super(key: key);

  @override
  State<OpeningView> createState() => _OpeningViewState();
}

class _OpeningViewState extends State<OpeningView> {


  @override
  void initState() {
    super.initState();

    timeDilation = 3;

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, Routes.loginRoute);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 190.0,
              height: 190.0,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(ImageAssets.openingLogo),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Espaço da Bíblia",
                style: TextStyle(fontSize: FontSize.s20, color: ColorManager.darkBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
