import 'package:flutter/material.dart';

class ColoredSquare extends StatelessWidget {
  const ColoredSquare({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: ColoredBox(color: color),
    );
  }
}
