import 'package:flutter/material.dart';

const Radius _radius = Radius.circular(16);
const double _imageSize = 600.0;
const BorderRadius _imageBorderRadius = BorderRadius.only(
  topLeft: _radius,
  topRight: _radius,
);

class CardImage extends StatelessWidget {
  const CardImage({
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _imageBorderRadius,
      child: Image.network(
        imageUrl,
        fit: BoxFit.fill,
        width: _imageSize,
      ),
    );
  }
}
