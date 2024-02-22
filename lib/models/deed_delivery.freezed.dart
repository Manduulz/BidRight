// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deed_delivery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeedDeliveryMethod _$DeedDeliveryMethodFromJson(Map<String, dynamic> json) {
  switch (json['deedDelivery']) {
    case 'PickUp':
      return _Pickup.fromJson(json);
    case 'Ship':
      return _Ship.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'deedDelivery', 'DeedDeliveryMethod',
          'Invalid union type "${json['deedDelivery']}"!');
  }
}

/// @nodoc
mixin _$DeedDeliveryMethod {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickup,
    required TResult Function(
            @JsonKey(name: 'deedShippingAddress') String address)
        ship,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickup,
    TResult? Function(@JsonKey(name: 'deedShippingAddress') String address)?
        ship,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickup,
    TResult Function(@JsonKey(name: 'deedShippingAddress') String address)?
        ship,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pickup value) pickup,
    required TResult Function(_Ship value) ship,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pickup value)? pickup,
    TResult? Function(_Ship value)? ship,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pickup value)? pickup,
    TResult Function(_Ship value)? ship,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeedDeliveryMethodCopyWith<$Res> {
  factory $DeedDeliveryMethodCopyWith(
          DeedDeliveryMethod value, $Res Function(DeedDeliveryMethod) then) =
      _$DeedDeliveryMethodCopyWithImpl<$Res, DeedDeliveryMethod>;
}

/// @nodoc
class _$DeedDeliveryMethodCopyWithImpl<$Res, $Val extends DeedDeliveryMethod>
    implements $DeedDeliveryMethodCopyWith<$Res> {
  _$DeedDeliveryMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PickupImplCopyWith<$Res> {
  factory _$$PickupImplCopyWith(
          _$PickupImpl value, $Res Function(_$PickupImpl) then) =
      __$$PickupImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickupImplCopyWithImpl<$Res>
    extends _$DeedDeliveryMethodCopyWithImpl<$Res, _$PickupImpl>
    implements _$$PickupImplCopyWith<$Res> {
  __$$PickupImplCopyWithImpl(
      _$PickupImpl _value, $Res Function(_$PickupImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PickupImpl extends _Pickup {
  const _$PickupImpl({final String? $type})
      : $type = $type ?? 'PickUp',
        super._();

  factory _$PickupImpl.fromJson(Map<String, dynamic> json) =>
      _$$PickupImplFromJson(json);

  @JsonKey(name: 'deedDelivery')
  final String $type;

  @override
  String toString() {
    return 'DeedDeliveryMethod.pickup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickupImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickup,
    required TResult Function(
            @JsonKey(name: 'deedShippingAddress') String address)
        ship,
  }) {
    return pickup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickup,
    TResult? Function(@JsonKey(name: 'deedShippingAddress') String address)?
        ship,
  }) {
    return pickup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickup,
    TResult Function(@JsonKey(name: 'deedShippingAddress') String address)?
        ship,
    required TResult orElse(),
  }) {
    if (pickup != null) {
      return pickup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pickup value) pickup,
    required TResult Function(_Ship value) ship,
  }) {
    return pickup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pickup value)? pickup,
    TResult? Function(_Ship value)? ship,
  }) {
    return pickup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pickup value)? pickup,
    TResult Function(_Ship value)? ship,
    required TResult orElse(),
  }) {
    if (pickup != null) {
      return pickup(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PickupImplToJson(
      this,
    );
  }
}

abstract class _Pickup extends DeedDeliveryMethod {
  const factory _Pickup() = _$PickupImpl;
  const _Pickup._() : super._();

  factory _Pickup.fromJson(Map<String, dynamic> json) = _$PickupImpl.fromJson;
}

/// @nodoc
abstract class _$$ShipImplCopyWith<$Res> {
  factory _$$ShipImplCopyWith(
          _$ShipImpl value, $Res Function(_$ShipImpl) then) =
      __$$ShipImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@JsonKey(name: 'deedShippingAddress') String address});
}

/// @nodoc
class __$$ShipImplCopyWithImpl<$Res>
    extends _$DeedDeliveryMethodCopyWithImpl<$Res, _$ShipImpl>
    implements _$$ShipImplCopyWith<$Res> {
  __$$ShipImplCopyWithImpl(_$ShipImpl _value, $Res Function(_$ShipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$ShipImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShipImpl extends _Ship {
  const _$ShipImpl(
      {@JsonKey(name: 'deedShippingAddress') required this.address,
      final String? $type})
      : $type = $type ?? 'Ship',
        super._();

  factory _$ShipImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShipImplFromJson(json);

  @override
  @JsonKey(name: 'deedShippingAddress')
  final String address;

  @JsonKey(name: 'deedDelivery')
  final String $type;

  @override
  String toString() {
    return 'DeedDeliveryMethod.ship(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShipImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShipImplCopyWith<_$ShipImpl> get copyWith =>
      __$$ShipImplCopyWithImpl<_$ShipImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pickup,
    required TResult Function(
            @JsonKey(name: 'deedShippingAddress') String address)
        ship,
  }) {
    return ship(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pickup,
    TResult? Function(@JsonKey(name: 'deedShippingAddress') String address)?
        ship,
  }) {
    return ship?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pickup,
    TResult Function(@JsonKey(name: 'deedShippingAddress') String address)?
        ship,
    required TResult orElse(),
  }) {
    if (ship != null) {
      return ship(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pickup value) pickup,
    required TResult Function(_Ship value) ship,
  }) {
    return ship(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pickup value)? pickup,
    TResult? Function(_Ship value)? ship,
  }) {
    return ship?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pickup value)? pickup,
    TResult Function(_Ship value)? ship,
    required TResult orElse(),
  }) {
    if (ship != null) {
      return ship(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShipImplToJson(
      this,
    );
  }
}

abstract class _Ship extends DeedDeliveryMethod {
  const factory _Ship(
      {@JsonKey(name: 'deedShippingAddress')
          required final String address}) = _$ShipImpl;
  const _Ship._() : super._();

  factory _Ship.fromJson(Map<String, dynamic> json) = _$ShipImpl.fromJson;

  @JsonKey(name: 'deedShippingAddress')
  String get address;
  @JsonKey(ignore: true)
  _$$ShipImplCopyWith<_$ShipImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
