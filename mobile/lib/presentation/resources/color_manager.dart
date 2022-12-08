import 'package:flutter/material.dart';

class ColorManager {
  //static Color primary = HexColor.fromHex("#9fcc66");
  static Color primary = HexColor.fromHex("#bae7f9");
  static Color darkGreen = HexColor.fromHex("#245d28");
  static Color green = HexColor.fromHex("#2f8323");
  static Color lightGreen = HexColor.fromHex("#8ec93d");
  static Color orange = HexColor.fromHex("#de9a2b");
  static Color linghtGrey = HexColor.fromHex("#c1bdba");
  static Color primaryOpacity70 = HexColor.fromHex("#e4e777");

  // new colors
  static Color darkPrimary = HexColor.fromHex("#0c480e");
  static Color green1 = HexColor.fromHex("#9dc5cd");
  static Color blue = HexColor.fromHex("#9bd2ed");
  static Color blue1 = HexColor.fromHex("#5bbdc4");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color error = HexColor.fromHex("#e61f34");
  static Color black = HexColor.fromHex("#000000"); // red color
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}