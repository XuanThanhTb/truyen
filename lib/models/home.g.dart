// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeData _$HomeDataFromJson(Map<String, dynamic> json) {
  return HomeData(
    code: json['code'] as int,
    data: (json['data'] as List<dynamic>)
        ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
        .toList(),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$HomeDataToJson(HomeData instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    id: json['id'] as int,
    chapter: (json['chapter'] as List<dynamic>)
        ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
        .toList(),
    description: json['description'] as String,
    genre: (json['genre'] as List<dynamic>)?.map((e) => e as String).toList(),
    postDate: json['post_date'] as String,
    postTitle: json['post_title'] as String,
    review: json['review'] as String,
    thumbnail: json['thumbnail'] as String,
    viewCount: json['view_count'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'post_date': instance.postDate,
      'thumbnail': instance.thumbnail,
      'post_title': instance.postTitle,
      'view_count': instance.viewCount,
      'review': instance.review,
      'description': instance.description,
      'genre': instance.genre,
      'chapter': instance.chapter,
    };

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return Chapter(
    id: json['id'] as String,
    name: json['name'] as String,
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': instance.date,
    };
