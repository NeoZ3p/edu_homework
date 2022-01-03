import 'package:edu_homework/utils/custom_appbar.dart';
import 'package:edu_homework/presenter/main_screen/widgets/main_screen_body.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Главная'),
      body: MainScreenBody(),
    );
  }
}
