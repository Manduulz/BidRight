import 'package:bid_right_mobile/models/linked_account.dart';
import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_verify_state.freezed.dart';

@freezed
class AccountVerifyState with _$AccountVerifyState {
  const AccountVerifyState._();

  const factory AccountVerifyState({
    @Default(Uninitialized()) LoadingState<List<AccountLink>> accounts,
    int? selectedAccountId,
    @Default(Uninitialized()) LoadingState<List<String>> numbers,
    @Default(false) isVerified,
  }) = _AccountVerifyState;
}
