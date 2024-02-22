import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(SharedPreferences sharedPreferences)
      : _sharedPreferences = sharedPreferences;

  static const _rememberMeKey = 'rememberMe';
  static const _usernameKey = 'username';

  void setLoginScreenState({required bool rememberMe, String? username}) {
    _sharedPreferences.setBool(_rememberMeKey, rememberMe);
    if (rememberMe && username != null) {
      _sharedPreferences.setString(_usernameKey, username);
    } else {
      _sharedPreferences.remove(_usernameKey);
    }
  }

  bool get rememberMe => _sharedPreferences.getBool(_rememberMeKey) ?? true;

  String? get username => _sharedPreferences.getString(_usernameKey);
}