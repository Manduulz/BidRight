import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:bid_right_mobile/ui/auction/filter/filter_screen.dart';
import 'package:bid_right_mobile/ui/auction/search/lots_map_view.dart';
import 'package:bid_right_mobile/ui/auction/search/search_cubit.dart';
import 'package:bid_right_mobile/ui/auction/search/search_state.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'lots_list_view.dart';
//------------------------------------------------------------------

class AuctionListScreen extends StatelessWidget {
  const AuctionListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
        builder: (_, state) => _AuctionListScreen(state: state));
  }
}

class _AuctionListScreen extends StatelessWidget {
  // final Future<void> Function(AuctionList) onAuctionSelected;
  final SearchState state;

  const _AuctionListScreen({Key? key, required this.state}) : super(key: key);

  bool get showMap => state.showMap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    hintText: "Address, city, zip code or county",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                  onChanged: (value) =>
                      context.read<SearchCubit>().setQuery(value),
                  onSubmitted: (_) =>
                      context.read<SearchCubit>().performSearch(),
                ),
                const _FilterSection(),
                Row(
                  children: [
                    Builder(builder: (context) {
                      final count = context.select<SearchCubit, int?>(
                          (value) => value.state.lotState.valueOrNull?.length);
                      return Text(
                        count == null ? 'Properties' : 'Properties ($count)',
                        style: const TextStyle(
                            fontSize: 14.0, color: BRColors.fnligtBlack),
                      );
                    }),
                    const Spacer(),
                    TextButton(
                      child: const Text(
                        'Saved Searches',
                        style: TextStyle(
                            fontSize: 14.0, color: BRColors.btDarkBlue),
                      ),
                      onPressed: () {
                        _savedSearches(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Searched list presentation
          Expanded(
            child: showMap
                ? const LotSearchMapView(
                    navButtons: _BottomButtons(isList: false),
                  )
                : const LotSearchListView(
                    navButtons: _BottomButtons(isList: true),
                  ),
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<SearchState>('state', state));
  }
}

class _FilterSection extends StatelessWidget {
  const _FilterSection();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SearchCubit, SearchState, SearchFilter>(
      selector: (state) => state.filter,
      builder: (context, filter) {
        if (filter.filters.isEmpty) {
          return const SizedBox.shrink();
        }

        return Row(
          children: [
            Flexible(
              child: Wrap(
                children: [
                  for (final attributeFilter in filter.filters)
                    _AttributeFilterCard(
                      key: ValueKey(attributeFilter.type.id),
                      filter: attributeFilter,
                    ),
                ],
              ),
            ),
            IconButton(
              tooltip: 'Save filter',
              onPressed: () => _saveSearchResult(context),
              icon: const Icon(Icons.save),
            ),
          ],
        );
      },
    );
  }
}

class _AttributeFilterCard extends StatelessWidget {
  final AttributeFilter filter;

  const _AttributeFilterCard({super.key, required this.filter});

  String? get filterText {
    final value = filter.value;
    final value2 = filter.value2;
    final displayName = filter.type.displayName;
    if (filter.type.type.searchType == SearchType.interval) {
      if (value != null) {
        if (value2 != null) {
          // both values non-null
          return '$displayName: ${valueText(value)} - ${valueText(value2)}';
        } else {
          // min non-null, max null
          return '$displayName: ≥${valueText(value)}';
        }
      } else {
        if (value2 != null) {
          // min null, max non-null
          return '$displayName: ≤${valueText(value2)}';
        } else {
          // both values null
          return null;
        }
      }
    } else {
      if (value == null) {
        return null;
      }
      return '$displayName: ${valueText(value)}';
    }
  }

  String valueText(dynamic value) {
    return filter.type.type.maybeMap(
      date: (_) => DateFormat.yMMMd().format(value as DateTime),
      bool: (_) => (value as bool) ? 'yes' : 'no',
      dropdown: (_) => (value as AttributeDropdownOption).value,
      orElse: () => value.toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final label = filterText;
    if (label == null) {
      return const SizedBox.shrink();
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(label),
      ),
    );
  }
}

class _BottomButtons extends StatelessWidget {
  final bool isList;

  const _BottomButtons({
    Key? key,
    required this.isList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.black.withAlpha(80),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Map search click button
        ElevatedButton.icon(
          style: style,
          onPressed: () => context.read<SearchCubit>().setShowMap(isList),
          icon: Icon(
            isList ? Icons.map : Icons.list,
            size: 15.0,
          ),
          label: Text(
            isList ? 'Map' : 'List',
            style: const TextStyle(fontSize: 14.0),
          ),
        ),
        const SizedBox(
          width: 2.0,
        ),
        // Filters click button search
        ElevatedButton.icon(
          style: style,
          onPressed: () async {
            final cubit = context.read<SearchCubit>();
            final filters = await navigateToFilters(context,
                initialFilter: cubit.state.filter.filters);
            if (filters != null) {
              cubit.updateFilters(filters);
            }
          },
          icon: const Icon(
            Icons.filter_alt_sharp,
            size: 15.0,
          ),
          label: const Text(
            'Filters',
            style: TextStyle(fontSize: 14.0),
          ),
        ),
      ],
    );
  }
}

Future<void> _savedSearches(BuildContext context) async {
  final cubit = context.read<SearchCubit>();
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return BlocProvider.value(
        value: cubit,
        child: const _SavedFilterDialog(),
      );
    },
  );
}

