import 'package:edu_homework/utils/widgets/colored_rectangle.dart';
import 'package:flutter/material.dart';

class SquareList extends StatelessWidget {
  const SquareList({
    Key? key,
    required this.colors,
  }) : super(key: key);

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            4,
            (index) => ColoredRectangle(
              rectSize: const Size(50, 50),
              color: colors[index],
              padding: 0,
            ),
          ),
        ),
      ),
    );
  }
}
