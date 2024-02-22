import 'package:bid_right_mobile/models/property.dart';
import 'package:bid_right_mobile/repository/auction_repository.dart';
import 'package:rxdart/rxdart.dart';

class AuctionListBloc {
  final AuctionRepository _repository;

  AuctionListBloc(this._repository);

  ValueStream<List<LotBidderState>> get upcomingLots => _repository.upcomingLots;

  Future<void> refresh() => _repository.refreshUpcomingLots();

  void dispose() {}
}