import 'package:bid_right_mobile/models/phone_verification.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/user_manager.dart';
import 'package:bid_right_mobile/repository/user_session.dart';
import 'package:bid_right_mobile/ui/login/two_factor/two_factor_state.dart';
import 'package:bid_right_mobile/ui/verification/phone_verify_cubit.dart';
import 'package:bloc/bloc.dart';

class TwoFactorCubit extends Cubit<TwoFactorState> {
  TwoFactorCubit({
    required UserManager userManager,
    required UserSession session,
    required String refreshToken,
    required this.phone,
    required bool hasAuthenticator,
    required this.rememberMe,
  })  : _userManager = userManager,
        _session = session,
        _refreshToken = refreshToken,
        super(TwoFactorState(
            currentMethod: hasAuthenticator
                ? TwoFactorMethod.authenticator
                : TwoFactorMethod.sms,
            hasAuthenticator: hasAuthenticator));

  final UserManager _userManager;

  final UserSession _session;

  final String _refreshToken;

  final String phone;

  final bool rememberMe;

  PhoneVerifyDelegate createPhoneVerificationDelegate() =>
      _TwoFactorPhoneVerifyDelegate(cubit: this);

  Future<String?> verifyAuthenticatorCode(String code) async {
    emit(state.copyWith(isLoading: true));
    final result = await _userManager.twoFactorLogin(
      refreshToken: _refreshToken,
      verificationCode: code,
      rememberMe: rememberMe,
    );
    emit(state.copyWith(isLoading: false));

    return result.map(
      success: (_) => null,
      needs2FA: (_) => "This error shouldn't happen",
      badCredentials: (_) => 'Incorrect authenticator code',
      connectionFailure: (_) => 'Failed to connect to server',
      otherError: (_) => 'An error occurred',
    );
  }

  bool goBack() {
    if (state.hasAuthenticator && state.currentMethod == TwoFactorMethod.sms) {
      emit(state.copyWith(currentMethod: TwoFactorMethod.authenticator));
      return true;
    } else {
      return false;
    }
  }

  void showPhone() {
    emit(state.copyWith(currentMethod: TwoFactorMethod.sms));
  }
}

class _TwoFactorPhoneVerifyDelegate implements PhoneVerifyDelegate {
  _TwoFactorPhoneVerifyDelegate({
    required this.cubit,
  });

  @override
  String get phone => cubit.phone;

  final TwoFactorCubit cubit;

  @override
  Future<Result<PhoneVerificationToken>> fetchToken() {
    return cubit._session.verifyPrimaryPhone();
  }

  @override
  Future<String?> verifyToken({
    required PhoneVerificationToken token,
    required String code,
  }) async {
    final result = await cubit._userManager.twoFactorLogin(
      refreshToken: cubit._refreshToken,
      verificationId: token.id,
      verificationCode: code,
      rememberMe: cubit.rememberMe,
    );

    return result.map(
      success: (_) => null,
      needs2FA: (_) => "This error shouldn't happen",
      badCredentials: (_) => 'Incorrect verification code',
      connectionFailure: (_) => 'Failed to connect to server',
      otherError: (_) => 'An error occurred',
    );
  }
}
