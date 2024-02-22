import 'package:bid_right_mobile/models/purchase_profile.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/purchase_profile_repository.dart';
import 'package:rxdart/rxdart.dart';

class PurchaseProfileListBloc {
  final PurchaseProfileRepository _repository;

  PurchaseProfileListBloc(PurchaseProfileRepository repository)
      : _repository = repository;

  ValueStream<List<PurchaseProfile>> get profiles =>
      _repository.purchaseProfiles;

  Future<void> loadProfiles() => _repository.loadProfiles();

  Future<Result<void>> deleteProfile(int id) => _repository.deleteProfile(id);

  void dispose() {}
}