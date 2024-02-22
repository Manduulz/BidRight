// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_bidder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuctionBidder _$AuctionBidderFromJson(Map<String, dynamic> json) {
  return _AuctionBidder.fromJson(json);
}

/// @nodoc
mixin _$AuctionBidder {
  String get paddleNumber => throw _privateConstructorUsedError;
  int? get purchaseProfileId => throw _privateConstructorUsedError;
  ParticipationType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuctionBidderCopyWith<AuctionBidder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionBidderCopyWith<$Res> {
  factory $AuctionBidderCopyWith(
          AuctionBidder value, $Res Function(AuctionBidder) then) =
      _$AuctionBidderCopyWithImpl<$Res, AuctionBidder>;
  @useResult
  $Res call(
      {String paddleNumber, int? purchaseProfileId, ParticipationType? type});
}

/// @nodoc
class _$AuctionBidderCopyWithImpl<$Res, $Val extends AuctionBidder>
    implements $AuctionBidderCopyWith<$Res> {
  _$AuctionBidderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paddleNumber = null,
    Object? purchaseProfileId = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      paddleNumber: null == paddleNumber
          ? _value.paddleNumber
          : paddleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseProfileId: freezed == purchaseProfileId
          ? _value.purchaseProfileId
          : purchaseProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ParticipationType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuctionBidderImplCopyWith<$Res>
    implements $AuctionBidderCopyWith<$Res> {
  factory _$$AuctionBidderImplCopyWith(
          _$AuctionBidderImpl value, $Res Function(_$AuctionBidderImpl) then) =
      __$$AuctionBidderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String paddleNumber, int? purchaseProfileId, ParticipationType? type});
}

