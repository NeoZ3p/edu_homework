import 'package:edu_homework/utils/page_names.dart';
import 'package:edu_homework/utils/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class SavedSuggestionsPage extends StatelessWidget {
  const SavedSuggestionsPage({
    Key? key,
    required this.divided,
  }) : super(key: key);

  final List<Widget> divided;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: PageNames.savedSuggestionsPage),
      body: ListView(children: divided),
    );
  }
}
