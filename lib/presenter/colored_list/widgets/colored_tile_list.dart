import 'package:edu_homework/utils/widgets/colored_rectangle.dart';
import 'package:flutter/material.dart';

const tileSize = Size(double.infinity, 71);

class ColoredTileList extends StatelessWidget {
  const ColoredTileList({Key? key, required this.colors}) : super(key: key);

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) => ColoredRectangle(
          rectSize: tileSize,
          color: colors[index],
        ),
      ),
    );
  }
}
