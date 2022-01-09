import 'dart:convert';

import 'package:edu_homework/models/news.dart';
import 'package:edu_homework/presenter/async_query/widgets/news_card_list.dart';
import 'package:edu_homework/utils/page_names.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

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
        onPressed: () => _getNewsList(),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _getNewsList() async {
    setState(() {
      _isDataLoaded = false;
      _newsList = [];
    });
    var url = Uri.parse('https://jsonplaceholder.typicode.com/photos');

    var response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Загрузить данные не удалось');
    }

    List<dynamic> newsList = jsonDecode(response.body);

    setState(() {
      _isDataLoaded = true;
      _newsList = newsList.map((news) => News.fromJson(news)).toList();
    });
  }
}
