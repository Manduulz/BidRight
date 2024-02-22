import 'package:bid_right_mobile/models/bidder.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_info_state.freezed.dart';

@freezed
class PersonalInfoState with _$PersonalInfoState {
  const PersonalInfoState._();

  const factory PersonalInfoState({
    @Default(Uninitialized()) LoadingState<Bidder> profile,
    Bidder? newProfile,
    @Default(false) bool isSaving,
  }) = _PersonalInfoState;
}
