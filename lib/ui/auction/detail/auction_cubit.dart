import 'dart:async';

import 'package:bid_right_mobile/models/auction.dart';
import 'package:bid_right_mobile/models/auction_bidder.dart';
import 'package:bid_right_mobile/models/auction_event.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/auction_repository.dart';
import 'package:bid_right_mobile/repository/connectivity.dart';
import 'package:bid_right_mobile/repository/live_bid_repository.dart';
import 'package:bid_right_mobile/ui/auction/detail/auction_state.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';

const stoppingDuration = Duration(seconds: 20);

class AuctionCubit extends Cubit<AuctionState> {
  final AuctionRepository _repository;
  final LiveBiddingRepository _liveBiddingRepository;
  final ConnectivityNotifier _connectivityNotifier;

  StreamSubscription? _subscription;
  late StreamSubscription _connectivitySubscription;

  Timer? _autoStartTimer;
  Timer? _autoCountdownTimer;
  Timer? _autoEndTimer;

  AuctionCubit({
    int? auctionId,
    required int lotId,
    int? propertyId,
    required AuctionRepository repository,
    required LiveBiddingRepository liveBiddingRepository,
    required ConnectivityNotifier connectivityNotifier,
  })  : _repository = repository,
        _liveBiddingRepository = liveBiddingRepository,
        _connectivityNotifier = connectivityNotifier,
        super(AuctionState(
          auctionId: auctionId,
          selectedLotId: lotId,
          selectedPropertyId: propertyId,
        )) {
    loadAuction();
    loadProperties();
    if (state.auctionId != null) {
      _loadAuctionSupplementaryData();
    }
    _connectivitySubscription = _connectivityNotifier.connectivityEvents
        .listen((_) => ensureConnected());
  }

  Future<void> loadAuction() async {
    final lotId = state.selectedLotId;
    emit(state.copyWith(
      lotDetail: state.lotDetail.withLoading(),
    ));

    final result = await _repository.loadLotDetail(lotId: lotId);

    if (isClosed) {
      return;
    }

    await result.join(onSuccess: (value) async {
      final auctionId = value.auction.id;
      if (state.auctionId != auctionId) {
        emit(state.copyWith(auctionId: auctionId));
        _loadAuctionSupplementaryData();
      }
      emit(state.copyWith(
        lotDetail: Loaded(value),
        status: value.lot.status,
      ));
      _handleAutoStart();
      if (value.isJoined) {
        connect();
      }
      if (state.selectedPropertyId == null) {
        emit(state.copyWith(selectedPropertyId: value.lot.property.id));
      }
    }, onFailure: (error) {
      emit(state.copyWith(lotDetail: LoadingState.error(error)));
    });
  }

  Future<void> _loadAuctionSupplementaryData() {
    return Future.wait([
      loadStreams(),
      loadLots(),
    ]);
  }

  void _handleAutoStart() {
    final detail = state.lotDetail.valueOrNull;
    if (detail == null) {
      return;
    }

    final auction = detail.auction;
    if (auction.startType != AuctionStartType.auto) {
      emit(state.copyWith(autoStarted: false, autoStopped: false));
      return;
    }

    final now = DateTime.now();

    _autoStartTimer?.cancel();
    final autoStarted = now.isAfter(auction.startTime);
    emit(state.copyWith(autoStarted: autoStarted));
    if (!autoStarted) {
      _autoStartTimer = Timer(auction.startTime.difference(now), () {
        if (!isClosed) {
          emit(state.copyWith(autoStarted: true));
        }
      });
    }

    final stopTime = detail.realStopTime;

    _autoEndTimer?.cancel();
    final autoStopped = now.isAfter(stopTime);
    emit(state.copyWith(autoStopped: autoStopped));
    if (!autoStopped) {
      _autoEndTimer = Timer(stopTime.difference(now), () {
        if (!isClosed) {
          emit(state.copyWith(autoStopped: true));
        }
      });
    }

    _autoCountdownTimer?.cancel();
    final countdownTime = stopTime.subtract(stoppingDuration);
    final autoStopping = now.isAfter(countdownTime);
    if (!autoStopping) {
      emit(state.copyWith(stoppingTime: null));
      _autoCountdownTimer = Timer(countdownTime.difference(now), () {
        if (!isClosed) {
          emit(state.copyWith(stoppingTime: stopTime));
        }
      });
    }
  }

  Future<void> loadProperties() => _loadProperties(
        lotId: state.selectedLotId,
      );

  Future<void> loadLots() async {
    final auctionId = state.auctionId;
    if (auctionId == null) {
      return;
    }

    emit(state.copyWith(lots: state.lots.withLoading()));
    final result = await _repository.loadLotsForAuction(auctionId);
    if (isClosed || state.auctionId != auctionId) {
      return;
    }

    emit(state.copyWith(lots: LoadingState.fromResult(result)));
  }

