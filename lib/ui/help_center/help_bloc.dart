import 'package:bid_right_mobile/models/auction_host.dart';
import 'package:bid_right_mobile/models/help.dart';
import 'package:bid_right_mobile/repository/api/resources_api.dart';
import 'package:rxdart/rxdart.dart';

class HelpBloc {
  final ResourcesApi _api;

  HelpBloc(this._api);

  final _resourcesSubject = BehaviorSubject<List<HelpResource>>();

  ValueStream<List<HelpResource>> get resources => _resourcesSubject.stream;

  final _verifiedHostsSubject = BehaviorSubject<List<VerifiedAuctionHost>>();

  ValueStream<List<VerifiedAuctionHost>> get verifiedHosts =>
      _verifiedHostsSubject.stream;

  final _errorSubject = PublishSubject<String>();

  Stream<String> get errors => _errorSubject.stream;

  Future<void> loadData() => Future.wait([loadResources(), loadVerifiedHosts()]);

  Future<void> loadResources() async {
    final result = await _api.loadResources();
    result.join(
        onSuccess: _resourcesSubject.add,
        onFailure: (_) {
          _errorSubject.add('Failed to load resources');
        });
  }

  Future<void> loadVerifiedHosts() async {
    final result = await _api.loadVerifiedHosts();
    result.join(
        onSuccess: _verifiedHostsSubject.add,
        onFailure: (_) {
          _errorSubject.add('Failed to load verified hosts');
        });
  }

  void dispose() {
    _resourcesSubject.close();
    _verifiedHostsSubject.close();
    _errorSubject.close();
  }
}
