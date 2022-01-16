import 'package:edu_homework/models/news.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gto_news.freezed.dart';
part 'gto_news.g.dart';

@freezed
abstract class GtoNews implements _$GtoNews {
  const GtoNews._();

  factory GtoNews({
    required int id,
    required int albumId,
    required String title,
    required String url,
    required String thumbnailUrl,
  }) = _GtoNews;

  factory GtoNews.fromJson(Map<String, dynamic> json) =>
      _$GtoNewsFromJson(json);

  News toNewsModel() {
    return News(
      title: title,
      url: url,
    );
  }
}
