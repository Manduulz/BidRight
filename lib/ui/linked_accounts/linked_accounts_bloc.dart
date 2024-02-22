import 'package:bid_right_mobile/models/bidder.dart';
import 'package:bid_right_mobile/models/linked_account.dart';
import 'package:bid_right_mobile/models/locked_funds.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:rxdart/rxdart.dart';

class LinkedAccountsBloc {
  final AccountRepository _repository;

  LinkedAccountsBloc(this._repository);

  ValueStream<List<AccountLink>> get linkedAccounts =>
      _repository.linkedAccounts;

  ValueStream<Bidder> get bidderDetail => _repository.bidderDetail;

  final _lockedFundsSubject = BehaviorSubject<LockedFundsSummary>();

  ValueStream<LockedFundsSummary> get lockedFunds => _lockedFundsSubject.stream;

  Future<void> loadData() => Future.wait([
        _repository.loadBidderDetail(),
        _repository.loadLinkedAccounts(),
        loadLockedFunds(),
      ]);

  Future<void> loadLockedFunds() async {
    final result = await _repository.getLockedFundsReasons();
    result.join(onSuccess: _lockedFundsSubject.add, onFailure: (_) {});
  }

  Future<void> linkAccount() => _repository.linkAccount();

  Future<Result<void>> unlinkAccount(int id) => _repository.unlinkAccount(id);

  void dispose() {
    _lockedFundsSubject.close();
  }
}
