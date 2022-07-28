import 'package:flutter/material.dart';

class BankingTheme {
  static const primaryColor = Color.fromARGB(255, 0, 169, 116);
  static const onPrimaryColor = Color.fromARGB(255, 255, 255, 255);
  static const secondaryColor = Color.fromARGB(255, 22, 112, 89);
  static const onSecondaryColor = onPrimaryColor;
  static const errorColor = Color.fromARGB(255, 209, 14, 0);
  static const onErrorColor = onPrimaryColor;
  static const backgroundColor = onPrimaryColor;
  static const onBackgroundColor = onPrimaryColor;
  static const surfaceColor = Color.fromARGB(255, 30, 130, 98);
  static const onSurfaceColor = Color.fromARGB(255, 30, 130, 98);
  static const fontColor = secondaryColor;

  static const colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: Colors.white,
      secondary: secondaryColor,
      onSecondary: onSecondaryColor,
      error: errorColor,
      onError: onErrorColor,
      background: backgroundColor,
      onBackground: onBackgroundColor,
      surface: surfaceColor,
      onSurface: onSurfaceColor);

  static const textStyle = TextStyle(fontSize: 24, color: fontColor);

  static ThemeData data() {
    return ThemeData(
        fontFamily: 'Inter',
        colorScheme: colorScheme,
        textTheme: const TextTheme(
            subtitle1: textStyle,
            subtitle2: textStyle,
            overline: textStyle,
            labelMedium: textStyle,
            caption: textStyle,
            button: textStyle,
            bodyText1: textStyle,
            bodyText2: textStyle));
  }
}
