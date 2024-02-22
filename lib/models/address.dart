import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

@freezed
class Address with _$Address {
  const Address._();

  const factory Address({
    required String streetLine1,
    String? streetLine2,
    required String city,
    required String stateCode,
    required String zip,
    String? county,
    String? countryCode,
  }) = _Address;

  String get cityLine {
    final buffer = StringBuffer(city);

    if (city.isNotEmpty && stateCode.isNotEmpty) {
      buffer.write(', ');
    }

    buffer.write(stateCode);

    if (buffer.isNotEmpty && zip.isNotEmpty) {
      buffer.write(' ');
    }

    buffer.write(zip);

    return buffer.toString();
  }

  @override
  String toString() {
    final buffer = StringBuffer(streetLine1);

    if (streetLine2 != null) {
      buffer.write(', $streetLine2');
    }

    buffer.write(', $cityLine');

    if (county != null) {
      buffer.write(', $county');
    }

    return buffer.toString();
  }
}