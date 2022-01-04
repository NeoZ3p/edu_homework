import 'dart:math';

import 'package:edu_homework/presenter/colored_squares/widgets/square_list.dart';
import 'package:edu_homework/utils/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ColoredSquares extends StatefulWidget {
  const ColoredSquares({Key? key}) : super(key: key);

  @override
  State<ColoredSquares> createState() => _ColoredSquaresState();
}

class _ColoredSquaresState extends State<ColoredSquares> {
  late List<Color> colors;

  @override
  void initState() {
    colors = List.generate(4, (_) => Colors.grey);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: '4 квадрата'),
      body: SquareList(colors: colors),
      floatingActionButton: FloatingActionButton(
        onPressed: _generateRandomColors,
        child: const Icon(Icons.note_alt_outlined),
      ),
    );
  }

  void _generateRandomColors() {
    setState(() {
      colors = List.generate(
        4,
        (_) {
          var randomColor =
              Colors.primaries[Random().nextInt(Colors.primaries.length)];

          return randomColor;
        },
      );
    });
  }
}
