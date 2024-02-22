import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/winnings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'winnings_state.freezed.dart';

@freezed
class WinningsState with _$WinningsState {
  const WinningsState._();

  const factory WinningsState({
    @Default(Uninitialized()) LoadingState<List<WinningsWithStatus>> winnings,
  }) = _WinningsState;
}

@freezed
class WinningsWithStatus with _$WinningsWithStatus {
  const factory WinningsWithStatus({
    required CaseStatus status,
    required List<PastWinning> winnings,
  }) = _WinningsWithStatus;
}
