import 'package:bid_right_mobile/models/api/paginated_response.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:rxdart/rxdart.dart';

class PaginationRepository<T> {
  final Future<Result<PaginatedResponse<T>>> Function(int pageNumber) fetchData;

  PaginationRepository(this.fetchData);

  int? _totalEntries;

  int _currentPage = 1;

  final _resultSubject = BehaviorSubject<List<T>>();

  ValueStream<List<T>> get stream => _resultSubject.stream;

  final _loadingSubject = BehaviorSubject.seeded(false);

  ValueStream<bool> get loading => _loadingSubject.stream;

  final _errorSubject = PublishSubject<Object>();

  Future<void> loadFirstPage() async {
    if (!_resultSubject.hasValue) {
      return loadNextPage();
    }
  }

  Future<void> loadNextPage() async {
    if (loading.value) {
      // Already loading; don't duplicate effort.
      return;
    }

    if (_resultSubject.hasValue && _resultSubject.value.length == _totalEntries) {
      // Everything is already loaded.
      return;
    }

    _loadingSubject.value = true;
    final result = await fetchData(_currentPage);
    if (_loadingSubject.isClosed) {
      return;
    }

    _loadingSubject.value = false;

    result.join(
        onSuccess: (value) {
          _totalEntries = value.total;
          _resultSubject.value = [...?_resultSubject.valueOrNull, ...value.data];
          _currentPage++;
        },
        onFailure: _errorSubject.add);
  }

  void dispose() {
    _resultSubject.close();
    _loadingSubject.close();
    _errorSubject.close();
  }
}