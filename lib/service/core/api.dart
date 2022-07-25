import 'package:dio/dio.dart';



import '../../main.dart';

class ApiClient {
  final _dio = Dio();
  static final int _defaultTimeout = 30000; // 30 seconds
  ApiClient() {
    var options = _dio.options;

    options.contentType = 'application/json';
    options.responseType = ResponseType.json;
    options.baseUrl ="https://mangas247.com/wp-json/app/v1";
    options.headers = {
      "Secret-Key"
    : "GVB4LlYidlsVxTCZBTEJzpFkRq1Ek5C3"};

    options.connectTimeout = _defaultTimeout;

    options.receiveTimeout = _defaultTimeout;

    options.sendTimeout = _defaultTimeout;

    _dio.options = options;

    _dio.interceptors.add(LogInterceptor(
        requestBody: true, requestHeader: false, responseBody: true, responseHeader: false));

    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      return handler.next(options);
    }, onResponse: (response, handler) {


      return handler.next(response);
    }, onError: (DioError e, handler) {

      return handler.next(e);
    }));
  }



  Future<Response<T>> getApi<T>(String uri, {Map<String, dynamic> params}) async {
    return await _dio.get<T>(uri, queryParameters: params);
  }

  Future<Response<T>> postApi<T>(String uri, {dynamic data}) async {
    return await _dio.post(uri, data: data);
  }

  Future<Response<T>> deleteApi<T>(String uri, {Map<String, dynamic> params}) async {
    return await _dio.delete(uri, queryParameters: params);
  }

  Future<Response<T>> putApi<T>(String uri, {dynamic data}) async {
    return await _dio.put(uri, data: data);
  }
}
