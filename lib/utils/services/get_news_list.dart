import 'dart:convert';
import 'package:edu_homework/models/gto_news.dart';
import 'package:edu_homework/models/news.dart';
import 'package:http/http.dart' as http;

Future<List<News>> getNewsList() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/photos');

  final response = await http.get(url);

  if (response.statusCode != 200) {
    throw Exception('Загрузить данные не удалось');
  }

  return List<Map<String, dynamic>>.from(jsonDecode(response.body) as List)
      .map((news) => GtoNews.fromJson(news).toNewsModel())
      .toList();
}