  Future<void> _loadProperties({required int lotId}) async {
    emit(state.copyWith(
      properties: state.properties.withLoading(),
    ));

    final result = await _repository.loadPropertiesForLot(lotId);
    if (isClosed) {
      return;
    }

    emit(state.copyWith(
      properties: LoadingState.fromResult(result),
    ));
  }

  Future<void> loadStreams() async {
    final auctionId = state.auctionId;
    if (auctionId == null) {
      return;
    }

    emit(state.copyWith(streams: state.streams.withLoading()));

    final result = await _repository.loadStreams(auctionId: auctionId);

    if (isClosed || state.auctionId != auctionId) {
      return;
    }

    emit(state.copyWith(
        streams: result.join(
            onSuccess: (value) => LoadingState.loaded(value),
            onFailure: (error) => LoadingState.error(error))));
  }

  Future<Result<void>> placeBid({
    required int lotId,
    required num amount,
  }) async {
    final lotDetail = state.lotDetail.valueOrNull;
    final auctionId = state.auctionId;
    if (lotDetail == null || auctionId == null) {
      return const Failure('Lot not loaded');
    }

    if (lotDetail.lot.id != lotId) {
      return const Failure('Wrong lot');
    }

    if (!isValidBid(amount: amount, lotDetail: lotDetail)) {
      return const Failure('Invalid bid amount');
    }

    emit(state.copyWith(bidAmountInProgress: amount));

    final Result<void> result;

    try {
      result = await _repository.placeBid(
        auctionId: auctionId,
        lotId: lotId,
        amount: amount,
      );
    } finally {
      if (!isClosed && state.bidAmountInProgress == amount) {
        emit(state.copyWith(bidAmountInProgress: null));
      }
    }

    return result;
  }

  static bool isValidBid({
    required num amount,
    required AuctionDetailWithLot lotDetail,
  }) {
    return (amount >= lotDetail.minimumBid && amount <= lotDetail.maximumBid);
  }

  void setShowVideo(bool showVideo) {
    emit(state.copyWith(showVideo: showVideo));
  }

  Future<void> preRegister() async {
    final auctionId = state.auctionId;
    if (auctionId == null) {
      return;
    }

    final auction = state.auction.valueOrNull;

    await _repository.registerToAuction(
      auctionId: auctionId,
      lotId: state.selectedLotId,
      purchaseProfileId: 0,
      amount: (auction != null && auction.isOpen) ? 0 : -1,
      participationType: ParticipationType.remote,
    );
    loadAuction();
  }

  Future<Result<void>> unregister() async {
    final auctionId = state.auctionId;
    if (auctionId == null) {
      return const Failure('Auction not found');
    }

    emit(state.copyWith(isLeaving: true));
    final result = await _repository.unregisterFromAuction(
      auctionId: auctionId,
      lotId: state.selectedLotId,
    );
    emit(state.copyWith(isLeaving: false));

    if (result is Success) {
      loadAuction();
    }

    return result;
  }

  void selectProperty(int? id) {
    emit(state.copyWith(selectedPropertyId: id));
  }

  void selectLot(int id) {
    if (state.selectedLotId == id) {
      return;
    }

    emit(state.copyWith(
      selectedLotId: id,
      selectedPropertyId: null,
      properties: const Uninitialized(),
      bidAmount: 0,
      bidAmountInProgress: null,
      stoppingTime: null,
      showWinningScreen: false,
    ));
    loadAuction();
    loadProperties();
  }

  void _updateMinimumBid() {
    if (state.isEditingBidAmount) {
      return;
    }

    final increment = state.lotDetail.valueOrNull?.minBidIncrements ?? 1;
    final latestBid =
        state.bidState.valueOrNull?.bids.map((e) => e.amount).maxOrNull;

    final num minimumBid;
    if (latestBid == null) {
      minimumBid = (state.lot.valueOrNull?.startingBid ?? 0) + increment;
    } else {
      minimumBid = latestBid + increment;
    }

    if (state.bidAmount < minimumBid) {
      emit(state.copyWith(bidAmount: minimumBid.ceil()));
    }
  }

  void setBidAmount(int? bidAmount) {
    emit(state.copyWith(bidAmount: bidAmount ?? 0));
  }

  void setEditingBidAmount(bool isEditing) {
    emit(state.copyWith(isEditingBidAmount: isEditing));
    if (!isEditing) {
      _updateMinimumBid();
    }
  }

  void closeWinningScreen() {
    emit(state.copyWith(showWinningScreen: false));
  }

