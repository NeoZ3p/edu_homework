import 'package:edu_homework/presenter/colored_list/widgets/colored_tile_list.dart';
import 'package:edu_homework/utils/generate_color_list.dart';
import 'package:edu_homework/utils/page_names.dart';
import 'package:flutter/material.dart';

class ColoredListPage extends StatefulWidget {
  const ColoredListPage({Key? key}) : super(key: key);

  @override
  State<ColoredListPage> createState() => _ColoredListPageState();
}

class _ColoredListPageState extends State<ColoredListPage> {
  late List<Color> colors;

  @override
  void initState() {
    colors = generateColorList(count: 1000, color: Colors.grey);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.coloredListPage)),
      body: ColoredTileList(colors: colors),
      floatingActionButton: FloatingActionButton(
        onPressed: _generateRandomColors,
        child: const Icon(Icons.note_alt_outlined),
      ),
    );
  }

  void _generateRandomColors() {
    setState(() {
      colors = generateColorList(count: 1000, isRandomColorList: true);
    });
  }
}
