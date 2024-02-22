import 'package:bid_right_mobile/models/phone_verification.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/account_repository.dart';
import 'package:bid_right_mobile/ui/verification/phone_verify_cubit.dart';
import 'package:bid_right_mobile/ui/verification/phone_verify.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<bool> verifyPhoneNumber(
  BuildContext context, {
  required String phoneNumber,
  int? accountId,
}) async {
  return await showDialog<bool>(
        context: context,
        builder: (context) => PhoneVerificationDialog(
          delegate: _AccountVerifyDelegate(
            phone: phoneNumber,
            repository: context.read<AccountRepository>(),
            accountId: accountId,
          ),
        ),
      ) ??
      false;
}

class _AccountVerifyDelegate implements PhoneVerifyDelegate {
  _AccountVerifyDelegate({
    required this.phone,
    required AccountRepository repository,
    this.accountId,
  }) : _repository = repository;

  @override
  final String phone;
  final int? accountId;
  final AccountRepository _repository;

  @override
  Future<Result<PhoneVerificationToken>> fetchToken() {
    return _repository.getPhoneVerificationToken(
      accountId: accountId,
      phoneNumber: phone,
    );
  }

  @override
  Future<String?> verifyToken(
      {required PhoneVerificationToken token, required String code}) async {
    final result = await _repository.verifyPhoneToken(token: token, code: code);
    return result.join(onSuccess: (_) => null, onFailure: (error) {
      if (error is DioError && error.response?.statusCode == 400) {
        return 'Incorrect verification code';
      } else {
        return 'Error contacting server';
      }
    });
  }
}
