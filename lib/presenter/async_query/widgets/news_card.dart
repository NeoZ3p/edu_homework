import 'package:edu_homework/models/news.dart';
import 'package:edu_homework/presenter/async_query/widgets/card_image.dart';
import 'package:flutter/material.dart';

const Radius _radius = Radius.circular(16);
const BorderRadius _containerBorderRadius = BorderRadius.all(_radius);

class NewsCard extends StatelessWidget {
  const NewsCard({
    required this.news,
    Key? key,
  }) : super(key: key);

  final News news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: _containerBorderRadius,
          color: Colors.blue,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardImage(imageUrl: news.url),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(news.title),
            )
          ],
        ),
      ),
    );
  }
}
