import 'package:flutter/material.dart';

class RouteButton extends StatelessWidget {
  const RouteButton({
    Key? key,
    required this.routeName,
    required this.onPush,
  }) : super(key: key);

  final String routeName;
  final VoidCallback onPush;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPush,
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
