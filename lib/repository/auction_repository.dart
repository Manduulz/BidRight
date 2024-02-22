import 'dart:ui';

import 'package:bid_right_mobile/models/auction.dart';
import 'package:bid_right_mobile/models/auction_bidder.dart';
import 'package:bid_right_mobile/models/auction_stream.dart';
import 'package:bid_right_mobile/models/deed_delivery.dart';
import 'package:bid_right_mobile/models/live_lot.dart';
import 'package:bid_right_mobile/models/map_bounds.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:bid_right_mobile/models/winnings.dart';
import 'package:bid_right_mobile/repository/api/auction_api.dart';
import 'package:collection/collection.dart';
import 'package:rxdart/rxdart.dart';

class AuctionRepository {
  final AuctionApi _api;

  AuctionRepository(this._api);

  final _compositeSubscription = CompositeSubscription();

  final _upcomingLotsSubject = BehaviorSubject<List<int>>();

  final _pinnedLotsSubject = BehaviorSubject<List<int>>();

  final _registeredLotsSubject = BehaviorSubject<List<int>>();

  late final _cancelledSalesSubject =
      BehaviorSubject<List<LotBidderState>>(onListen: refreshCancelledSales);

  final _cacheSubject = BehaviorSubject<Map<int, LotBidderState>>.seeded({});

  ValueStream<List<LotBidderState>> _createCachedStream(
          ValueStream<List<int>> stream,
          {required VoidCallback onListen}) =>
      Rx.combineLatest2(stream, _cacheSubject, _resolveFromCache)
          .doOnListen(onListen)
          .publishValue()
          .autoConnect(connection: _compositeSubscription.add);

  late final ValueStream<List<LotBidderState>> upcomingLots =
      _createCachedStream(_upcomingLotsSubject, onListen: refreshUpcomingLots);

  late final ValueStream<List<LotBidderState>> pinnedLots =
      _createCachedStream(_pinnedLotsSubject, onListen: refreshPinnedLots);

  late final ValueStream<List<LotBidderState>> registeredLots =
      _createCachedStream(_registeredLotsSubject,
          onListen: refreshRegisteredLots);

  ValueStream<List<LotBidderState>> get cancelledSales =>
      _cancelledSalesSubject.stream;

  Stream<List<LotBidderState>> _updateWithCache(List<int> lotIds) {
    return _cacheSubject.map((event) => _resolveFromCache(lotIds, event));
  }

  // actualStartTime is always non-null.  Perhaps a different class
  // should be created instead of using Lot for upcoming lots, since the
  // data is different.
  List<LotBidderState> _resolveFromCache(
          List<int> ids, Map<int, LotBidderState> cache) =>
      ids
          .map((e) => cache[e])
          .whereNotNull()
          .sortedBy((element) => element.lot.actualStartTime!);

  // The backend guys decided to remove pagination for some reason
  Future<void> loadMoreUpcomingLots() => Future.value();

  Future<void> refreshUpcomingLots() async {
    final result = await _api.loadLots();
    result.join(
        onSuccess: (value) {
          final ids = _onLoadValues(value);
          _upcomingLotsSubject.value = ids;
        },
        onFailure: (_) {});
  }

  Future<void> refreshPinnedLots() async {
    final result = await _api.loadPinnedLots();
    result.join(
        onSuccess: (value) {
          final ids = _onLoadValues(value);
          _pinnedLotsSubject.value = ids;
        },
        onFailure: (_) {});
  }

  Future<void> refreshRegisteredLots() async {
    final result = await _api.loadRegisteredLots();
    result.join(
      onSuccess: (value) {
        final ids = _onLoadValues(value);
        _registeredLotsSubject.value = ids;
      },
      onFailure: (_) {},
    );
  }

  Future<void> refreshCancelledSales() async {
    final result = await _api.loadCancelledSales();
    result.join(
      onSuccess: (value) {
        _cancelledSalesSubject.value = value;
      },
      onFailure: (_) {},
    );
  }

  Future<Result<List<LiveLot>>> loadLiveLots() => _api.loadLiveLots();

