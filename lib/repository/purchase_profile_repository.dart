import 'package:bid_right_mobile/models/purchase_profile.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/api/account_api.dart';
import 'package:rxdart/rxdart.dart';

class PurchaseProfileRepository {
  final AccountApi _api;

  PurchaseProfileRepository(AccountApi api) : _api = api;

  final _purchaseProfilesSubject = BehaviorSubject<List<PurchaseProfile>>();

  ValueStream<List<PurchaseProfile>> get purchaseProfiles =>
      _purchaseProfilesSubject.stream;

  Future<void> loadProfiles() async {
    final result = await _api.getPurchaseProfiles();
    result.join(
        onSuccess: (value) => _purchaseProfilesSubject.value = value,
        onFailure: (error) {});
  }

  Future<Result<void>> addProfile(PurchaseProfile profile) async {
    final result = await _api.addPurchaseProfile(profile);
    if (result is Success) {
      loadProfiles();
    }

    return result;
  }

  Future<Result<void>> updateProfile(PurchaseProfile profile) async {
    final result = await _api.updatePurchaseProfile(profile);
    if (result is Success) {
      _purchaseProfilesSubject.value = _purchaseProfilesSubject.value
          .map((e) => e.id == profile.id ? profile : e)
          .toList();
    }

    return result;
  }

  Future<Result<void>> deleteProfile(int id) async {
    final result = await _api.deletePurchaseProfile(id: id);
    if (result is Success) {
      _purchaseProfilesSubject.value = _purchaseProfilesSubject.value
          .where((element) => element.id != id)
          .toList();
    }

    return result;
  }

  void dispose() {
    _purchaseProfilesSubject.close();
  }
}
