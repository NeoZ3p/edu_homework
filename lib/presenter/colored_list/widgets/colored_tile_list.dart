import 'package:flutter/material.dart';

import 'colored_tile.dart';

class ColoredTileList extends StatelessWidget {
  const ColoredTileList({Key? key, required this.colors}) : super(key: key);

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) => ColoredTile(color: colors[index]),
      ),
    );
  }
}
