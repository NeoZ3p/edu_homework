import 'package:edu_homework/presenter/colored_squares/colored_squares.dart';
import 'package:edu_homework/utils/error_page.dart';
import 'package:flutter/material.dart';

class RouteButton extends StatelessWidget {
  const RouteButton({
    Key? key,
    required this.routeName,
  }) : super(key: key);

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) {
              switch (routeName) {
                case '4 квадрата':
                  return const ColoredSquares();
                default:
                  return ErrorPage(title: routeName);
              }
            },
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(routeName),
          const Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}
