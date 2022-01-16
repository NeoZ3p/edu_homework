// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gto_news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GtoNews _$GtoNewsFromJson(Map<String, dynamic> json) {
  return _GtoNews.fromJson(json);
}

/// @nodoc
class _$GtoNewsTearOff {
  const _$GtoNewsTearOff();

  _GtoNews call(
      {required int id,
      required int albumId,
      required String title,
      required String url,
      required String thumbnailUrl}) {
    return _GtoNews(
      id: id,
      albumId: albumId,
      title: title,
      url: url,
      thumbnailUrl: thumbnailUrl,
    );
  }

  GtoNews fromJson(Map<String, Object?> json) {
    return GtoNews.fromJson(json);
  }
}

/// @nodoc
const $GtoNews = _$GtoNewsTearOff();

/// @nodoc
mixin _$GtoNews {
  int get id => throw _privateConstructorUsedError;
  int get albumId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GtoNewsCopyWith<GtoNews> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GtoNewsCopyWith<$Res> {
  factory $GtoNewsCopyWith(GtoNews value, $Res Function(GtoNews) then) =
      _$GtoNewsCopyWithImpl<$Res>;
  $Res call(
      {int id, int albumId, String title, String url, String thumbnailUrl});
}

/// @nodoc
class _$GtoNewsCopyWithImpl<$Res> implements $GtoNewsCopyWith<$Res> {
  _$GtoNewsCopyWithImpl(this._value, this._then);

  final GtoNews _value;
  // ignore: unused_field
  final $Res Function(GtoNews) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? albumId = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      albumId: albumId == freezed
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GtoNewsCopyWith<$Res> implements $GtoNewsCopyWith<$Res> {
  factory _$GtoNewsCopyWith(_GtoNews value, $Res Function(_GtoNews) then) =
      __$GtoNewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, int albumId, String title, String url, String thumbnailUrl});
}

/// @nodoc
class __$GtoNewsCopyWithImpl<$Res> extends _$GtoNewsCopyWithImpl<$Res>
    implements _$GtoNewsCopyWith<$Res> {
  __$GtoNewsCopyWithImpl(_GtoNews _value, $Res Function(_GtoNews) _then)
      : super(_value, (v) => _then(v as _GtoNews));

  @override
  _GtoNews get _value => super._value as _GtoNews;

  @override
  $Res call({
    Object? id = freezed,
    Object? albumId = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_GtoNews(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      albumId: albumId == freezed
          ? _value.albumId
          : albumId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GtoNews extends _GtoNews {
  _$_GtoNews(
      {required this.id,
      required this.albumId,
      required this.title,
      required this.url,
      required this.thumbnailUrl})
      : super._();

  factory _$_GtoNews.fromJson(Map<String, dynamic> json) =>
      _$$_GtoNewsFromJson(json);

  @override
  final int id;
  @override
  final int albumId;
  @override
  final String title;
  @override
  final String url;
  @override
  final String thumbnailUrl;

  @override
  String toString() {
    return 'GtoNews(id: $id, albumId: $albumId, title: $title, url: $url, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GtoNews &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.albumId, albumId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.thumbnailUrl, thumbnailUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(albumId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(thumbnailUrl));

  @JsonKey(ignore: true)
  @override
  _$GtoNewsCopyWith<_GtoNews> get copyWith =>
      __$GtoNewsCopyWithImpl<_GtoNews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GtoNewsToJson(this);
  }
}

abstract class _GtoNews extends GtoNews {
  factory _GtoNews(
      {required int id,
      required int albumId,
      required String title,
      required String url,
      required String thumbnailUrl}) = _$_GtoNews;
  _GtoNews._() : super._();

  factory _GtoNews.fromJson(Map<String, dynamic> json) = _$_GtoNews.fromJson;

  @override
  int get id;
  @override
  int get albumId;
  @override
  String get title;
  @override
  String get url;
  @override
  String get thumbnailUrl;
  @override
  @JsonKey(ignore: true)
  _$GtoNewsCopyWith<_GtoNews> get copyWith =>
      throw _privateConstructorUsedError;
}
