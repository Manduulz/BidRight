import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/map_bounds.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(false) bool showMap,
    String? query,
    @Default(SearchFilter()) SearchFilter filter,
    @Default(Uninitialized()) LoadingState<List<LotBidderState>> lotState,
    @Default(Uninitialized()) LoadingState<List<SearchFilter>> savedFilters,
    MapBounds? bounds,
  }) = _SearchState;
}
