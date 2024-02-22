// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locked_funds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LockedFundsSummaryDto _$LockedFundsSummaryDtoFromJson(
    Map<String, dynamic> json) {
  return _LockedFundsSummaryDto.fromJson(json);
}

/// @nodoc
mixin _$LockedFundsSummaryDto {
  List<ActiveAuctionDto> get activeAuctions =>
      throw _privateConstructorUsedError;
  List<PendingWinningDto> get pendingWinnings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LockedFundsSummaryDtoCopyWith<LockedFundsSummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockedFundsSummaryDtoCopyWith<$Res> {
  factory $LockedFundsSummaryDtoCopyWith(LockedFundsSummaryDto value,
          $Res Function(LockedFundsSummaryDto) then) =
      _$LockedFundsSummaryDtoCopyWithImpl<$Res, LockedFundsSummaryDto>;
  @useResult
  $Res call(
      {List<ActiveAuctionDto> activeAuctions,
      List<PendingWinningDto> pendingWinnings});
}

/// @nodoc
class _$LockedFundsSummaryDtoCopyWithImpl<$Res,
        $Val extends LockedFundsSummaryDto>
    implements $LockedFundsSummaryDtoCopyWith<$Res> {
  _$LockedFundsSummaryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeAuctions = null,
    Object? pendingWinnings = null,
  }) {
    return _then(_value.copyWith(
      activeAuctions: null == activeAuctions
          ? _value.activeAuctions
          : activeAuctions // ignore: cast_nullable_to_non_nullable
              as List<ActiveAuctionDto>,
      pendingWinnings: null == pendingWinnings
          ? _value.pendingWinnings
          : pendingWinnings // ignore: cast_nullable_to_non_nullable
              as List<PendingWinningDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LockedFundsSummaryDtoImplCopyWith<$Res>
    implements $LockedFundsSummaryDtoCopyWith<$Res> {
  factory _$$LockedFundsSummaryDtoImplCopyWith(
          _$LockedFundsSummaryDtoImpl value,
          $Res Function(_$LockedFundsSummaryDtoImpl) then) =
      __$$LockedFundsSummaryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ActiveAuctionDto> activeAuctions,
      List<PendingWinningDto> pendingWinnings});
}

/// @nodoc
class __$$LockedFundsSummaryDtoImplCopyWithImpl<$Res>
    extends _$LockedFundsSummaryDtoCopyWithImpl<$Res,
        _$LockedFundsSummaryDtoImpl>
    implements _$$LockedFundsSummaryDtoImplCopyWith<$Res> {
  __$$LockedFundsSummaryDtoImplCopyWithImpl(_$LockedFundsSummaryDtoImpl _value,
      $Res Function(_$LockedFundsSummaryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeAuctions = null,
    Object? pendingWinnings = null,
  }) {
    return _then(_$LockedFundsSummaryDtoImpl(
      activeAuctions: null == activeAuctions
          ? _value._activeAuctions
          : activeAuctions // ignore: cast_nullable_to_non_nullable
              as List<ActiveAuctionDto>,
      pendingWinnings: null == pendingWinnings
          ? _value._pendingWinnings
          : pendingWinnings // ignore: cast_nullable_to_non_nullable
              as List<PendingWinningDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LockedFundsSummaryDtoImpl extends _LockedFundsSummaryDto {
  const _$LockedFundsSummaryDtoImpl(
      {final List<ActiveAuctionDto> activeAuctions = const [],
      final List<PendingWinningDto> pendingWinnings = const []})
      : _activeAuctions = activeAuctions,
        _pendingWinnings = pendingWinnings,
        super._();

  factory _$LockedFundsSummaryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LockedFundsSummaryDtoImplFromJson(json);

  final List<ActiveAuctionDto> _activeAuctions;
  @override
  @JsonKey()
  List<ActiveAuctionDto> get activeAuctions {
    if (_activeAuctions is EqualUnmodifiableListView) return _activeAuctions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeAuctions);
  }

  final List<PendingWinningDto> _pendingWinnings;
  @override
  @JsonKey()
  List<PendingWinningDto> get pendingWinnings {
    if (_pendingWinnings is EqualUnmodifiableListView) return _pendingWinnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendingWinnings);
  }

  @override
  String toString() {
    return 'LockedFundsSummaryDto(activeAuctions: $activeAuctions, pendingWinnings: $pendingWinnings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LockedFundsSummaryDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._activeAuctions, _activeAuctions) &&
            const DeepCollectionEquality()
                .equals(other._pendingWinnings, _pendingWinnings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activeAuctions),
      const DeepCollectionEquality().hash(_pendingWinnings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LockedFundsSummaryDtoImplCopyWith<_$LockedFundsSummaryDtoImpl>
      get copyWith => __$$LockedFundsSummaryDtoImplCopyWithImpl<
          _$LockedFundsSummaryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LockedFundsSummaryDtoImplToJson(
      this,
    );
  }
}

abstract class _LockedFundsSummaryDto extends LockedFundsSummaryDto {
  const factory _LockedFundsSummaryDto(
          {final List<ActiveAuctionDto> activeAuctions,
          final List<PendingWinningDto> pendingWinnings}) =
      _$LockedFundsSummaryDtoImpl;
  const _LockedFundsSummaryDto._() : super._();

  factory _LockedFundsSummaryDto.fromJson(Map<String, dynamic> json) =
      _$LockedFundsSummaryDtoImpl.fromJson;

  @override
  List<ActiveAuctionDto> get activeAuctions;
  @override
  List<PendingWinningDto> get pendingWinnings;
  @override
  @JsonKey(ignore: true)
  _$$LockedFundsSummaryDtoImplCopyWith<_$LockedFundsSummaryDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ActiveAuctionDto _$ActiveAuctionDtoFromJson(Map<String, dynamic> json) {
  return _ActiveAuctionDto.fromJson(json);
}

/// @nodoc
mixin _$ActiveAuctionDto {
  num get amount => throw _privateConstructorUsedError;
  LotSummaryDto get lot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveAuctionDtoCopyWith<ActiveAuctionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveAuctionDtoCopyWith<$Res> {
  factory $ActiveAuctionDtoCopyWith(
          ActiveAuctionDto value, $Res Function(ActiveAuctionDto) then) =
      _$ActiveAuctionDtoCopyWithImpl<$Res, ActiveAuctionDto>;
  @useResult
  $Res call({num amount, LotSummaryDto lot});

  $LotSummaryDtoCopyWith<$Res> get lot;
}

/// @nodoc
class _$ActiveAuctionDtoCopyWithImpl<$Res, $Val extends ActiveAuctionDto>
    implements $ActiveAuctionDtoCopyWith<$Res> {
  _$ActiveAuctionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? lot = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as LotSummaryDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LotSummaryDtoCopyWith<$Res> get lot {
    return $LotSummaryDtoCopyWith<$Res>(_value.lot, (value) {
      return _then(_value.copyWith(lot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActiveAuctionDtoImplCopyWith<$Res>
    implements $ActiveAuctionDtoCopyWith<$Res> {
  factory _$$ActiveAuctionDtoImplCopyWith(_$ActiveAuctionDtoImpl value,
          $Res Function(_$ActiveAuctionDtoImpl) then) =
      __$$ActiveAuctionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num amount, LotSummaryDto lot});

  @override
  $LotSummaryDtoCopyWith<$Res> get lot;
}

/// @nodoc
class __$$ActiveAuctionDtoImplCopyWithImpl<$Res>
    extends _$ActiveAuctionDtoCopyWithImpl<$Res, _$ActiveAuctionDtoImpl>
    implements _$$ActiveAuctionDtoImplCopyWith<$Res> {
  __$$ActiveAuctionDtoImplCopyWithImpl(_$ActiveAuctionDtoImpl _value,
      $Res Function(_$ActiveAuctionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? lot = null,
  }) {
    return _then(_$ActiveAuctionDtoImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as LotSummaryDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveAuctionDtoImpl extends _ActiveAuctionDto {
  const _$ActiveAuctionDtoImpl({required this.amount, required this.lot})
      : super._();

  factory _$ActiveAuctionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveAuctionDtoImplFromJson(json);

  @override
  final num amount;
  @override
  final LotSummaryDto lot;

  @override
  String toString() {
    return 'ActiveAuctionDto(amount: $amount, lot: $lot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveAuctionDtoImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.lot, lot) || other.lot == lot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, lot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveAuctionDtoImplCopyWith<_$ActiveAuctionDtoImpl> get copyWith =>
      __$$ActiveAuctionDtoImplCopyWithImpl<_$ActiveAuctionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveAuctionDtoImplToJson(
      this,
    );
  }
}

abstract class _ActiveAuctionDto extends ActiveAuctionDto {
  const factory _ActiveAuctionDto(
      {required final num amount,
      required final LotSummaryDto lot}) = _$ActiveAuctionDtoImpl;
  const _ActiveAuctionDto._() : super._();

  factory _ActiveAuctionDto.fromJson(Map<String, dynamic> json) =
      _$ActiveAuctionDtoImpl.fromJson;

  @override
  num get amount;
  @override
  LotSummaryDto get lot;
  @override
  @JsonKey(ignore: true)
  _$$ActiveAuctionDtoImplCopyWith<_$ActiveAuctionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PendingWinningDto _$PendingWinningDtoFromJson(Map<String, dynamic> json) {
  return _PendingWinningDto.fromJson(json);
}

/// @nodoc
mixin _$PendingWinningDto {
  num get bidAmount => throw _privateConstructorUsedError;
  num get downAmount => throw _privateConstructorUsedError;
  LotSummaryDto get lot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PendingWinningDtoCopyWith<PendingWinningDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingWinningDtoCopyWith<$Res> {
  factory $PendingWinningDtoCopyWith(
          PendingWinningDto value, $Res Function(PendingWinningDto) then) =
      _$PendingWinningDtoCopyWithImpl<$Res, PendingWinningDto>;
  @useResult
  $Res call({num bidAmount, num downAmount, LotSummaryDto lot});

  $LotSummaryDtoCopyWith<$Res> get lot;
}

/// @nodoc
class _$PendingWinningDtoCopyWithImpl<$Res, $Val extends PendingWinningDto>
    implements $PendingWinningDtoCopyWith<$Res> {
  _$PendingWinningDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bidAmount = null,
    Object? downAmount = null,
    Object? lot = null,
  }) {
    return _then(_value.copyWith(
      bidAmount: null == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as num,
      downAmount: null == downAmount
          ? _value.downAmount
          : downAmount // ignore: cast_nullable_to_non_nullable
              as num,
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as LotSummaryDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LotSummaryDtoCopyWith<$Res> get lot {
    return $LotSummaryDtoCopyWith<$Res>(_value.lot, (value) {
      return _then(_value.copyWith(lot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PendingWinningDtoImplCopyWith<$Res>
    implements $PendingWinningDtoCopyWith<$Res> {
  factory _$$PendingWinningDtoImplCopyWith(_$PendingWinningDtoImpl value,
          $Res Function(_$PendingWinningDtoImpl) then) =
      __$$PendingWinningDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num bidAmount, num downAmount, LotSummaryDto lot});

  @override
  $LotSummaryDtoCopyWith<$Res> get lot;
}

/// @nodoc
class __$$PendingWinningDtoImplCopyWithImpl<$Res>
    extends _$PendingWinningDtoCopyWithImpl<$Res, _$PendingWinningDtoImpl>
    implements _$$PendingWinningDtoImplCopyWith<$Res> {
  __$$PendingWinningDtoImplCopyWithImpl(_$PendingWinningDtoImpl _value,
      $Res Function(_$PendingWinningDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bidAmount = null,
    Object? downAmount = null,
    Object? lot = null,
  }) {
    return _then(_$PendingWinningDtoImpl(
      bidAmount: null == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as num,
      downAmount: null == downAmount
          ? _value.downAmount
          : downAmount // ignore: cast_nullable_to_non_nullable
              as num,
      lot: null == lot
          ? _value.lot
          : lot // ignore: cast_nullable_to_non_nullable
              as LotSummaryDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PendingWinningDtoImpl extends _PendingWinningDto {
  const _$PendingWinningDtoImpl(
      {required this.bidAmount, required this.downAmount, required this.lot})
      : super._();

  factory _$PendingWinningDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PendingWinningDtoImplFromJson(json);

  @override
  final num bidAmount;
  @override
  final num downAmount;
  @override
  final LotSummaryDto lot;

  @override
  String toString() {
    return 'PendingWinningDto(bidAmount: $bidAmount, downAmount: $downAmount, lot: $lot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingWinningDtoImpl &&
            (identical(other.bidAmount, bidAmount) ||
                other.bidAmount == bidAmount) &&
            (identical(other.downAmount, downAmount) ||
                other.downAmount == downAmount) &&
            (identical(other.lot, lot) || other.lot == lot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bidAmount, downAmount, lot);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PendingWinningDtoImplCopyWith<_$PendingWinningDtoImpl> get copyWith =>
      __$$PendingWinningDtoImplCopyWithImpl<_$PendingWinningDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PendingWinningDtoImplToJson(
      this,
    );
  }
}

abstract class _PendingWinningDto extends PendingWinningDto {
  const factory _PendingWinningDto(
      {required final num bidAmount,
      required final num downAmount,
      required final LotSummaryDto lot}) = _$PendingWinningDtoImpl;
  const _PendingWinningDto._() : super._();

  factory _PendingWinningDto.fromJson(Map<String, dynamic> json) =
      _$PendingWinningDtoImpl.fromJson;

  @override
  num get bidAmount;
  @override
  num get downAmount;
  @override
  LotSummaryDto get lot;
  @override
  @JsonKey(ignore: true)
  _$$PendingWinningDtoImplCopyWith<_$PendingWinningDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LotSummaryDto _$LotSummaryDtoFromJson(Map<String, dynamic> json) {
  return _LotSummaryDto.fromJson(json);
}

/// @nodoc
mixin _$LotSummaryDto {
  int get id => throw _privateConstructorUsedError;
  String get streetLine1 => throw _privateConstructorUsedError;
  String? get streetLine2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String? get county => throw _privateConstructorUsedError;
  String get stateCode => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotSummaryDtoCopyWith<LotSummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotSummaryDtoCopyWith<$Res> {
  factory $LotSummaryDtoCopyWith(
          LotSummaryDto value, $Res Function(LotSummaryDto) then) =
      _$LotSummaryDtoCopyWithImpl<$Res, LotSummaryDto>;
  @useResult
  $Res call(
      {int id,
      String streetLine1,
      String? streetLine2,
      String city,
      String? county,
      String stateCode,
      String zipCode,
      String? countryCode});
}

/// @nodoc
class _$LotSummaryDtoCopyWithImpl<$Res, $Val extends LotSummaryDto>
    implements $LotSummaryDtoCopyWith<$Res> {
  _$LotSummaryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetLine1 = null,
    Object? streetLine2 = freezed,
    Object? city = null,
    Object? county = freezed,
    Object? stateCode = null,
    Object? zipCode = null,
    Object? countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      streetLine1: null == streetLine1
          ? _value.streetLine1
          : streetLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      streetLine2: freezed == streetLine2
          ? _value.streetLine2
          : streetLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotSummaryDtoImplCopyWith<$Res>
    implements $LotSummaryDtoCopyWith<$Res> {
  factory _$$LotSummaryDtoImplCopyWith(
          _$LotSummaryDtoImpl value, $Res Function(_$LotSummaryDtoImpl) then) =
      __$$LotSummaryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String streetLine1,
      String? streetLine2,
      String city,
      String? county,
      String stateCode,
      String zipCode,
      String? countryCode});
}

/// @nodoc
class __$$LotSummaryDtoImplCopyWithImpl<$Res>
    extends _$LotSummaryDtoCopyWithImpl<$Res, _$LotSummaryDtoImpl>
    implements _$$LotSummaryDtoImplCopyWith<$Res> {
  __$$LotSummaryDtoImplCopyWithImpl(
      _$LotSummaryDtoImpl _value, $Res Function(_$LotSummaryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetLine1 = null,
    Object? streetLine2 = freezed,
    Object? city = null,
    Object? county = freezed,
    Object? stateCode = null,
    Object? zipCode = null,
    Object? countryCode = freezed,
  }) {
    return _then(_$LotSummaryDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      streetLine1: null == streetLine1
          ? _value.streetLine1
          : streetLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      streetLine2: freezed == streetLine2
          ? _value.streetLine2
          : streetLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotSummaryDtoImpl extends _LotSummaryDto {
  const _$LotSummaryDtoImpl(
      {required this.id,
      required this.streetLine1,
      this.streetLine2,
      required this.city,
      this.county,
      required this.stateCode,
      required this.zipCode,
      this.countryCode})
      : super._();

  factory _$LotSummaryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotSummaryDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String streetLine1;
  @override
  final String? streetLine2;
  @override
  final String city;
  @override
  final String? county;
  @override
  final String stateCode;
  @override
  final String zipCode;
  @override
  final String? countryCode;

  @override
  String toString() {
    return 'LotSummaryDto(id: $id, streetLine1: $streetLine1, streetLine2: $streetLine2, city: $city, county: $county, stateCode: $stateCode, zipCode: $zipCode, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotSummaryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streetLine1, streetLine1) ||
                other.streetLine1 == streetLine1) &&
            (identical(other.streetLine2, streetLine2) ||
                other.streetLine2 == streetLine2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.county, county) || other.county == county) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, streetLine1, streetLine2,
      city, county, stateCode, zipCode, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotSummaryDtoImplCopyWith<_$LotSummaryDtoImpl> get copyWith =>
      __$$LotSummaryDtoImplCopyWithImpl<_$LotSummaryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotSummaryDtoImplToJson(
      this,
    );
  }
}

abstract class _LotSummaryDto extends LotSummaryDto {
  const factory _LotSummaryDto(
      {required final int id,
      required final String streetLine1,
      final String? streetLine2,
      required final String city,
      final String? county,
      required final String stateCode,
      required final String zipCode,
      final String? countryCode}) = _$LotSummaryDtoImpl;
  const _LotSummaryDto._() : super._();

  factory _LotSummaryDto.fromJson(Map<String, dynamic> json) =
      _$LotSummaryDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get streetLine1;
  @override
  String? get streetLine2;
  @override
  String get city;
  @override
  String? get county;
  @override
  String get stateCode;
  @override
  String get zipCode;
  @override
  String? get countryCode;
  @override
  @JsonKey(ignore: true)
  _$$LotSummaryDtoImplCopyWith<_$LotSummaryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
