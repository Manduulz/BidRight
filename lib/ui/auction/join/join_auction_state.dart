import 'package:bid_right_mobile/models/auction_bidder.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/purchase_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_auction_state.freezed.dart';

@freezed
class JoinAuctionState with _$JoinAuctionState {
  const JoinAuctionState._();

  const factory JoinAuctionState({
    @Default(Uninitialized()) LoadingState<int> availableBalance,
    @Default(Uninitialized()) LoadingState<List<PurchaseProfile>> profiles,
    String? paddleNumber,
    int? lockedFunds,
    int? selectedProfileId,
    ParticipationType? participationType,
    @Default(false) bool isSubmitting,
  }) = _JoinAuctionState;
}
