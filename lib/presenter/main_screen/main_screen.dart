import 'package:edu_homework/presenter/main_screen/widgets/main_screen_body.dart';
import 'package:edu_homework/utils/page_names.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.mainScreen)),
      body: const MainScreenBody(),
    );
  }
}
