
import 'package:mangas/models/home.dart';
import 'package:mangas/service/core/api.dart';
import 'package:mangas/service/core/model.dart';

class CallDataHome extends ApiClient {
  Future<ApiResponse<SingleResponse<HomeData>>> getListHomeData() async {
    var url;
    try {
      url = "/comic";
      dynamic response = await getApi(url);
      return ApiResponse(SingleResponse<HomeData>(response.data, null, (item) => HomeData.fromJson(item)),
      null , response.statusCode);
    } catch (e) {
      return ApiResponse(null, ApiError.fromRequestError(e), null);
    }
  }
}