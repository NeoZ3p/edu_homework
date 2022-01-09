import 'package:flutter/material.dart';

class StubPage extends StatelessWidget {
  const StubPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('Данная страница находится на этапе разработки'),
      ),
    );
  }
}
