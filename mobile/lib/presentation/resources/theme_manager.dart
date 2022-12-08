
import 'package:biblia/presentation/resources/color_manager.dart';
import 'package:biblia/presentation/resources/font_manager.dart';
import 'package:biblia/presentation/resources/styles_manager.dart';
import 'package:biblia/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';


ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.green1,
      // ripple color
      splashColor: ColorManager.primaryOpacity70,
      // will be used incase of disabled button for example
      accentColor: ColorManager.green1,
      // card view theme
      cardTheme: CardTheme(
          color: ColorManager.white, shadowColor: ColorManager.green, elevation: AppSize.s4),
      // App bar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.primary,
          elevation: AppSize.s4,
          shadowColor: ColorManager.primaryOpacity70,
          titleTextStyle: getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16)),
      // Button theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManager.green1,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.primaryOpacity70),

      // elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(color: ColorManager.white),
              primary: ColorManager.primary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s12)))),

      // Text theme
      textTheme: TextTheme(
          headline1: getSemiBoldStyle(color: ColorManager.darkGreen, fontSize: FontSize.s16),
          headline2: getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
          headline3: getBoldStyle(color: ColorManager.primary, fontSize: FontSize.s16),
          headline4: getRegularStyle(color: ColorManager.primary, fontSize: FontSize.s14),
          subtitle1: getMediumStyle(color: ColorManager.lightGreen, fontSize: FontSize.s14),
          subtitle2: getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s14),
          bodyText2: getMediumStyle(color: ColorManager.lightGreen),
          caption: getRegularStyle(color: ColorManager.green1),
          bodyText1: getRegularStyle(color: ColorManager.green)),
      // input decoration theme (text form field)

      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle: getRegularStyle(color: ColorManager.green1),

        // label style
        labelStyle: getMediumStyle(color: ColorManager.darkGreen),
        // error style
        errorStyle: getRegularStyle(color: ColorManager.error),

        // enabled border
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.green, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // focused border
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // error border
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        // focused error border
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      ));
}
