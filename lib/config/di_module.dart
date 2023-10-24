import 'package:crypto_app/core/constant_values.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ProductionAppModule {
  Dio initDio() {
    final dio = Dio(BaseOptions(baseUrl: apiBaseUrl));
    dio.interceptors.add(HeaderInterceptors());
    return dio;
  }
}

class HeaderInterceptors extends Interceptor {
  @override
  onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll({apiKeyHeader: apiKey, apiHostHeader: apiHost});
    handler.next(options);
  }
}
