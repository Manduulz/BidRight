import 'package:bid_right_mobile/models/purchase_profile.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/purchase_profile_repository.dart';
import 'package:rxdart/rxdart.dart';

class EditPurchaseProfileBloc {
  final PurchaseProfileRepository _repository;

  final int? profileId;

  EditPurchaseProfileBloc({
    required PurchaseProfileRepository repository,
    this.profileId,
  }) : _repository = repository;

  late final Future<PurchaseProfile> initialProfile = _repository.purchaseProfiles
      .expand((profiles) => profiles)
      .where((profile) => profile.id == profileId)
      .first;

  final _loadingSubject = BehaviorSubject<bool>.seeded(false);

  ValueStream<bool> get loading => _loadingSubject.stream;

  final _errorSubject = PublishSubject<String>();

  Stream<String> get errors => _errorSubject.stream;

  Future<bool> saveProfile(PurchaseProfile profile) async {
    _loadingSubject.value = true;
    final Result result;
    try {
      final id = profileId;
      if (id == null) {
        result = await _repository.addProfile(profile);
      } else {
        result = await _repository.updateProfile(profile);
      }
    } finally {
      if (!_loadingSubject.isClosed) {
        _loadingSubject.value = false;
      }
    }

    return result.join(onSuccess: (_) => true, onFailure: (error) {
      _errorSubject.add('Failed to save profile');
      return false;
    });
  }

  void dispose() {
    _loadingSubject.close();
    _errorSubject.close();
  }
}