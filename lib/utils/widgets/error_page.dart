import 'package:flutter/material.dart';

class StubPage extends StatelessWidget {
  const StubPage({
    required this.title,
    Key? key,
  }) : super(key: key);

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
