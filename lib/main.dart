import 'package:edu_homework/presenter/main_screen/main_screen.dart';
import 'package:edu_homework/utils/app_theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.materialTheme,
      home: const MainScreen(),
    );
  }
}
