import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

ThemeData buildLightAppTheme() {
  // final ThemeData lightTheme = ThemeData.light();
  //
  // return lightTheme.copyWith();

  return FlexThemeData.light(scheme: FlexScheme.deepBlue);
}

ThemeData buildDarkAppTheme() {
  // final ThemeData darkTheme = ThemeData.dark();
  //
  // return darkTheme.copyWith();

  return FlexThemeData.dark(scheme: FlexScheme.deepBlue);
}
