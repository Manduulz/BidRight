import 'dart:async';

import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:bid_right_mobile/repository/filter_repository.dart';
import 'package:bid_right_mobile/ui/auction/filter/filter_state.dart';
import 'package:bloc/bloc.dart';

class FilterCubit extends Cubit<FilterState> {
  final FilterRepository _repository;

  late final StreamSubscription _subscription;

  FilterCubit(
    this._repository, {
    List<AttributeFilter> initialFilter = const [],
  }) : super(FilterState(
          filters: {for (final filter in initialFilter) filter.type.id: filter},
        )) {
    _subscription = _repository.attributeTypes.listen((event) {
      emit(state.copyWith(
          attributes: event,
          filters: event.maybeMap(
            loaded: (loaded) {
              return {
                for (final type in loaded.value)
                  type.id: state.filters[type.id]?.copyWith(type: type) ??
                      AttributeFilter(type: type),
              };
            },
            orElse: () => state.filters,
          )));
    });
  }

  Future<void> loadAttributes() => _repository.getAttributeTypes();

  void updateFilter({
    required int attributeId,
    required dynamic value,
    dynamic value2,
  }) {
    final filter = state.filters[attributeId];
    if (filter == null) {
      return;
    }

    final newFilter = filter.copyWith(value: value, value2: value2);
    if (newFilter.isValid) {
      final newFilters = {...state.filters};
      newFilters[attributeId] = newFilter;
      emit(state.copyWith(filters: newFilters));
    }
  }

  List<AttributeFilter> get filters {
    return state.filters.values.where((element) => element.isNotEmpty).toList();
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
    return super.close();
  }
}

const alwaysShownFilters = <int>[2, 4, 19, 22, 5, 17, 16, 9, 10, 11, 13];
