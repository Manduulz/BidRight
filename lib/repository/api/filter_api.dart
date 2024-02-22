import 'package:bid_right_mobile/models/api/attribute.dart';
import 'package:bid_right_mobile/models/api/saved_filter.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:bid_right_mobile/repository/api/error_wrapper.dart';
import 'package:dio/dio.dart';

class FilterApi {
  final Dio _dio;

  const FilterApi(this._dio);

  Future<Result<List<AttributeType>>> loadAttributeTypes() {
    return wrapError(() async {
      final result = await _dio.get<List>('/api/propextattr');
      return result.data!
          .map((e) => RawAttributeType.fromJson(e).toType())
          .toList();
    });
  }

  Future<Result<List<SavedFilter>>> loadSavedFilters() {
    return wrapError(() async {
      final result = await _dio.post('/api/bidders/filters/list', data: {});
      return (result.data['data'] as List)
          .map((e) => SavedFilter.fromJson(e))
          .toList();
    });
  }

  Future<Result<SavedFilter>> saveFilter(SavedFilter filter) {
    return wrapError(() async {
      final result = await _dio.post(
        '/api/bidders/filters',
        data: filter.toJson()..remove('id'),
      );
      return SavedFilter.fromJson(result.data);
    });
  }
}
