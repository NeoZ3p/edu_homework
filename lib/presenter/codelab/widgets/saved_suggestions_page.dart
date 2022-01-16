import 'package:edu_homework/utils/page_names.dart';
import 'package:flutter/material.dart';

class SavedSuggestionsPage extends StatelessWidget {
  const SavedSuggestionsPage({
    required this.divided,
    Key? key,
  }) : super(key: key);

  final List<Widget> divided;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.savedSuggestionsPage)),
      body: ListView(children: divided),
    );
  }
}
