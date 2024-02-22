import 'dart:async';

import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bloc/bloc.dart';

import 'two_factor_setup_state.dart';

class TwoFactorSetupCubit extends Cubit<TwoFactorSetupState> {
  TwoFactorSetupCubit({required AccountRepository repository})
      : _repository = repository,
        super(const TwoFactorSetupState()) {
    final bidder = _repository.bidderDetail.valueOrNull;
    if (bidder != null) {
      emit(state.copyWith(hasAuthenticator: Loaded(bidder.hasAuthenticator)));
    } else {
      emit(state.copyWith(hasAuthenticator: const Loading()));
      loadAuthenticatorStatus();
    }

    _subscription = _repository.bidderDetail.listen((event) {
      emit(state.copyWith(hasAuthenticator: Loaded(event.hasAuthenticator)));
    });
  }

  final AccountRepository _repository;

  late final StreamSubscription _subscription;

  Future<void> loadAuthenticatorStatus() => _repository.loadBidderDetail();

  Future<void> addAuthenticator() async {
    emit(state.copyWith(authenticatorInfo: const Loading()));
    final result = await _repository.addAuthenticator();
    emit(state.copyWith(authenticatorInfo: LoadingState.fromResult(result)));
  }

  Future<void> removeAuthenticator() async {
    emit(state.copyWith(isRemoving: true));
    final result = await _repository.removeAuthenticator();
    emit(state.copyWith(
      isRemoving: false,
      authenticatorInfo: result.join(
        onSuccess: (_) => const Uninitialized(),
        onFailure: (_) => state.authenticatorInfo,
      ),
    ));
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
