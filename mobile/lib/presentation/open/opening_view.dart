import 'dart:async';

import 'package:biblia/presentation/resources/assets_manager.dart';
import 'package:biblia/presentation/resources/color_manager.dart';
import 'package:biblia/presentation/resources/font_manager.dart';
import 'package:biblia/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';

class OpeningView extends StatefulWidget {
  const OpeningView({Key? key}) : super(key: key);

  @override
  State<OpeningView> createState() => _OpeningViewState();
}

class _OpeningViewState extends State<OpeningView> {

  Timer? _timer;
  _startDelay(){
    _timer = Timer(Duration(seconds: 2), _goNext);
  }

  _goNext(){
    Navigator.pushReplacementNamed(context, Routes.loginRoute);
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
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
                style: TextStyle(fontSize: FontSize.s20, color: ColorManager.darkGreen),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
