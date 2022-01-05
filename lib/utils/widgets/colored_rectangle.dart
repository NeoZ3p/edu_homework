import 'package:flutter/material.dart';

class ColoredRectangle extends StatelessWidget {
  const ColoredRectangle(
      {Key? key,
      required this.rectSize,
      required this.color,
      required this.padding})
      : super(key: key);

  final Size rectSize;
  final Color color;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: Container(
        height: rectSize.height,
        width: rectSize.width,
        color: color,
      ),
    );
  }
}
