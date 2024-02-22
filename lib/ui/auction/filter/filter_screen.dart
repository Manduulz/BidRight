import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:bid_right_mobile/navigation/routes.dart' as routes;
import 'package:bid_right_mobile/ui/auction/filter/filter_components.dart';
import 'package:bid_right_mobile/ui/auction/filter/filter_cubit.dart';
import 'package:bid_right_mobile/ui/shared/error.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

Future<List<AttributeFilter>?> navigateToFilters(
  BuildContext context, {
  List<AttributeFilter> initialFilter = const [],
}) async {
  final result = await Navigator.of(context).pushNamed(
    routes.auctionFilter,
    arguments: initialFilter,
  );

  return (result as List<AttributeFilter>?);
}

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FilterCubit>();
    final state = cubit.state;

    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop(cubit.filters);
        return false;
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Filters'),
            leading: const CloseButton(),
          ),
          backgroundColor: Colors.white,
          body: state.attributes.map(
            uninitialized: (_) => const SizedBox(),
            loading: (_) => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            error: (_) => ErrorIndicator(
              text: 'Failed to load filter attributes',
              onRetry: cubit.loadAttributes,
            ),
            loaded: (loaded) {
              final attributes = loaded.value;

              final attributesByType =
                  attributes.groupListsBy((attribute) => attribute.type.map(
                        text: (_) => null,
                        date: (_) => 0,
                        int: (_) => 0,
                        bool: (_) => 2,
                        decimal: (_) => 0,
                        dropdown: (_) => 1,
                        unknown: (_) => null,
                      ));

              final intervalAttributes = attributesByType[0] ?? const [];
              final dropdownAttributes = attributesByType[1] ?? const [];
              final boolAttributes = attributesByType[2] ?? const [];

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomScrollView(
                  slivers: [
                    SliverAlignedGrid(
                      itemCount: intervalAttributes.length,
                      itemBuilder: (context, index) {
                        final attribute = intervalAttributes[index];
                        return _widgetForFilter(
                            state.filters[attribute.id] ??
                                AttributeFilter(type: attribute),
                            cubit);
                      },
                      gridDelegate:
                          const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 400),
                    ),
                    SliverAlignedGrid(
                      itemCount: dropdownAttributes.length,
                      itemBuilder: (context, index) {
                        final attribute = dropdownAttributes[index];
                        return _widgetForFilter(
                            state.filters[attribute.id] ??
                                AttributeFilter(type: attribute),
                            cubit);
                      },
                      gridDelegate:
                          const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 400),
                    ),
                    SliverToBoxAdapter(
                      child: Wrap(
                        children: [
                          for (final attribute in boolAttributes)
                            _widgetForFilter(
                                state.filters[attribute.id] ??
                                    AttributeFilter(type: attribute),
                                cubit)
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )),
    );
  }

  Widget _widgetForFilter(AttributeFilter filter, FilterCubit cubit) {
    void onChanged(AttributeFilter filter) {
      cubit.updateFilter(
        attributeId: filter.type.id,
        value: filter.value,
        value2: filter.value2,
      );
    }

    return filter.type.type.map(
      text: (_) => FilterTextField(filter: filter, onChanged: onChanged),
      date: (dateType) => dateType.searchType == SearchType.interval
          ? IntervalField(filter: filter, onChanged: onChanged)
          : throw UnimplementedError(),
      int: (intType) => intType.searchType == SearchType.interval
          ? IntervalField(filter: filter, onChanged: onChanged)
          : throw UnimplementedError(),
      bool: (_) => BoolField(filter: filter, onChanged: onChanged),
      decimal: (type) => type.searchType == SearchType.interval
          ? IntervalField(filter: filter, onChanged: onChanged)
          : throw UnimplementedError(),
      dropdown: (_) => DropdownField(filter: filter, onChanged: onChanged),
      unknown: (_) => const SizedBox.shrink(),
    );
  }
}
