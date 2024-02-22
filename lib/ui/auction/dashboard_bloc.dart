import 'package:bid_right_mobile/models/bidder.dart';
import 'package:bid_right_mobile/models/live_lot.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bid_right_mobile/repository/auction_repository.dart';
import 'package:rxdart/rxdart.dart';

class DashboardBloc {
  final AuctionRepository _repository;

  final AccountRepository _accountRepository;

  DashboardBloc(this._repository, this._accountRepository);

  ValueStream<List<LotBidderState>> get upcomingLots =>
      _repository.upcomingLots;

  ValueStream<List<LotBidderState>> get pinnedLots => _repository.pinnedLots;

  ValueStream<List<LotBidderState>> get registeredLots =>
      _repository.registeredLots;

  ValueStream<List<LotBidderState>> get cancelledSales =>
      _repository.cancelledSales;

  ValueStream<Bidder> get bidderDetail => _accountRepository.bidderDetail;

  final _liveLotsSubject = BehaviorSubject<LoadingState<List<LiveLot>>>.seeded(
      const Uninitialized());

  ValueStream<LoadingState<List<LiveLot>>> get liveLots =>
      _liveLotsSubject.stream;

  Future<void> refresh() => Future.wait([
        refreshUpcomingLots(),
        refreshPinnedLots(),
        refreshCancelledSales(),
        loadLiveLots(),
        refreshBidderDetails(),
        refreshRegisteredLots(),
      ]);

  Future<void> refreshBidderDetails() => _accountRepository.loadBidderDetail();

  Future<void> refreshUpcomingLots() => _repository.refreshUpcomingLots();

  Future<void> refreshCancelledSales() => _repository.refreshCancelledSales();

  Future<void> loadLiveLots() async {
    _liveLotsSubject.value = _liveLotsSubject.value.withLoading();
    final result = await _repository.loadLiveLots();
    _liveLotsSubject.value = LoadingState.fromResult(result);
  }

  Future<void> loadMore() => _repository.loadMoreUpcomingLots();

  Future<void> refreshPinnedLots() => _repository.refreshPinnedLots();

  Future<void> pinLot(int lotId) => _repository.pinLot(lotId);

  Future<void> unpinLot(int lotId) => _repository.unpinLot(lotId);

  Future<void> refreshRegisteredLots() => _repository.refreshRegisteredLots();

  void dispose() {}
}
