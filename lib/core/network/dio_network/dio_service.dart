import 'package:dio/dio.dart';
import 'package:ecommerce/core/network/api_consumer.dart';

import '../api_error.dart';

class DioService implements ApiConsumer {
  Dio dio;

  DioService(this.dio);

  @override
  Future get(String url, {Map<String, dynamic>? queryParameters}) async {
    try {
      var response = await dio.get(url, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }

  @override
  Future post(String url, Map<String, dynamic> body) async {
    try {
      var response = await dio.post(url, data: body);
      response.data;
    } on DioException catch (e) {
      throw handleDioError(e);
    }
  }
}
