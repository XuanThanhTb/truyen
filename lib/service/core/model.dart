import 'package:dio/dio.dart';

class SingleResponseString<T> {
  T item;
  SingleResponseString(String json, String itemsRoot, T Function(dynamic itemJson) itemConverter) {
    if (itemsRoot == null) {
      item = itemConverter(json);
    } else {
      // var itemFomart = json[itemsRoot];
      item = itemConverter(json);
    }
  }
}

class SingleResponse<T> {
  T item;
  SingleResponse(
      Map<dynamic, dynamic> json, String itemsRoot, T Function(dynamic itemJson) itemConverter) {
    if (itemsRoot == null) {
      item = itemConverter(json);
    } else {
      var itemFomart = json[itemsRoot];
      item = itemConverter(itemFomart);
    }
  }
}

class ListRepons<T> {
  List<T> listItem = [];
  ListRepons(
      Map<String, dynamic> json, String itemRoot, T Function(dynamic itemJson) itemConverter) {
    var itemsJson = json[itemRoot];
    if (itemsJson is List) {
      listItem = itemsJson.map(itemConverter).toList();
    }
  }

  @override
  String toString() {
    return listItem.map((value) => value.toString()).toString();
  }
}

class ApiResponse<T> {
  T data;
  ApiError error;
  int statusCode;

  ApiResponse(this.data, this.error, this.statusCode);
}

class ApiError {
  int statusCode;
  String message;
  DioErrorType type;
  ApiError(this.statusCode, this.message);

  ApiError.fromRequestError(DioError error) {
    this.statusCode = error.response == null ? -1 : error.response.statusCode;
    this.message = error.message;
    this.type = error.type;
  }
}
