import 'package:flutter/material.dart';

class AppThemeData {
  static const defaultSize = Size(double.infinity, 48);
  static const primaryColor = Colors.black;

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: defaultSize,
      maximumSize: defaultSize,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    ),
  );

  static const appBarTextStyle = TextStyle(
    color: primaryColor,
    fontSize: 26,
    shadows: [
      Shadow(
        offset: Offset(0, 5),
        blurRadius: 10.0,
        color: Color.fromARGB(80, 0, 0, 0),
      ),
    ],
  );

  static ThemeData get materialTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: primaryColor,
      elevatedButtonTheme: elevatedButtonTheme,
      buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
      appBarTheme: const AppBarTheme(
        titleTextStyle: appBarTextStyle,
        foregroundColor: primaryColor,
      ),
    );
  }
}
