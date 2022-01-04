import 'package:edu_homework/utils/custom_appbar.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: const Center(
        child: Text('Данная страница находится на этапе разработки'),
      ),
    );
  }
}
