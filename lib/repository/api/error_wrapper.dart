import 'package:bid_right_mobile/models/result.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

Future<Result<T>> wrapError<T>(AsyncValueGetter<T> f) async {
  try {
    return Success(await f());
  } on DioError catch (error) {
    return Failure(_parseError(error) ?? error);
  }
}

String? _parseError(DioError error) {
  final response = error.response;
  if (response == null) {
    return null;
  }

  final Object? data = response.data;
  if (data is! Map<String, dynamic>) {
    return null;
  }

  return data['message']?.toString();
}