  List<int> _onLoadValues(List<LotBidderState> lots) {
    _cacheSubject.value = {
      ..._cacheSubject.value,
      for (final lot in lots) lot.lot.id: lot,
    };

    return lots.map((e) => e.lot.id).toList();
  }

  Future<void> pinLot(int lotId) {
    _pinLotInternal(lotId, true);
    return _api.pinLot(lotId: lotId);
  }

  Future<void> unpinLot(int lotId) {
    _pinLotInternal(lotId, false);
    return _api.unpinLot(lotId: lotId);
  }

  void _pinLotInternal(int lotId, bool isPinned) {
    final cache = _cacheSubject.value;
    final lot = cache[lotId];
    if (lot != null) {
      _cacheSubject.value = {
        ...cache,
        lotId: lot.copyWith(isPinned: isPinned),
      };
    }

    if (isPinned) {
      _pinnedLotsSubject.value = {lotId, ..._pinnedLotsSubject.value}.toList();
    } else {
      _pinnedLotsSubject.value =
          _pinnedLotsSubject.value.where((id) => id != lotId).toList();
    }
  }

  Future<Result<List<PastWinning>>> loadPastWinnings() =>
      _api.loadPastWinnings();

  Future<Result<PastWinningDetail>> loadPastWinningDetail({
    required int winningId,
  }) =>
      _api.loadPastWinningDetail(winningId: winningId);

  Future<Result<List<Property>>> loadPropertiesForLot(int lotId) =>
      _api.loadPropertiesForLot(lotId);

  void dispose() {
    _upcomingLotsSubject.close();
    _pinnedLotsSubject.close();
    _cacheSubject.close();
    _compositeSubscription.dispose();
  }

  Future<Result<Stream<List<LotBidderState>>>> searchLots({
    String? query,
    MapBounds? bounds,
    SearchFilter? filter,
  }) async {
    final result = await _api.searchLots(
      query: query,
      bounds: bounds,
      filter: filter,
    );
    return result.map((value) => _updateWithCache(_onLoadValues(value)));
  }

  Future<Result<AuctionDetailWithLot>> loadLotDetail({required int lotId}) =>
      _api.loadLotDetail(lotId: lotId);

  Future<Result<List<LotSummary>>> loadLotsForAuction(int auctionId) =>
      _api.loadLotsForAuction(auctionId);

  Stream<Lot> getLot(int lotId) {
    return _cacheSubject.map((event) {
      return event[lotId]?.lot;
    }).whereType<Lot>();
  }

  Future<Result<List<AuctionStreamInfo>>> loadStreams(
          {required int auctionId}) =>
      _api.loadStreams(auctionId: auctionId);

  Future<Result<void>> registerToAuction({
    required int auctionId,
    required int lotId,
    required int purchaseProfileId,
    required num amount,
    required ParticipationType participationType,
  }) =>
      _api.registerToAuction(
        auctionId: auctionId,
        lotId: lotId,
        purchaseProfileId: purchaseProfileId,
        amount: amount,
        participationType: participationType,
      );

  Future<Result<void>> updateAuctionRegistration({
    required int auctionId,
    required int lotId,
    int? purchaseProfileId,
    num? amount,
  }) async {
    final result = await Future.wait([
      if (purchaseProfileId != null)
        _api.updatePurchaseProfile(
            auctionId: auctionId, purchaseProfileId: purchaseProfileId),
      if (amount != null)
        _api.updateLockedFunds(
          auctionId: auctionId,
          lotId: lotId,
          amount: amount,
        ),
    ]);

    return result.firstWhereOrNull((element) => element is Failure) ??
        const Success(null);
  }

  Future<Result<void>> unregisterFromAuction({
    required int auctionId,
    required int lotId,
  }) {
    return _api.unregisterFromAuction(auctionId: auctionId, lotId: lotId);
  }

  Future<Result<void>> placeBid({
    required int auctionId,
    required int lotId,
    required num amount,
  }) {
    return _api.placeBid(auctionId: auctionId, lotId: lotId, amount: amount);
  }

  Future<Result<void>> setDeedDeliveryMethod(
      {required int lotId, required DeedDeliveryMethod method}) {
    return _api.setDeedDeliveryMethod(lotId: lotId, method: method);
  }
}
