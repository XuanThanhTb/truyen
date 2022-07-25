import 'package:json_annotation/json_annotation.dart';
part 'home.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class HomeData{
  int code;
  String message;
  List<Data> data;
  
  HomeData({this.code, this.data, this.message});


  factory HomeData.fromJson(Map<String, dynamic> json) => _$HomeDataFromJson(json);

  toJson() => _$HomeDataToJson(this.toJson());

}


@JsonSerializable(fieldRename: FieldRename.snake)
class Data{
  int id;
  String postDate;
  String thumbnail;
  String postTitle;
  String viewCount;
  String review;
  String description;
  List<String> genre;
  List<Chapter> chapter;
  Data({this.id, this.chapter, this.description, this.genre, this.postDate, this.postTitle, this.review, this.thumbnail, this.viewCount});

   factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  toJson() => _$DataToJson(this.toJson());

}

@JsonSerializable(fieldRename: FieldRename.snake)
class Chapter{
  String id;
  String name;
  String date;
  Chapter({this.id, this.name, this.date});
  
  factory Chapter.fromJson(Map<String, dynamic> json) => _$ChapterFromJson(json);

  toJson() => _$ChapterToJson(this.toJson());
}