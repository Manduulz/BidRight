import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:bid_right_mobile/ui/shared/br_textformfield.dart';
import 'package:bid_right_mobile/util/theme.dart';
import 'package:collection/collection.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class IntervalField extends StatelessWidget {
  final AttributeFilter filter;
  final ValueChanged<AttributeFilter> onChanged;

  const IntervalField({
    Key? key,
    required this.filter,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: const Color(0x33666666),
      strokeWidth: 1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(filter.type.displayName,
              style: Theme.of(context).textTheme.titleSmall),
          filter.type.type.maybeMap(
            int: (_) => Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Min'),
                    initialValue: filter.value?.toString(),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if (value.isEmpty) {
                        onChanged(filter.copyWith(value: null));
                        return;
                      }

                      final x = int.tryParse(value);
                      if (x != null) {
                        onChanged(filter.copyWith(value: x));
                      }
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Max'),
                    initialValue: filter.value2?.toString(),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if (value.isEmpty) {
                        onChanged(filter.copyWith(value2: null));
                        return;
                      }

                      final x = int.tryParse(value);
                      if (x != null) {
                        onChanged(filter.copyWith(value2: x));
                      }
                    },
                  ),
                )
              ],
            ),
            decimal: (_) => Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Min'),
                    initialValue: filter.value?.toString(),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if (value.isEmpty) {
                        onChanged(filter.copyWith(value: null));
                        return;
                      }

                      final x = num.tryParse(value);
                      if (x != null) {
                        onChanged(filter.copyWith(value: x));
                      }
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Max'),
                    initialValue: filter.value2?.toString(),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if (value.isEmpty) {
                        onChanged(filter.copyWith(value2: null));
                        return;
                      }

                      final x = num.tryParse(value);
                      if (x != null) {
                        onChanged(filter.copyWith(value2: x));
                      }
                    },
                  ),
                )
              ],
            ),
            date: (_) => Row(
              children: [
                Expanded(
                  child: _SimpleDateField(
                    decoration: const InputDecoration(labelText: 'Min'),
                    date: filter.value,
                    onChanged: (date) =>
                        onChanged(filter.copyWith(value: date)),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _SimpleDateField(
                    decoration: const InputDecoration(labelText: 'Max'),
                    date: filter.value2,
                    onChanged: (date) =>
                        onChanged(filter.copyWith(value2: date)),
                  ),
                )
              ],
            ),
            orElse: () => throw UnimplementedError(),
          )
        ],
      ),
    );
  }
}

class DropdownField extends StatelessWidget {
  final AttributeFilter filter;
  final ValueChanged<AttributeFilter> onChanged;

  const DropdownField({
    Key? key,
    required this.filter,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final options = (filter.type.type as DropdownAttribute).options;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(filter.type.displayName),
        ColoredBox(
          color: BRColors.bglightBlue,
          child: DropdownButtonHideUnderline(
            child: DropdownButton<int>(
              value: (filter.value as AttributeDropdownOption?)?.id,
              isExpanded: true,
              items: [
                const DropdownMenuItem(child: SizedBox()),
                for (final option in options)
                  DropdownMenuItem(
                    value: option.id,
                    child: Text(option.value),
                  ),
              ],
              onChanged: (value) => onChanged(
                filter.copyWith(
                    value: options
                        .singleWhereOrNull((element) => element.id == value)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BoolField extends StatelessWidget {
  final AttributeFilter filter;
  final ValueChanged<AttributeFilter> onChanged;

  const BoolField({
    Key? key,
    required this.filter,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: filter.value as bool? ?? false,
          onChanged: (value) => onChanged(filter.copyWith(value: value)),
        ),
        Text(filter.type.displayName),
      ],
    );
  }
}

class FilterTextField extends StatelessWidget {
  final AttributeFilter filter;
  final ValueChanged<AttributeFilter> onChanged;

  const FilterTextField({
    Key? key,
    required this.filter,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BRTextFormField(
      initialValue: filter.value as String?,
      onChanged: (value) => onChanged(filter.copyWith(value: value)),
    );
  }
}

class _SimpleDateField extends StatelessWidget {
  final DateTime? date;
  final ValueSetter<DateTime?> onChanged;
  final InputDecoration decoration;

  const _SimpleDateField({
    Key? key,
    required this.date,
    required this.onChanged,
    this.decoration = const InputDecoration(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: decoration,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () => _selectDate(context),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                    child: date == null
                        ? const SizedBox()
                        : Text(DateFormat.yMd().format(date!))),
                date == null
                    ? const Icon(Icons.date_range)
                    : IconButton(
                        onPressed: () => onChanged(null),
                        icon: const Icon(Icons.close)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final now = DateTime.now();
    final initialDate = date ?? now;
    final firstDate =
        [initialDate, now.subtract(const Duration(days: 3650))].min;
    final lastDate = [initialDate, now].max;

    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (newDate != null) {
      onChanged(newDate);
    }
  }
}
