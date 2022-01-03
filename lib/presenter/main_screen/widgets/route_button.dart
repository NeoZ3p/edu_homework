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
      onPressed: () {},
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
