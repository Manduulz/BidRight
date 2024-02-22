import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_state.freezed.dart';

@freezed
class FilterState with _$FilterState {
  const FilterState._();

  const factory FilterState({
    @Default({}) Map<int, AttributeFilter> filters,
    @Default(Uninitialized()) LoadingState<List<AttributeType>> attributes,
    @Default(false) showAllFilters,
  }) = _FilterState;
}
