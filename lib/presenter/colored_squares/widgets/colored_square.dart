import 'package:flutter/material.dart';

const squareSize = 50.0;

class ColoredSquare extends StatelessWidget {
  const ColoredSquare({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: squareSize,
      width: squareSize,
      color: color,
    );
  }
}
