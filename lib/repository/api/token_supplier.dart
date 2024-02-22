import 'package:bid_right_mobile/models/login_result.dart';

class TokenSupplier {
  Future<String>? _tokenFuture;
  Future<Credentials>? _innerFuture;
  final Future<Credentials> Function() _tokenSupplier;

  TokenSupplier(this._tokenSupplier,
      {String? initialToken,})
      : _tokenFuture = initialToken == null ? null : Future.value(initialToken);

  /// Obtain the authentication token.
  ///
  /// Normally reuses the same token future every time this method
  /// is called.  If present, [oldFuture] will be
  /// treated as bad/expired, and a new token will be generated
  /// if necessary.
  Future<String> getToken([Future<String>? oldFuture]) {
    if (_tokenFuture == oldFuture) {
      // Token failed, so get a new token.
      _tokenFuture = null;
    }

    return _tokenFuture ??= _loadToken();
  }

  Future<String> _loadToken() async {
    final future = _innerFuture = _tokenSupplier();
    try {
      final credentials = await future;
      return credentials.token;
    } on Exception {
      if (future == _innerFuture) {
        // Request failed: invalidate
        _tokenFuture = null;
        _innerFuture = null;
      }
      rethrow;
    }
  }
}