Future<void> _saveSearchResult(BuildContext context) async {
  final cubit = context.read<SearchCubit>();
  await showDialog<bool>(
          context: context,
          builder: (context) {
            return _SaveFilterDialog(onSave: cubit.saveFilter);
          });
}

class _SaveFilterDialog extends StatefulWidget {
  final Future<Result<void>> Function(String name) onSave;

  const _SaveFilterDialog({required this.onSave});

  @override
  State<_SaveFilterDialog> createState() => _SaveFilterDialogState();
}

class _SaveFilterDialogState extends State<_SaveFilterDialog> {
  String filterName = '';
  bool isSaving = false;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text('Custom filter name')),
          SizedBox(width: 8),
          CloseButton(),
        ],
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
                labelText: "Name",
                filled: true,
                fillColor: BRColors.bglightBlue,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0),
                  borderSide: const BorderSide(
                    color: BRColors.bglightBlue,
                    width: 1.0,
                  ),
                ),
                errorText: errorText),
            onChanged: (value) => setState(() {
              filterName = value;
              errorText = null;
            }),
            onFieldSubmitted: filterName.isEmpty ? null : (_) => _save(),
          ),
          const SizedBox(height: 8),
          if (isSaving)
            const Center(child: CircularProgressIndicator.adaptive())
          else
            ElevatedButton(
              onPressed: filterName.isEmpty ? null : _save,
              style: ElevatedButton.styleFrom(
                  backgroundColor: BRColors.btDarkBlue),
              child: const Text('Save Filter'),
            )
        ],
      ),
    );
  }

  Future<void> _save() async {
    setState(() => isSaving = true);
    final result = await widget.onSave(filterName);
    if (!mounted) {
      return;
    }
    setState(() => isSaving = false);

    result.join(
      onSuccess: (_) => Navigator.of(context).pop(),
      onFailure: (error) => setState(() => errorText = 'Error saving filter'),
    );
  }
}

class _SavedFilterDialog extends StatefulWidget {
  const _SavedFilterDialog();

  @override
  State<_SavedFilterDialog> createState() => _SavedFilterDialogState();
}

class _SavedFilterDialogState extends State<_SavedFilterDialog> {
  @override
  void initState() {
    super.initState();
    context.read<SearchCubit>().loadSavedFilters();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<SearchCubit>();
    final savedFilters = cubit.state.savedFilters;

    return AlertDialog(
      titlePadding: const EdgeInsets.all(10.0),
      title: const Text(
        'Saved Searches',
        textAlign: TextAlign.center,
      ),
      content: savedFilters.map(
          uninitialized: (_) => const SizedBox(),
          loading: (_) => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
          error: (_) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Error loading saved filters'),
                  ElevatedButton(
                      onPressed: cubit.loadSavedFilters,
                      child: const Text('Retry'))
                ],
              ),
          loaded: (loaded) {
            final filters = loaded.value;
            return ListView.builder(
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  final filter = filters[index];
                  return Card(
                    margin: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () => _selectFilter(filter),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text(
                              filter.name ?? 'unnamed',
                              style: const TextStyle(
                                  fontSize: 14.0, color: BRColors.fnligtBlack),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: BRColors.bgDarkBlue,
                              size: 10.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }),
      actions: <Widget>[
        TextButton(
          child: const Text(
            'Close',
            style: TextStyle(fontSize: 14.0, color: BRColors.white),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  void _selectFilter(SearchFilter filter) {
    context.read<SearchCubit>().updateFilters(filter.filters);
    Navigator.of(context).pop();
  }
}
