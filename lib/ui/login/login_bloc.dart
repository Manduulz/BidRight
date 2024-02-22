import 'package:bid_right_mobile/models/login_result.dart';
import 'package:bid_right_mobile/repository/app_preferences.dart';
import 'package:bid_right_mobile/repository/user_manager.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc {
  final UserManager _userManager;

  final AppPreferences _appPreferences;

  final _loadingSubject = BehaviorSubject<bool>.seeded(false);

  LoginBloc({
    required UserManager userManager,
    required AppPreferences preferences,
  })  : _userManager = userManager,
        _appPreferences = preferences;

  ValueStream<bool> get loading => _loadingSubject.stream;

  String? get savedUsername => _appPreferences.username;

  bool get savedRememberMe => _appPreferences.rememberMe;

  Future<bool> hasSavedCredentials() => _userManager.hasSavedCredentials();

  Future<AuthResult> loginWithSavedCredentials() async {
    _loadingSubject.value = true;
    final result = await _userManager.loginWithSavedCredentials();
    _loadingSubject.value = false;
    return result;
  }

  Future<LoginResult> login(
      String username, String password, bool rememberMe) async {
    _loadingSubject.value = true;
    final result = await _userManager.login(username, password, rememberMe);
    _loadingSubject.value = false;

    if (result.isSuccessful) {
      _appPreferences.setLoginScreenState(
          rememberMe: rememberMe, username: username);
    }

    return result;
  }

  void dispose() {
    _loadingSubject.close();
  }
}