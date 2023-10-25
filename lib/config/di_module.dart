import 'package:crypto_app/core/constant_values.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class ProductionAppModule {
  Dio initDio() {
    final dio = Dio(BaseOptions(baseUrl: apiBaseUrl));
    dio.interceptors.add(HeaderInterceptors());
    return dio;
  }
  InternetConnectionChecker internetChecker() => InternetConnectionChecker();
}


class HeaderInterceptors extends Interceptor {
  @override
  onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll({apiKeyHeader: apiKey,

      apiHostHeader: apiHost,
      hostTest: apiHost});
    handler.next(options);
  }
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {

    super.onResponse(response, handler);
  }
}
