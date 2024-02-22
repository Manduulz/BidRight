import 'package:bid_right_mobile/models/account_verify.dart';
import 'package:bid_right_mobile/models/linked_account.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bid_right_mobile/ui/account/personal_info/account_verify/account_verify_state.dart';
import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

typedef VerifyPhoneCallback = Future<bool> Function(String phone,
    {int? accountId});

class AccountVerifyCubit extends Cubit<AccountVerifyState> {
  final AccountRepository _repository;
  final VerifyPhoneCallback _verifyPhone;

  final _compositeSubscription = CompositeSubscription();

  AccountVerifyCubit({
    required AccountRepository repository,
    required VerifyPhoneCallback verifyPhone,
  })  : _repository = repository,
        _verifyPhone = verifyPhone,
        super(const AccountVerifyState(accounts: Loading())) {
    _repository.linkedAccounts
        .listen(_onLinkedAccountsLoaded)
        .addTo(_compositeSubscription);
    loadAccounts();
  }

  void _onLinkedAccountsLoaded(List<AccountLink> accounts) {
    emit(state.copyWith(accounts: Loaded(accounts)));
  }

  Future<void> loadAccounts() => _repository.loadLinkedAccounts();

  Future<void> onAccountSelected(int accountId) async {
    emit(state.copyWith(selectedAccountId: accountId));

    return loadAccountPhones();
  }

  Future<void> loadAccountPhones() async {
    final accountId = state.selectedAccountId;
    if (accountId == null) {
      // This shouldn't happen.
      return;
    }

    emit(state.copyWith(numbers: const Loading()));

    final result = await _repository.getLinkedAccountPhones(accountId);

    if (state.selectedAccountId != accountId) {
      // cancelled
      return;
    }

    result.join(
      onSuccess: _onPhonesLoaded,
      onFailure: (error) => emit(state.copyWith(numbers: ErrorState(error))),
    );
  }

  void unselectAccount() {
    emit(state.copyWith(
      selectedAccountId: null,
      numbers: const Uninitialized(),
    ));
  }

  void _onPhonesLoaded(AccountVerifyResponse response) {
    emit(state.copyWith(
      numbers: Loaded(response.phones),
      isVerified: response.isVerified,
    ));
  }

  Future<bool> verifyPhone(String number) async {
    final success =
        await _verifyPhone(number, accountId: state.selectedAccountId);
    if (success) {
      _repository.loadBidderDetail();
      emit(state.copyWith(isVerified: true));
    }
    return success;
  }

  @override
  Future<void> close() {
    return Future.wait([
      _compositeSubscription.cancel(),
      super.close(),
    ]);
  }
}
