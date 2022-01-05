import 'package:flutter/material.dart';

const tileSize = Size(double.infinity, 71);

class ColoredTile extends StatelessWidget {
  const ColoredTile({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        width: tileSize.width,
        height: tileSize.height,
        color: color,
      ),
    );
  }
}
