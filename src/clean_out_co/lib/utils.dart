import 'package:flutter/material.dart';

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

class MyColors {
  static Color orangeColor = Color(0xFFFC9732);
  static Color greenColor = Color(0xFF026928);
  static Color lightGreyColor = Color(0xFFF2F2F2);
  static Color medGreyColor = Color(0xFF7E8389);
}

class Constants {
  Constants._();
  static const double padding =20;
  static const double avatarRadius =45;
}