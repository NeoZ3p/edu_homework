import 'package:edu_homework/models/news.dart';
import 'package:edu_homework/presenter/async_query/widgets/news_card.dart';
import 'package:edu_homework/utils/page_names.dart';
import 'package:flutter/material.dart';

class NewsCardList extends StatelessWidget {
  const NewsCardList({
    required this.newsList,
    required this.isDataLoaded,
    Key? key,
  }) : super(key: key);

  final List<News> newsList;
  final bool? isDataLoaded;

  @override
  Widget build(BuildContext context) {
    if (isDataLoaded != null && !isDataLoaded!) {
      return const Center(child: CircularProgressIndicator());
    }
    if (isDataLoaded == null) {
      return const Center(
        child: Text(
          Constants.loadingDataText,
          textAlign: TextAlign.center,
        ),
      );
    }

    return ListView.builder(
      itemCount: newsList.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) => NewsCard(news: newsList[index]),
    );
  }
}
