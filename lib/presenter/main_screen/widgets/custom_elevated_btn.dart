import 'package:flutter/material.dart';

class CustomElevatedBtn extends StatelessWidget {
  const CustomElevatedBtn({Key? key, required this.onPush, required this.child})
      : super(key: key);

  final VoidCallback onPush;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPush,
      child: child,
    );
  }
}
