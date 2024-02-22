import 'package:freezed_annotation/freezed_annotation.dart';

part 'deed_delivery.freezed.dart';

part 'deed_delivery.g.dart';

// ignore_for_file: invalid_annotation_target

@Freezed(unionKey: 'deedDelivery', unionValueCase: FreezedUnionCase.pascal)
class DeedDeliveryMethod with _$DeedDeliveryMethod {
  const DeedDeliveryMethod._();

  @FreezedUnionValue('PickUp')
  const factory DeedDeliveryMethod.pickup() = _Pickup;

  const factory DeedDeliveryMethod.ship({
    @JsonKey(name: 'deedShippingAddress') required String address,
  }) = _Ship;

  bool get isValid =>
      map(pickup: (_) => true, ship: (ship) => ship.address.isNotEmpty);

  factory DeedDeliveryMethod.fromType(DeedDeliveryType type) {
    switch (type) {
      case DeedDeliveryType.pickup:
        return const DeedDeliveryMethod.pickup();
      case DeedDeliveryType.delivery:
        return const DeedDeliveryMethod.ship(address: '');
    }
  }

  factory DeedDeliveryMethod.fromJson(Map<String, dynamic> json) =>
      _$DeedDeliveryMethodFromJson(json);

  DeedDeliveryType get type => map(
      pickup: (_) => DeedDeliveryType.pickup,
      ship: (_) => DeedDeliveryType.delivery);
}

enum DeedDeliveryType { pickup, delivery }