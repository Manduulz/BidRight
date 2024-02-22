import 'package:bid_right_mobile/models/auction.dart';
import 'package:bid_right_mobile/models/auction_stream.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_state.freezed.dart';

@freezed
class AuctionState with _$AuctionState {
  const AuctionState._();

  const factory AuctionState({
    @Default(Uninitialized()) LoadingState<AuctionDetailWithLot> lotDetail,
    @Default(Uninitialized()) LoadingState<List<AuctionStreamInfo>> streams,
    @Default(Uninitialized()) LoadingState<List<Property>> properties,
    @Default(Uninitialized()) LoadingState<List<LotSummary>> lots,
    DateTime? stoppingTime,
    int? auctionId,
    required int selectedLotId,
    int? selectedPropertyId,
    @Default(false) bool autoStarted,
    @Default(false) bool autoStopped,
    @Default(false) bool showWinningScreen,
    @Default(false) bool showVideo,
    @Default(ConnectionStatus.disconnected) ConnectionStatus connectionStatus,
    @Default(false) bool isLeaving,
    @Default(LotStatus.pending) LotStatus status,
    @Default(0) int bidAmount,
    @Default(false) bool isEditingBidAmount,
    num? bidAmountInProgress,
  }) = _AuctionState;

  bool get isStopping => stoppingTime != null;

  bool get isConnectionReset =>
      connectionStatus == ConnectionStatus.connectionReset;

  LoadingState<Property> get property => properties.flatMap((value) {
        final property =
            value.firstWhereOrNull((e) => e.id == selectedPropertyId);
        if (property != null) {
          return Loaded(property);
        }

        return lotDetail.mapValue((value) => value.lot.property);
      });

  LoadingState<Lot> get lot => lotDetail.mapValue((value) => value.lot);

  LoadingState<AuctionDetail> get auction =>
      lotDetail.mapValue((value) => value.auction);

  LoadingState<LotBidState> get bidState =>
      lotDetail.mapValue((value) => value.bidState);

  bool get isBidInProgress => bidAmountInProgress != null;

  AuctionState withStatus(LotStatus status) => copyWith(
      status: status,
      lotDetail: lotDetail.mapValue((detail) => detail.copyWith.lot(
            actualStartTime: status == LotStatus.started
                ? DateTime.now()
                : detail.lot.actualStartTime,
            actualStopTime: status == LotStatus.stopped ? DateTime.now() : null,
            isCancelled: status == LotStatus.cancelled,
          )));

  int? get nextLotId {
    final lots = this.lots.valueOrNull;
    if (lots == null) {
      return null;
    }

    final index = lots.indexWhere((element) => element.id == selectedLotId);
    if (index == -1 || index == lots.length - 1) {
      return null;
    } else {
      return lots[index + 1].id;
    }
  }
}

enum LotStatus {
  pending,
  started,
  stopped,
  cancelled;

  bool get isActive => this == started;
}

enum ConnectionStatus {
  disconnected,
  connecting,
  connected,
  connectionReset,
  kicked,
}
