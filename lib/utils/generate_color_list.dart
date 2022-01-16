import 'dart:math';

import 'package:flutter/material.dart';

List<Color> generateColorList({
  required int count,
  Color? color,
  bool? isRandomColorList,
}) {
  return List.generate(count, (_) {
    final randomColor =
        Colors.primaries[Random().nextInt(Colors.primaries.length)];

    return color ?? randomColor;
  });
}
