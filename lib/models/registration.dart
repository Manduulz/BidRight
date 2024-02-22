import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration.freezed.dart';

part 'registration.g.dart';

// ignore_for_file: invalid_annotation_target

@Freezed(toJson: true)
class NewBidderRequest with _$NewBidderRequest {
  const NewBidderRequest._();

  const factory NewBidderRequest({
    @JsonKey(name: 'userName') required String username,
    required String firstName,
    required String lastName,
    required String email,
    @JsonKey(name: 'phoneNumber') required String phone,
    @JsonKey(name: 'birthDate') required DateTime dateOfBirth,
    required String address1,
    String? address2,
    required String city,
    required String state,
    required String zip,
    required String password,
    required int verificationId,
    required String verificationCode,
  }) = _NewBidderRequest;
}
