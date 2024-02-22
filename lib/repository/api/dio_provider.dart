import 'dart:async';

import 'package:bid_right_mobile/repository/api/base_url.dart';
import 'package:bid_right_mobile/repository/api/token_supplier.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

Dio createDio() {
  final dio = Dio();

  dio.options
    ..baseUrl = 'https://$backendHost/'
    ..connectTimeout = const Duration(seconds: 100)
    ..receiveTimeout = const Duration(seconds: 100);

  if (kDebugMode) {
    dio.interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
      requestHeader: false,
    ));
  }

  return dio;
}

Dio createAuthenticatedDio({required TokenSupplier tokenSupplier}) {
  final dio = createDio();

  final authInterceptor = _AuthInterceptor(dio, tokenSupplier);
  dio.interceptors.insert(0, authInterceptor);
  return dio;
}

class _AuthInterceptor extends Interceptor {
  final TokenSupplier _tokenSupplier;
  final Dio _dio;

  _AuthInterceptor(this._dio, this._tokenSupplier);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {

    try {
      options.headers['Authorization'] = "Bearer ${await _tokenSupplier.getToken()}";
      handler.next(options);
    } catch (err, stackTrace) {
      handler.reject(DioMixin.assureDioError(err, options, stackTrace));
    }
  }

  static const _refreshedExtra = "refreshed";

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    final options = err.requestOptions;

    if (err.response?.statusCode != 401 ||
        options.extra[_refreshedExtra] == true) {
      handler.next(err);
      return;
    }

    try {
      final future = _tokenSupplier.getToken();
      var token = await future;

      if ("Bearer $token" == options.headers['Authorization']) {
        // Token hadn't refreshed yet.
        // Refresh the token if necessary.
        token = await _tokenSupplier.getToken(future);
      }

      options.headers['Authorization'] = "Bearer $token";
      options.extra[_refreshedExtra] = true;
      handler.resolve(await _dio.fetch(options));
    } catch (error, stackTrace) {
      handler.reject(DioMixin.assureDioError(error, options, stackTrace));
    }
  }
}
