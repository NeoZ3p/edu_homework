import 'package:flutter/material.dart';

class AppThemeData {
  static const defaultSize = Size(double.infinity, 48);
  static const primaryColor = Colors.black;

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: defaultSize,
      maximumSize: defaultSize,
      onPrimary: primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    ),
  );

  static const textTheme = TextTheme(
    bodyText2: TextStyle(color: primaryColor),
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
      textTheme: textTheme,
      primarySwatch: Colors.blue,
      primaryColor: primaryColor,
      elevatedButtonTheme: elevatedButtonTheme,
      appBarTheme: const AppBarTheme(
        titleTextStyle: appBarTextStyle,
        foregroundColor: primaryColor,
      ),
    );
  }
}
