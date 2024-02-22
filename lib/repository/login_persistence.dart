import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginPersistence {
  static const _tokenKey = '_refreshToken';

  static const _secureStorage = FlutterSecureStorage();

  Future<void> setRefreshToken(String token) =>
      _secureStorage.write(key: _tokenKey, value: token);

  Future<bool> isLoggedIn() => _secureStorage.containsKey(key: _tokenKey);

  Future<void> logout() => _secureStorage.delete(key: _tokenKey);

  Future<String?> getRefreshToken() => _secureStorage.read(key: _tokenKey);
}