import 'package:edu_homework/presenter/colored_squares/widgets/square_list.dart';
import 'package:edu_homework/utils/generate_color_list.dart';
import 'package:edu_homework/utils/page_names.dart';
import 'package:flutter/material.dart';

class ColoredSquaresPage extends StatefulWidget {
  const ColoredSquaresPage({Key? key}) : super(key: key);

  @override
  State<ColoredSquaresPage> createState() => _ColoredSquaresPageState();
}

class _ColoredSquaresPageState extends State<ColoredSquaresPage> {
  late List<Color> colors;

  @override
  void initState() {
    colors = generateColorList(
      count: 4,
      color: Colors.grey,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(PageNames.coloredSquares)),
      body: SquareList(colors: colors),
      floatingActionButton: FloatingActionButton(
        onPressed: _generateRandomColors,
        child: const Icon(Icons.note_alt_outlined),
      ),
    );
  }

  void _generateRandomColors() {
    setState(() {
      colors = generateColorList(
        count: 4,
        isRandomColorList: true,
      );
    });
  }
}
