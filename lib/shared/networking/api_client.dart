import 'package:dio/dio.dart';

class ApiClient {
  final _dio = Dio(BaseOptions(
    baseUrl: 'https://6523a019ea560a22a4e891bd.mockapi.io/test/',
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  ));

  ApiClient();

  Future<Response<T>> get<T>(String uri,
      {Map<String, dynamic>? query, Map<String, dynamic>? headers}) async {
    final response = _dio.get<T>(uri,
        queryParameters: query,
        options: Options(
          headers: headers,
        ));
    return response;
  }

  Future<Response<T>> post<T>(String uri,
      {Map<String, dynamic>? query,
      Map<String, dynamic>? headers,
      Object? data}) async {
    final response = _dio.post<T>(uri,
        queryParameters: query,
        data: data,
        options: Options(
          headers: headers,
        ));

    return response;
  }

  Future<Response<dynamic>> customRequest(
      String uri, Options options, Map<String, dynamic>? query, Object? data) {
    final response = _dio.request(
      uri,
      options: options,
      queryParameters: query,
      data: data,
    );
    return response;
  }
}

class CustomApiClient extends ApiClient {
  CustomApiClient();

  CustomApiClient setHeader(Map<String, dynamic> headers) {
    _dio.options.headers = headers;
    return this;
  }
}
