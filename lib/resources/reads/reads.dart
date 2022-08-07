import 'dart:developer';

import 'package:mangas/service/core/api.dart';
import 'package:mangas/service/core/model.dart';

class CallDataRead extends ApiClient {
  Future<ApiResponse<dynamic>> getDataReads({String id}) async {
    var url;
    try {
      url = "/read-comic/$id";
      var response = await getApi(url);
      return ApiResponse(response.data["data"], null, response.statusCode);
    } catch (e) {
      return ApiResponse(null, ApiError.fromRequestError(e), null);
    }
  }
}
