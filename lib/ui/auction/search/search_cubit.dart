import 'dart:async';

import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/map_bounds.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:bid_right_mobile/repository/auction_repository.dart';
import 'package:bid_right_mobile/repository/filter_repository.dart';
import 'package:bid_right_mobile/ui/auction/search/search_state.dart';
import 'package:bloc/bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  final AuctionRepository _repository;
  final FilterRepository _filterRepository;

  StreamSubscription? _subscription;

  SearchCubit(
      {required AuctionRepository repository,
      required FilterRepository filterRepository})
      : _repository = repository,
        _filterRepository = filterRepository,
        super(const SearchState()) {
    _listen(repository.upcomingLots);
  }

  void _listen(Stream<List<LotBidderState>> stream) {
    _subscription?.cancel();
    _subscription = stream.listen(
      (event) => emit(state.copyWith(
        lotState: LoadingState.loaded(event),
      )),
    );
  }

  void setQuery(String query) {
    emit(state.copyWith(query: query));
  }

  void setShowMap(bool showMap) {
    emit(state.copyWith(showMap: showMap));
  }

  void setBounds(MapBounds bounds) {
    emit(state.copyWith(bounds: bounds));
  }

  void updateFilters(List<AttributeFilter> filters) {
    emit(state.copyWith(filter: SearchFilter(filters: filters)));
    performSearch();
  }

  Future<void> performSearch() async {
    emit(state.copyWith(lotState: state.lotState.withLoading()));

    final result = await _repository.searchLots(
      query: state.query,
      bounds: state.showMap ? state.bounds : null,
      filter: state.filter,
    );

    result.join(
        onSuccess: _listen,
        onFailure: (error) =>
            emit(state.copyWith(lotState: LoadingState.error(error))));
  }

  Future<void> loadSavedFilters() async {
    emit(state.copyWith(savedFilters: state.savedFilters.withLoading()));
    final result = await _filterRepository.getSavedFilters();
    emit(state.copyWith(savedFilters: LoadingState.fromResult(result)));
  }

  Future<Result<void>> saveFilter(String name) async {
    final filter = state.filter;
    final result =
        await _filterRepository.saveFilter(name: name, filter: filter);
    result.join(
      onSuccess: (value) => emit(state.copyWith(
          savedFilters:
              state.savedFilters.mapValue((filters) => [...filters, value]))),
      onFailure: (_) {},
    );
    return result;
  }

  Future<void> togglePin({required int lotId, required bool isPinned}) async {
    return isPinned ? _repository.pinLot(lotId) : _repository.unpinLot(lotId);
  }

  @override
  Future<void> close() => Future.wait([
        _subscription!.cancel(),
        super.close(),
      ]);
}
