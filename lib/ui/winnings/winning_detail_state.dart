import 'package:bid_right_mobile/models/deed_delivery.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/winnings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'winning_detail_state.freezed.dart';

@freezed
class WinningDetailState with _$WinningDetailState {
  const WinningDetailState._();

  const factory WinningDetailState({
    @Default(Uninitialized()) LoadingState<PastWinningDetail> winning,
    DeedDeliveryMethod? deedDeliveryMethod,
    @Default(false) bool isSaving,
  }) = _WinningDetailState;
}
