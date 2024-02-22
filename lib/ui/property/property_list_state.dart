import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_list_state.freezed.dart';

@freezed
class PropertyListState with _$PropertyListState {
  const PropertyListState._();

  const factory PropertyListState({
    @Default(Uninitialized()) LoadingState<List<Property>> properties,
  }) = _PropertyListState;
}