  void ensureConnected() async {
    if (state.connectionStatus == ConnectionStatus.disconnected) {
      connect();
      return;
    }

    await Future.delayed(const Duration(milliseconds: 200));
    if (state.connectionStatus == ConnectionStatus.disconnected) {
      connect();
    }
  }

  void connect() {
    _subscription?.cancel();
    emit(state.copyWith(connectionStatus: ConnectionStatus.connecting));

    final lotId = state.selectedLotId;
    final bids = state.lotDetail.valueOrNull?.bids ?? [];
    final lastBidTime = bids.map((e) => e.createdDate).whereNotNull().maxOrNull;
    _subscription = _liveBiddingRepository
        .events(
          lotId: lotId,
          lastBidTime: lastBidTime,
          infoSupplier: () => SubscriptionInfo(
            amount: _getAmountForApi(),
            type: state.bidState.valueOrNull?.bidder?.type ??
                ParticipationType.remote,
          ),
        )
        .listen(_onAuctionEvent);
    final subscription = _subscription;
    Future.delayed(const Duration(seconds: 5), () {
      if (subscription == _subscription &&
          state.connectionStatus == ConnectionStatus.connecting) {
        emit(state.copyWith(connectionStatus: ConnectionStatus.disconnected));
      }
    });
  }

  num _getAmountForApi() {
    final bidState = state.bidState.valueOrNull;
    if (bidState != null && bidState.isJoined) {
      return bidState.lockedAmount;
    }

    final auction = state.auction.valueOrNull;
    if (auction == null || auction.startTime.isAfter(DateTime.now())) {
      return -1;
    } else {
      return 0;
    }
  }

  void _onAuctionEvent(AuctionEvent event) {
    if (event.lotId != state.selectedLotId) {
      // This shouldn't happen.
      return;
    }

    final specificState = event.map<AuctionState>(
      connected: (_) =>
          state.copyWith(connectionStatus: ConnectionStatus.connected),
      disconnected: (_) =>
          state.copyWith(connectionStatus: ConnectionStatus.disconnected),
      bidPlaced: (event) => _addBids([event.bid]),
      pastBids: (event) => _addBids(event.bids),
      started: (_) => state.withStatus(LotStatus.started).copyWith(
            lotDetail: state.lotDetail
                .mapValue((value) => value.copyWith.auction(isOpen: true)),
          ),
      stopping: (_) =>
          state.copyWith(stoppingTime: DateTime.now().add(stoppingDuration)),
      stopCancelled: (_) => state.copyWith(stoppingTime: null),
      stopped: (_) =>
          state.withStatus(LotStatus.stopped).copyWith(showWinningScreen: true),
      error: (_) => state,
      connectionReset: (_) => state.copyWith(
        connectionStatus: ConnectionStatus.connectionReset,
      ),
      kicked: (_) => state.copyWith(connectionStatus: ConnectionStatus.kicked),
    );

    final lotUpdate = event.lotUpdate;
    if (lotUpdate == null) {
      emit(specificState);
      return;
    }

    emit(specificState.copyWith(
      lotDetail: specificState.lotDetail.mapValue((value) => value.copyWith(
            lot: value.lot.copyWith(
              actualStartTime: lotUpdate.startTime ?? value.lot.actualStartTime,
              stopTime: lotUpdate.stopTime ?? value.lot.stopTime,
            ),
            bidState: value.bidState.copyWith(
                winnerBidId:
                    lotUpdate.winningBid?.id ?? value.bidState.winnerBidId),
          )),
    ));

    _updateMinimumBid();
    _handleAutoStart();
  }

  AuctionState _addBids(List<Bid> newBids) {
    final lotDetail = state.lotDetail.mapValue((detail) {
      final bids = detail.bids;
      final existingIds = {for (final bid in bids) bid.id};
      return detail.copyWith.bidState(bids: [
        ...bids,
        for (final newBid in newBids)
          if (!existingIds.contains(newBid.id)) newBid,
      ]);
    });

    var inFlightAmount = state.bidAmountInProgress;
    if (inFlightAmount != null &&
        inFlightAmount <= newBids.map((e) => e.amount).max) {
      inFlightAmount = null;
    }

    var stoppingTime = state.stoppingTime;
    if (stoppingTime != null &&
        lotDetail.valueOrNull?.auction.startType == AuctionStartType.manual) {
      stoppingTime = DateTime.now().add(stoppingDuration);
    }

    return state.copyWith(
      lotDetail: lotDetail,
      bidAmountInProgress: inFlightAmount,
      stoppingTime: stoppingTime,
    );
  }

  @override
  Future<void> close() {
    _autoStartTimer?.cancel();
    _autoCountdownTimer?.cancel();
    _autoEndTimer?.cancel();
    _connectivitySubscription.cancel();

    return Future.wait([
      _subscription?.cancel(),
      super.close(),
    ].whereNotNull());
  }
}
