import 'package:flutter/material.dart';

class ColoredRectangle extends StatelessWidget {
  const ColoredRectangle({
    Key? key,
    required this.rectSize,
    required this.color,
    this.isSquare,
  }) : super(key: key);

  final Size rectSize;
  final Color color;
  final bool? isSquare;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: isSquare != null ? 0 : 5.0),
      child: Container(
        height: rectSize.height,
        width: rectSize.width,
        color: color,
      ),
    );
  }
}
