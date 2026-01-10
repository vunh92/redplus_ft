import 'package:flutter/material.dart';

class AppColor {
  static const appBarGradient = LinearGradient(
    colors: [
      Color(0xff84D8E3),
      Color(0xffA6E6CE),
    ],
    // stops: [0.5, 1.0],
  );
  static const addressBarGradient = LinearGradient(
    colors: [
      Color(0xffB6E8EF),
      Color(0xffCBF1E2),
    ],
    stops: [0.5, 1.0],
  );

  static const goldenGradient = LinearGradient(
      colors: [Color(0xffFFEDBB), Color(0xffFEDC71)], stops: [0.25, 1]);

  static const primary = Color.fromRGBO(203, 56, 48, 1.0);
  static const secondary = Color(0xff9e0021);
  static const yellow = Color(0xffFED813);
  static const background = Colors.white;
  static const disable = Color.fromRGBO(231, 231, 231, 1.0);
  static const green = Color.fromRGBO(34, 150, 83, 1.0);
  static const blue = Color.fromRGBO(47, 107, 255, 1.0);
  static const orange = Color.fromRGBO(255, 128, 22, 1.0);
  static const red = Color(0xffB22603);
  static var selectedNavBar = Colors.white;
  static const unselectedNavBar = Color.fromRGBO(126, 134, 140, 1.0);
  static const text = Color.fromRGBO(26, 26, 26, 1.0);
  static const textSecondary = Color.fromRGBO(26, 26, 26, 0.6);
  static const textHint = Color.fromRGBO(152, 152, 152, 1.0);
  static const shadow = Color.fromRGBO(0, 0, 0, 0.1);
  static const border = Color.fromRGBO(215, 215, 215, 1.0);
}