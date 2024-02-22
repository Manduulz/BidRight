import 'package:bid_right_mobile/models/loading_state.dart';
import 'package:bid_right_mobile/models/phone_verification.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/ui/verification/phone_verify_state.dart';
import 'package:bloc/bloc.dart';

class PhoneVerifyCubit extends Cubit<PhoneVerifyState> {
  PhoneVerifyCubit({
    required PhoneVerifyDelegate delegate,
  })  : _delegate = delegate,
        super(const PhoneVerifyState());

  final PhoneVerifyDelegate _delegate;
  String get phoneNumber => _delegate.phone;

  Future<void> fetchToken() async {
    emit(state.copyWith(token: state.token.withLoading()));
    final result = await _delegate.fetchToken();

    if (!isClosed) {
      emit(state.copyWith(token: LoadingState.fromResult(result)));
    }
  }

  void onVerificationCodeChanged(String code) {
    emit(state.copyWith(verificationCode: code));
    if (state.verificationState.isError) {
      emit(state.copyWith(
          verificationState: const VerificationState.unverified()));
    }
  }

  Future<void> verifyToken() async {
    emit(
        state.copyWith(verificationState: const VerificationState.verifying()));
    final error = await _delegate.verifyToken(
        token: state.token.valueOrNull!, code: state.verificationCode);
    emit(
      state.copyWith(
        verificationState: error == null
            ? const VerificationState.verified()
            : VerificationState.error(error),
      ),
    );
  }
}

abstract class PhoneVerifyDelegate {
  String get phone;

  Future<Result<PhoneVerificationToken>> fetchToken();

  Future<String?> verifyToken({
    required PhoneVerificationToken token,
    required String code,
  });
}