/// @nodoc
class __$$AuctionBidderImplCopyWithImpl<$Res>
    extends _$AuctionBidderCopyWithImpl<$Res, _$AuctionBidderImpl>
    implements _$$AuctionBidderImplCopyWith<$Res> {
  __$$AuctionBidderImplCopyWithImpl(
      _$AuctionBidderImpl _value, $Res Function(_$AuctionBidderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paddleNumber = null,
    Object? purchaseProfileId = freezed,
    Object? type = freezed,
  }) {
    return _then(_$AuctionBidderImpl(
      paddleNumber: null == paddleNumber
          ? _value.paddleNumber
          : paddleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseProfileId: freezed == purchaseProfileId
          ? _value.purchaseProfileId
          : purchaseProfileId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ParticipationType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionBidderImpl extends _AuctionBidder {
  const _$AuctionBidderImpl(
      {required this.paddleNumber, this.purchaseProfileId, this.type})
      : super._();

  factory _$AuctionBidderImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionBidderImplFromJson(json);

  @override
  final String paddleNumber;
  @override
  final int? purchaseProfileId;
  @override
  final ParticipationType? type;

  @override
  String toString() {
    return 'AuctionBidder(paddleNumber: $paddleNumber, purchaseProfileId: $purchaseProfileId, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionBidderImpl &&
            (identical(other.paddleNumber, paddleNumber) ||
                other.paddleNumber == paddleNumber) &&
            (identical(other.purchaseProfileId, purchaseProfileId) ||
                other.purchaseProfileId == purchaseProfileId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, paddleNumber, purchaseProfileId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionBidderImplCopyWith<_$AuctionBidderImpl> get copyWith =>
      __$$AuctionBidderImplCopyWithImpl<_$AuctionBidderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionBidderImplToJson(
      this,
    );
  }
}

abstract class _AuctionBidder extends AuctionBidder {
  const factory _AuctionBidder(
      {required final String paddleNumber,
      final int? purchaseProfileId,
      final ParticipationType? type}) = _$AuctionBidderImpl;
  const _AuctionBidder._() : super._();

  factory _AuctionBidder.fromJson(Map<String, dynamic> json) =
      _$AuctionBidderImpl.fromJson;

  @override
  String get paddleNumber;
  @override
  int? get purchaseProfileId;
  @override
  ParticipationType? get type;
  @override
  @JsonKey(ignore: true)
  _$$AuctionBidderImplCopyWith<_$AuctionBidderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LotBidder _$LotBidderFromJson(Map<String, dynamic> json) {
  return _LotBidder.fromJson(json);
}

/// @nodoc
mixin _$LotBidder {
  num? get amount => throw _privateConstructorUsedError;
  String? get balanceType => throw _privateConstructorUsedError;
  DateTime? get leftDate => throw _privateConstructorUsedError;
  DateTime? get enteredDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotBidderCopyWith<LotBidder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotBidderCopyWith<$Res> {
  factory $LotBidderCopyWith(LotBidder value, $Res Function(LotBidder) then) =
      _$LotBidderCopyWithImpl<$Res, LotBidder>;
  @useResult
  $Res call(
      {num? amount,
      String? balanceType,
      DateTime? leftDate,
      DateTime? enteredDate});
}

/// @nodoc
class _$LotBidderCopyWithImpl<$Res, $Val extends LotBidder>
    implements $LotBidderCopyWith<$Res> {
  _$LotBidderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? balanceType = freezed,
    Object? leftDate = freezed,
    Object? enteredDate = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      balanceType: freezed == balanceType
          ? _value.balanceType
          : balanceType // ignore: cast_nullable_to_non_nullable
              as String?,
      leftDate: freezed == leftDate
          ? _value.leftDate
          : leftDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      enteredDate: freezed == enteredDate
          ? _value.enteredDate
          : enteredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotBidderImplCopyWith<$Res>
    implements $LotBidderCopyWith<$Res> {
  factory _$$LotBidderImplCopyWith(
          _$LotBidderImpl value, $Res Function(_$LotBidderImpl) then) =
      __$$LotBidderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? amount,
      String? balanceType,
      DateTime? leftDate,
      DateTime? enteredDate});
}

/// @nodoc
class __$$LotBidderImplCopyWithImpl<$Res>
    extends _$LotBidderCopyWithImpl<$Res, _$LotBidderImpl>
    implements _$$LotBidderImplCopyWith<$Res> {
  __$$LotBidderImplCopyWithImpl(
      _$LotBidderImpl _value, $Res Function(_$LotBidderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? balanceType = freezed,
    Object? leftDate = freezed,
    Object? enteredDate = freezed,
  }) {
    return _then(_$LotBidderImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      balanceType: freezed == balanceType
          ? _value.balanceType
          : balanceType // ignore: cast_nullable_to_non_nullable
              as String?,
      leftDate: freezed == leftDate
          ? _value.leftDate
          : leftDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      enteredDate: freezed == enteredDate
          ? _value.enteredDate
          : enteredDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotBidderImpl extends _LotBidder {
  const _$LotBidderImpl(
      {this.amount, this.balanceType, this.leftDate, this.enteredDate})
      : super._();

  factory _$LotBidderImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotBidderImplFromJson(json);

  @override
  final num? amount;
  @override
  final String? balanceType;
  @override
  final DateTime? leftDate;
  @override
  final DateTime? enteredDate;

  @override
  String toString() {
    return 'LotBidder(amount: $amount, balanceType: $balanceType, leftDate: $leftDate, enteredDate: $enteredDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotBidderImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.balanceType, balanceType) ||
                other.balanceType == balanceType) &&
            (identical(other.leftDate, leftDate) ||
                other.leftDate == leftDate) &&
            (identical(other.enteredDate, enteredDate) ||
                other.enteredDate == enteredDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, balanceType, leftDate, enteredDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotBidderImplCopyWith<_$LotBidderImpl> get copyWith =>
      __$$LotBidderImplCopyWithImpl<_$LotBidderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotBidderImplToJson(
      this,
    );
  }
}

abstract class _LotBidder extends LotBidder {
  const factory _LotBidder(
      {final num? amount,
      final String? balanceType,
      final DateTime? leftDate,
      final DateTime? enteredDate}) = _$LotBidderImpl;
  const _LotBidder._() : super._();

  factory _LotBidder.fromJson(Map<String, dynamic> json) =
      _$LotBidderImpl.fromJson;

  @override
  num? get amount;
  @override
  String? get balanceType;
  @override
  DateTime? get leftDate;
  @override
  DateTime? get enteredDate;
  @override
  @JsonKey(ignore: true)
  _$$LotBidderImplCopyWith<_$LotBidderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Bid _$BidFromJson(Map<String, dynamic> json) {
  return _Bid.fromJson(json);
}

/// @nodoc
mixin _$Bid {
  int get id => throw _privateConstructorUsedError;
  String get paddleNumber => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BidCopyWith<Bid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidCopyWith<$Res> {
  factory $BidCopyWith(Bid value, $Res Function(Bid) then) =
      _$BidCopyWithImpl<$Res, Bid>;
  @useResult
  $Res call({int id, String paddleNumber, num amount, DateTime? createdDate});
}

/// @nodoc
class _$BidCopyWithImpl<$Res, $Val extends Bid> implements $BidCopyWith<$Res> {
  _$BidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paddleNumber = null,
    Object? amount = null,
    Object? createdDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      paddleNumber: null == paddleNumber
          ? _value.paddleNumber
          : paddleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BidImplCopyWith<$Res> implements $BidCopyWith<$Res> {
  factory _$$BidImplCopyWith(_$BidImpl value, $Res Function(_$BidImpl) then) =
      __$$BidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String paddleNumber, num amount, DateTime? createdDate});
}

/// @nodoc
class __$$BidImplCopyWithImpl<$Res> extends _$BidCopyWithImpl<$Res, _$BidImpl>
    implements _$$BidImplCopyWith<$Res> {
  __$$BidImplCopyWithImpl(_$BidImpl _value, $Res Function(_$BidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paddleNumber = null,
    Object? amount = null,
    Object? createdDate = freezed,
  }) {
    return _then(_$BidImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      paddleNumber: null == paddleNumber
          ? _value.paddleNumber
          : paddleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BidImpl extends _Bid {
  const _$BidImpl(
      {required this.id,
      required this.paddleNumber,
      required this.amount,
      this.createdDate})
      : super._();

  factory _$BidImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidImplFromJson(json);

  @override
  final int id;
  @override
  final String paddleNumber;
  @override
  final num amount;
  @override
  final DateTime? createdDate;

  @override
  String toString() {
    return 'Bid(id: $id, paddleNumber: $paddleNumber, amount: $amount, createdDate: $createdDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paddleNumber, paddleNumber) ||
                other.paddleNumber == paddleNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, paddleNumber, amount, createdDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BidImplCopyWith<_$BidImpl> get copyWith =>
      __$$BidImplCopyWithImpl<_$BidImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidImplToJson(
      this,
    );
  }
}

abstract class _Bid extends Bid {
  const factory _Bid(
      {required final int id,
      required final String paddleNumber,
      required final num amount,
      final DateTime? createdDate}) = _$BidImpl;
  const _Bid._() : super._();

  factory _Bid.fromJson(Map<String, dynamic> json) = _$BidImpl.fromJson;

  @override
  int get id;
  @override
  String get paddleNumber;
  @override
  num get amount;
  @override
  DateTime? get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$BidImplCopyWith<_$BidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
