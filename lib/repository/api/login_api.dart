import 'package:bid_right_mobile/models/registration.dart';
import 'package:bid_right_mobile/models/login_result.dart';
import 'package:bid_right_mobile/models/phone_verification.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/api/dio_provider.dart';
import 'package:bid_right_mobile/repository/api/error_wrapper.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

const _clientData = {
  'client_id': 'mobile',
  'client_secret': '4ED1FE9E-6596-4056-803E-835B0E8FB258',
};

class LoginApi {
  final Dio _dio;

  LoginApi(this._dio);

  static final LoginApi instance = LoginApi(createDio());

  Future<LoginResult> login({
    required String username,
    required String password,
  }) async {
    return _loginInternal(data: {
      'grant_type': 'password',
      'username': username,
      'password': password,
      'scope': 'offline_access',
    });
  }

  Future<LoginResult> loginWithToken(String refreshToken) {
    return _loginInternal(data: {
      'grant_type': 'refresh_token',
      'refresh_token': refreshToken,
    });
  }

  Future<LoginResult> login2FA({
    required String refreshToken,
    int? verificationId,
    required String verificationCode,
  }) async {
    return _loginInternal(data: {
      'grant_type': 'refresh_token',
      'refresh_token': refreshToken,
      'password': verificationCode,
      'two_factor': true,
      if (verificationId != null) 'verification_id': verificationId,
    });
  }

  Future<LoginResult> _loginInternal(
      {required Map<String, dynamic> data}) async {
    try {
      final response = await _dio.post('/connect/token',
          data: {
            ...data,
            ..._clientData,
            'device_id': await _getDeviceId(),
          },
          options: Options(contentType: Headers.formUrlEncodedContentType));

      return LoginResult.fromJson(response.data);
    } on DioError catch (error) {
      if (error.response == null) {
        return LoginResult.connectionFailure(error);
      } else if (error.response!.statusCode == 400) {
        return LoginResult.badCredentials(error);
      } else {
        return LoginResult.otherError(error);
      }
    }
  }

  Future<Result<void>> register(NewBidderRequest request) {
    return wrapError(() async {
      final deviceId = await _getDeviceId();

      await _dio.post(
        '/api/bidders',
        data: {
          'deviceId': deviceId,
          ...request.toJson(),
        },
      );
    });
  }

  Future<Result<bool>> isUsernameAvailable(String username) {
    return wrapError(() async {
      final result = await _dio.get<bool>('/api/user/username/$username');
      return !result.data!;
    });
  }

  Future<Result<bool>> isEmailAvailable(String email) {
    return wrapError(() async {
      final result = await _dio.get<bool>('/api/user/email/$email');
      return !result.data!;
    });
  }

  Future<Result<PhoneVerificationToken>> sendVerificationCode(String phone) {
    return wrapError(() async {
      final result = await _dio.get('/api/bidderverify/sms/$phone');
      return PhoneVerificationToken.fromJson(result.data);
    });
  }
  
  Future<Result<void>> forgotPassword(String username) {
    return wrapError(() => _dio.get('/api/user/password/$username'));
  }
}

Future<String> _getDeviceId() async {
  const idKey = 'deviceUUID';

  final prefs = await SharedPreferences.getInstance();
  final id = prefs.getString(idKey);
  if (id != null) {
    return id;
  }

  final newId = const Uuid().v4();
  await prefs.setString(idKey, newId);
  return newId;
}
