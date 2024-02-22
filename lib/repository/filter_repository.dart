import 'package:bid_right_mobile/models/api/saved_filter.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:bid_right_mobile/repository/api/filter_api.dart';
import 'package:rxdart/rxdart.dart';

class FilterRepository {
  final FilterApi _api;

  FilterRepository(this._api);

  final _attributeSubject =
      BehaviorSubject<LoadingState<List<AttributeType>>>.seeded(
          const Uninitialized());

  ValueStream<LoadingState<List<AttributeType>>> get attributeTypes =>
      _attributeSubject.stream;

  Future<Result<List<AttributeType>>> getAttributeTypes() async {
    _attributeSubject.value = _attributeSubject.value.withLoading();
    final result = await _api.loadAttributeTypes();
    if (!_attributeSubject.isClosed) {
      _attributeSubject.value = LoadingState.fromResult(result);
    }
    return result;
  }

  void ensureAttributeTypesLoaded() {
    if (_attributeSubject.value is Uninitialized ||
        _attributeSubject.value is ErrorState) {
      getAttributeTypes();
    }
  }

  Future<Result<List<SearchFilter>>> getSavedFilters() async {
    ensureAttributeTypesLoaded();
    final result = await _api.loadSavedFilters();
    final attributeTypes = await _attributeSubject
        .firstWhere((element) => element is ErrorState || element is Loaded);

    return result.flatMap(
      (filters) => attributeTypes.maybeMap(
        loaded: (loaded) =>
            Success(filters.map((e) => e.parseFilters(loaded.value)).toList()),
        error: (error) => Failure(error),
        orElse: () => const Failure('This should never happen'),
      ),
    );
  }

  void dispose() {
    _attributeSubject.close();
  }

  Future<Result<SearchFilter>> saveFilter(
      {required String name, required SearchFilter filter}) async {
    final result = await _api.saveFilter(SavedFilter.fromSearchFilter(
      name: name,
      filter: filter,
    ));

    final attributeTypes = await _attributeSubject
        .firstWhere((element) => element is ErrorState || element is Loaded);

    return result.flatMap(
      (filter) => attributeTypes.maybeMap(
        loaded: (loaded) => Success(filter.parseFilters(loaded.value)),
        error: (error) => Failure(error),
        orElse: () => const Failure('This should never happen'),
      ),
    );
  }
}
