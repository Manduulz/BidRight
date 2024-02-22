import 'package:bid_right_mobile/models/bidder.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bid_right_mobile/ui/account/personal_info/personal_info_state.dart';
import 'package:bid_right_mobile/ui/shared/address_input/address_input_delegate.dart';
import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

class PersonalInfoCubit extends Cubit<PersonalInfoState>
    implements AddressInputDelegate {
  final AccountRepository _repository;

  final _compositeSubscription = CompositeSubscription();

  PersonalInfoCubit({
    required AccountRepository repository,
  })  : _repository = repository,
        super(const PersonalInfoState(profile: Loading())) {
    loadProfile();
    _repository.bidderDetail.listen((event) {
      emit(state.copyWith(
        profile: Loaded(event),
        newProfile: state.newProfile == null
            ? event
            : event.copyWith(personalInfo: state.newProfile!.personalInfo),
      ));
    }).addTo(_compositeSubscription);
  }

  Future<void> loadProfile() => _repository.loadBidderDetail();

  Future<Result<void>> saveUpdates() async {
    emit(state.copyWith(isSaving: true));
    final result =
        await _repository.updatePersonalInfo(state.newProfile!.personalInfo);
    emit(state.copyWith(isSaving: false));
    return result;
  }

  void setFirstName(String firstName) {
    emit(state.copyWith.newProfile!.personalInfo(firstName: firstName));
  }

  void setLastName(String lastName) {
    emit(state.copyWith.newProfile!.personalInfo(lastName: lastName));
  }

  void setBirthDate(DateTime birthDate) {
    emit(state.copyWith.newProfile!.personalInfo(birthDate: birthDate));
  }

  void setEmail(String email) {
    emit(state.copyWith.newProfile!.personalInfo(email: email));
  }

  @override
  void setAddress1(String address1) {
    emit(
        state.copyWith.newProfile!.personalInfo.address(streetLine1: address1));
  }

  @override
  void setAddress2(String address2) {
    emit(state.copyWith.newProfile!.personalInfo
        .address(streetLine2: address2.isEmpty ? null : address2));
  }

  @override
  void setCity(String city) {
    emit(state.copyWith.newProfile!.personalInfo.address(city: city));
  }

  @override
  void setStateCode(String stateCode) {
    emit(state.copyWith.newProfile!.personalInfo.address(stateCode: stateCode));
  }

  @override
  void setZip(String zip) {
    emit(state.copyWith.newProfile!.personalInfo.address(zip: zip));
  }

  Future<void> setPrimaryPhone(Phone phone) async {
    emit(state.copyWith(isSaving: true));
    await _repository.setPrimaryPhone(phone.number);
    emit(state.copyWith(isSaving: false));
  }

  Future<Result<void>> addPhone(String number) async {
    emit(state.copyWith(isSaving: true));
    final result = await _repository.addPhone(number);
    emit(state.copyWith(isSaving: false));
    return result;
  }

  Future<Result<void>> removePhone(Phone phone) async {
    emit(state.copyWith(isSaving: true));
    final result = await _repository.removePhone(phone.number);
    emit(state.copyWith(isSaving: false));
    return result;
  }

  @override
  Future<void> close() => Future.wait([
        super.close(),
        _compositeSubscription.cancel(),
      ]);
}
