import 'package:edu_homework/models/news.dart';
import 'package:edu_homework/presenter/async_query/widgets/news_card_list.dart';
import 'package:edu_homework/utils/page_names.dart';
import 'package:edu_homework/utils/services/get_news_list.dart';
import 'package:flutter/material.dart';

class AsyncQueryPage extends StatefulWidget {
  const AsyncQueryPage({Key? key}) : super(key: key);

  @override
  State<AsyncQueryPage> createState() => _AsyncQueryPageState();
}

class _AsyncQueryPageState extends State<AsyncQueryPage> {
  late List<News> _newsList;
  bool? _isDataLoaded;

  @override
  void initState() {
    _newsList = [];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(Constants.asyncQueryPage)),
      body: NewsCardList(
        newsList: _newsList,
        isDataLoaded: _isDataLoaded,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadNewsList,
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _loadNewsList() async {
    setState(() {
      _isDataLoaded = false;
      _newsList = [];
    });

    final newsList = await getNewsList();

    setState(() {
      _isDataLoaded = true;
      _newsList = newsList;
    });
  }
}
