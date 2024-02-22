// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'winnings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PastWinningDto _$PastWinningDtoFromJson(Map<String, dynamic> json) {
  return _PastWinningDto.fromJson(json);
}

/// @nodoc
mixin _$PastWinningDto {
  @JsonKey(name: 'id')
  int get lotId => throw _privateConstructorUsedError;
  String get streetLine1 => throw _privateConstructorUsedError;
  String? get streetLine2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String? get county => throw _privateConstructorUsedError;
  String get stateCode => throw _privateConstructorUsedError;
  String get zipCode => throw _privateConstructorUsedError;
  num get winnerBidAmount => throw _privateConstructorUsedError;
  DateTime get winnerCreatedDate => throw _privateConstructorUsedError;
  String? get auctionHostName => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: CaseStatus.unknown)
  CaseStatus get status => throw _privateConstructorUsedError;
  DateTime? get depositReceivedDate => throw _privateConstructorUsedError;
  DateTime? get paymentReceivedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PastWinningDtoCopyWith<PastWinningDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PastWinningDtoCopyWith<$Res> {
  factory $PastWinningDtoCopyWith(
          PastWinningDto value, $Res Function(PastWinningDto) then) =
      _$PastWinningDtoCopyWithImpl<$Res, PastWinningDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int lotId,
      String streetLine1,
      String? streetLine2,
      String city,
      String? county,
      String stateCode,
      String zipCode,
      num winnerBidAmount,
      DateTime winnerCreatedDate,
      String? auctionHostName,
      @JsonKey(unknownEnumValue: CaseStatus.unknown) CaseStatus status,
      DateTime? depositReceivedDate,
      DateTime? paymentReceivedDate});
}

/// @nodoc
class _$PastWinningDtoCopyWithImpl<$Res, $Val extends PastWinningDto>
    implements $PastWinningDtoCopyWith<$Res> {
  _$PastWinningDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? streetLine1 = null,
    Object? streetLine2 = freezed,
    Object? city = null,
    Object? county = freezed,
    Object? stateCode = null,
    Object? zipCode = null,
    Object? winnerBidAmount = null,
    Object? winnerCreatedDate = null,
    Object? auctionHostName = freezed,
    Object? status = null,
    Object? depositReceivedDate = freezed,
    Object? paymentReceivedDate = freezed,
  }) {
    return _then(_value.copyWith(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
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
      winnerBidAmount: null == winnerBidAmount
          ? _value.winnerBidAmount
          : winnerBidAmount // ignore: cast_nullable_to_non_nullable
              as num,
      winnerCreatedDate: null == winnerCreatedDate
          ? _value.winnerCreatedDate
          : winnerCreatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      auctionHostName: freezed == auctionHostName
          ? _value.auctionHostName
          : auctionHostName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CaseStatus,
      depositReceivedDate: freezed == depositReceivedDate
          ? _value.depositReceivedDate
          : depositReceivedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentReceivedDate: freezed == paymentReceivedDate
          ? _value.paymentReceivedDate
          : paymentReceivedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PastWinningDtoImplCopyWith<$Res>
    implements $PastWinningDtoCopyWith<$Res> {
  factory _$$PastWinningDtoImplCopyWith(_$PastWinningDtoImpl value,
          $Res Function(_$PastWinningDtoImpl) then) =
      __$$PastWinningDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int lotId,
      String streetLine1,
      String? streetLine2,
      String city,
      String? county,
      String stateCode,
      String zipCode,
      num winnerBidAmount,
      DateTime winnerCreatedDate,
      String? auctionHostName,
      @JsonKey(unknownEnumValue: CaseStatus.unknown) CaseStatus status,
      DateTime? depositReceivedDate,
      DateTime? paymentReceivedDate});
}

/// @nodoc
class __$$PastWinningDtoImplCopyWithImpl<$Res>
    extends _$PastWinningDtoCopyWithImpl<$Res, _$PastWinningDtoImpl>
    implements _$$PastWinningDtoImplCopyWith<$Res> {
  __$$PastWinningDtoImplCopyWithImpl(
      _$PastWinningDtoImpl _value, $Res Function(_$PastWinningDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? streetLine1 = null,
    Object? streetLine2 = freezed,
    Object? city = null,
    Object? county = freezed,
    Object? stateCode = null,
    Object? zipCode = null,
    Object? winnerBidAmount = null,
    Object? winnerCreatedDate = null,
    Object? auctionHostName = freezed,
    Object? status = null,
    Object? depositReceivedDate = freezed,
    Object? paymentReceivedDate = freezed,
  }) {
    return _then(_$PastWinningDtoImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
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
      winnerBidAmount: null == winnerBidAmount
          ? _value.winnerBidAmount
          : winnerBidAmount // ignore: cast_nullable_to_non_nullable
              as num,
      winnerCreatedDate: null == winnerCreatedDate
          ? _value.winnerCreatedDate
          : winnerCreatedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      auctionHostName: freezed == auctionHostName
          ? _value.auctionHostName
          : auctionHostName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CaseStatus,
      depositReceivedDate: freezed == depositReceivedDate
          ? _value.depositReceivedDate
          : depositReceivedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentReceivedDate: freezed == paymentReceivedDate
          ? _value.paymentReceivedDate
          : paymentReceivedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PastWinningDtoImpl extends _PastWinningDto {
  const _$PastWinningDtoImpl(
      {@JsonKey(name: 'id')
          required this.lotId,
      required this.streetLine1,
      this.streetLine2,
      required this.city,
      this.county,
      required this.stateCode,
      required this.zipCode,
      required this.winnerBidAmount,
      required this.winnerCreatedDate,
      this.auctionHostName,
      @JsonKey(unknownEnumValue: CaseStatus.unknown)
          this.status = CaseStatus.unknown,
      this.depositReceivedDate,
      this.paymentReceivedDate})
      : super._();

  factory _$PastWinningDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PastWinningDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int lotId;
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
  final num winnerBidAmount;
  @override
  final DateTime winnerCreatedDate;
  @override
  final String? auctionHostName;
  @override
  @JsonKey(unknownEnumValue: CaseStatus.unknown)
  final CaseStatus status;
  @override
  final DateTime? depositReceivedDate;
  @override
  final DateTime? paymentReceivedDate;

  @override
  String toString() {
    return 'PastWinningDto(lotId: $lotId, streetLine1: $streetLine1, streetLine2: $streetLine2, city: $city, county: $county, stateCode: $stateCode, zipCode: $zipCode, winnerBidAmount: $winnerBidAmount, winnerCreatedDate: $winnerCreatedDate, auctionHostName: $auctionHostName, status: $status, depositReceivedDate: $depositReceivedDate, paymentReceivedDate: $paymentReceivedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PastWinningDtoImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.streetLine1, streetLine1) ||
                other.streetLine1 == streetLine1) &&
            (identical(other.streetLine2, streetLine2) ||
                other.streetLine2 == streetLine2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.county, county) || other.county == county) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.winnerBidAmount, winnerBidAmount) ||
                other.winnerBidAmount == winnerBidAmount) &&
            (identical(other.winnerCreatedDate, winnerCreatedDate) ||
                other.winnerCreatedDate == winnerCreatedDate) &&
            (identical(other.auctionHostName, auctionHostName) ||
                other.auctionHostName == auctionHostName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.depositReceivedDate, depositReceivedDate) ||
                other.depositReceivedDate == depositReceivedDate) &&
            (identical(other.paymentReceivedDate, paymentReceivedDate) ||
                other.paymentReceivedDate == paymentReceivedDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lotId,
      streetLine1,
      streetLine2,
      city,
      county,
      stateCode,
      zipCode,
      winnerBidAmount,
      winnerCreatedDate,
      auctionHostName,
      status,
      depositReceivedDate,
      paymentReceivedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PastWinningDtoImplCopyWith<_$PastWinningDtoImpl> get copyWith =>
      __$$PastWinningDtoImplCopyWithImpl<_$PastWinningDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PastWinningDtoImplToJson(
      this,
    );
  }
}

abstract class _PastWinningDto extends PastWinningDto {
  const factory _PastWinningDto(
      {@JsonKey(name: 'id') required final int lotId,
      required final String streetLine1,
      final String? streetLine2,
      required final String city,
      final String? county,
      required final String stateCode,
      required final String zipCode,
      required final num winnerBidAmount,
      required final DateTime winnerCreatedDate,
      final String? auctionHostName,
      @JsonKey(unknownEnumValue: CaseStatus.unknown) final CaseStatus status,
      final DateTime? depositReceivedDate,
      final DateTime? paymentReceivedDate}) = _$PastWinningDtoImpl;
  const _PastWinningDto._() : super._();

  factory _PastWinningDto.fromJson(Map<String, dynamic> json) =
      _$PastWinningDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get lotId;
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
  num get winnerBidAmount;
  @override
  DateTime get winnerCreatedDate;
  @override
  String? get auctionHostName;
  @override
  @JsonKey(unknownEnumValue: CaseStatus.unknown)
  CaseStatus get status;
  @override
  DateTime? get depositReceivedDate;
  @override
  DateTime? get paymentReceivedDate;
  @override
  @JsonKey(ignore: true)
  _$$PastWinningDtoImplCopyWith<_$PastWinningDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PastWinningDetailDto _$PastWinningDetailDtoFromJson(Map<String, dynamic> json) {
  return _PastWinningDetailDto.fromJson(json);
}

/// @nodoc
mixin _$PastWinningDetailDto {
  @JsonKey(name: 'id')
  int get lotId => throw _privateConstructorUsedError;
  int get auctionId => throw _privateConstructorUsedError;
  DateTime? get depositReceivedDate => throw _privateConstructorUsedError;
  DateTime? get paymentReceivedDate => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: CaseStatus.unknown)
  CaseStatus get status => throw _privateConstructorUsedError;
  int get caseId => throw _privateConstructorUsedError;
  String get caseFirmName => throw _privateConstructorUsedError;
  String get caseFileNumber => throw _privateConstructorUsedError;
  String get caseNumber => throw _privateConstructorUsedError;
  String get caseDeedDelivery => throw _privateConstructorUsedError;
  List<PropertyDto> get properties => throw _privateConstructorUsedError;
  String get bidderUserName => throw _privateConstructorUsedError;
  WinnerDetailDto get winner => throw _privateConstructorUsedError;
  DateTime get startedTime => throw _privateConstructorUsedError;
  DateTime get stoppedTime => throw _privateConstructorUsedError;
  num get openingPrice => throw _privateConstructorUsedError;
  num get requiredDown => throw _privateConstructorUsedError;
  int get numberOfBidders => throw _privateConstructorUsedError;
  int get numberOfBids => throw _privateConstructorUsedError;
  int get lotNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'winnerCreatedDate')
  DateTime get createdDate => throw _privateConstructorUsedError;
  AuctionHostCompany get auctionHost => throw _privateConstructorUsedError;
  List<DocumentSummary> get documents => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PastWinningDetailDtoCopyWith<PastWinningDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PastWinningDetailDtoCopyWith<$Res> {
  factory $PastWinningDetailDtoCopyWith(PastWinningDetailDto value,
          $Res Function(PastWinningDetailDto) then) =
      _$PastWinningDetailDtoCopyWithImpl<$Res, PastWinningDetailDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int lotId,
      int auctionId,
      DateTime? depositReceivedDate,
      DateTime? paymentReceivedDate,
      @JsonKey(unknownEnumValue: CaseStatus.unknown) CaseStatus status,
      int caseId,
      String caseFirmName,
      String caseFileNumber,
      String caseNumber,
      String caseDeedDelivery,
      List<PropertyDto> properties,
      String bidderUserName,
      WinnerDetailDto winner,
      DateTime startedTime,
      DateTime stoppedTime,
      num openingPrice,
      num requiredDown,
      int numberOfBidders,
      int numberOfBids,
      int lotNumber,
      @JsonKey(name: 'winnerCreatedDate') DateTime createdDate,
      AuctionHostCompany auctionHost,
      List<DocumentSummary> documents});

  $WinnerDetailDtoCopyWith<$Res> get winner;
  $AuctionHostCompanyCopyWith<$Res> get auctionHost;
}

/// @nodoc
class _$PastWinningDetailDtoCopyWithImpl<$Res,
        $Val extends PastWinningDetailDto>
    implements $PastWinningDetailDtoCopyWith<$Res> {
  _$PastWinningDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? auctionId = null,
    Object? depositReceivedDate = freezed,
    Object? paymentReceivedDate = freezed,
    Object? status = null,
    Object? caseId = null,
    Object? caseFirmName = null,
    Object? caseFileNumber = null,
    Object? caseNumber = null,
    Object? caseDeedDelivery = null,
    Object? properties = null,
    Object? bidderUserName = null,
    Object? winner = null,
    Object? startedTime = null,
    Object? stoppedTime = null,
    Object? openingPrice = null,
    Object? requiredDown = null,
    Object? numberOfBidders = null,
    Object? numberOfBids = null,
    Object? lotNumber = null,
    Object? createdDate = null,
    Object? auctionHost = null,
    Object? documents = null,
  }) {
    return _then(_value.copyWith(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int,
      depositReceivedDate: freezed == depositReceivedDate
          ? _value.depositReceivedDate
          : depositReceivedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentReceivedDate: freezed == paymentReceivedDate
          ? _value.paymentReceivedDate
          : paymentReceivedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CaseStatus,
      caseId: null == caseId
          ? _value.caseId
          : caseId // ignore: cast_nullable_to_non_nullable
              as int,
      caseFirmName: null == caseFirmName
          ? _value.caseFirmName
          : caseFirmName // ignore: cast_nullable_to_non_nullable
              as String,
      caseFileNumber: null == caseFileNumber
          ? _value.caseFileNumber
          : caseFileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      caseNumber: null == caseNumber
          ? _value.caseNumber
          : caseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      caseDeedDelivery: null == caseDeedDelivery
          ? _value.caseDeedDelivery
          : caseDeedDelivery // ignore: cast_nullable_to_non_nullable
              as String,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<PropertyDto>,
      bidderUserName: null == bidderUserName
          ? _value.bidderUserName
          : bidderUserName // ignore: cast_nullable_to_non_nullable
              as String,
      winner: null == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as WinnerDetailDto,
      startedTime: null == startedTime
          ? _value.startedTime
          : startedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stoppedTime: null == stoppedTime
          ? _value.stoppedTime
          : stoppedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      openingPrice: null == openingPrice
          ? _value.openingPrice
          : openingPrice // ignore: cast_nullable_to_non_nullable
              as num,
      requiredDown: null == requiredDown
          ? _value.requiredDown
          : requiredDown // ignore: cast_nullable_to_non_nullable
              as num,
      numberOfBidders: null == numberOfBidders
          ? _value.numberOfBidders
          : numberOfBidders // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfBids: null == numberOfBids
          ? _value.numberOfBids
          : numberOfBids // ignore: cast_nullable_to_non_nullable
              as int,
      lotNumber: null == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      auctionHost: null == auctionHost
          ? _value.auctionHost
          : auctionHost // ignore: cast_nullable_to_non_nullable
              as AuctionHostCompany,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<DocumentSummary>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WinnerDetailDtoCopyWith<$Res> get winner {
    return $WinnerDetailDtoCopyWith<$Res>(_value.winner, (value) {
      return _then(_value.copyWith(winner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuctionHostCompanyCopyWith<$Res> get auctionHost {
    return $AuctionHostCompanyCopyWith<$Res>(_value.auctionHost, (value) {
      return _then(_value.copyWith(auctionHost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PastWinningDetailDtoImplCopyWith<$Res>
    implements $PastWinningDetailDtoCopyWith<$Res> {
  factory _$$PastWinningDetailDtoImplCopyWith(_$PastWinningDetailDtoImpl value,
          $Res Function(_$PastWinningDetailDtoImpl) then) =
      __$$PastWinningDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int lotId,
      int auctionId,
      DateTime? depositReceivedDate,
      DateTime? paymentReceivedDate,
      @JsonKey(unknownEnumValue: CaseStatus.unknown) CaseStatus status,
      int caseId,
      String caseFirmName,
      String caseFileNumber,
      String caseNumber,
      String caseDeedDelivery,
      List<PropertyDto> properties,
      String bidderUserName,
      WinnerDetailDto winner,
      DateTime startedTime,
      DateTime stoppedTime,
      num openingPrice,
      num requiredDown,
      int numberOfBidders,
      int numberOfBids,
      int lotNumber,
      @JsonKey(name: 'winnerCreatedDate') DateTime createdDate,
      AuctionHostCompany auctionHost,
      List<DocumentSummary> documents});

  @override
  $WinnerDetailDtoCopyWith<$Res> get winner;
  @override
  $AuctionHostCompanyCopyWith<$Res> get auctionHost;
}

/// @nodoc
class __$$PastWinningDetailDtoImplCopyWithImpl<$Res>
    extends _$PastWinningDetailDtoCopyWithImpl<$Res, _$PastWinningDetailDtoImpl>
    implements _$$PastWinningDetailDtoImplCopyWith<$Res> {
  __$$PastWinningDetailDtoImplCopyWithImpl(_$PastWinningDetailDtoImpl _value,
      $Res Function(_$PastWinningDetailDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotId = null,
    Object? auctionId = null,
    Object? depositReceivedDate = freezed,
    Object? paymentReceivedDate = freezed,
    Object? status = null,
    Object? caseId = null,
    Object? caseFirmName = null,
    Object? caseFileNumber = null,
    Object? caseNumber = null,
    Object? caseDeedDelivery = null,
    Object? properties = null,
    Object? bidderUserName = null,
    Object? winner = null,
    Object? startedTime = null,
    Object? stoppedTime = null,
    Object? openingPrice = null,
    Object? requiredDown = null,
    Object? numberOfBidders = null,
    Object? numberOfBids = null,
    Object? lotNumber = null,
    Object? createdDate = null,
    Object? auctionHost = null,
    Object? documents = null,
  }) {
    return _then(_$PastWinningDetailDtoImpl(
      lotId: null == lotId
          ? _value.lotId
          : lotId // ignore: cast_nullable_to_non_nullable
              as int,
      auctionId: null == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int,
      depositReceivedDate: freezed == depositReceivedDate
          ? _value.depositReceivedDate
          : depositReceivedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentReceivedDate: freezed == paymentReceivedDate
          ? _value.paymentReceivedDate
          : paymentReceivedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CaseStatus,
      caseId: null == caseId
          ? _value.caseId
          : caseId // ignore: cast_nullable_to_non_nullable
              as int,
      caseFirmName: null == caseFirmName
          ? _value.caseFirmName
          : caseFirmName // ignore: cast_nullable_to_non_nullable
              as String,
      caseFileNumber: null == caseFileNumber
          ? _value.caseFileNumber
          : caseFileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      caseNumber: null == caseNumber
          ? _value.caseNumber
          : caseNumber // ignore: cast_nullable_to_non_nullable
              as String,
      caseDeedDelivery: null == caseDeedDelivery
          ? _value.caseDeedDelivery
          : caseDeedDelivery // ignore: cast_nullable_to_non_nullable
              as String,
      properties: null == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as List<PropertyDto>,
      bidderUserName: null == bidderUserName
          ? _value.bidderUserName
          : bidderUserName // ignore: cast_nullable_to_non_nullable
              as String,
      winner: null == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as WinnerDetailDto,
      startedTime: null == startedTime
          ? _value.startedTime
          : startedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stoppedTime: null == stoppedTime
          ? _value.stoppedTime
          : stoppedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      openingPrice: null == openingPrice
          ? _value.openingPrice
          : openingPrice // ignore: cast_nullable_to_non_nullable
              as num,
      requiredDown: null == requiredDown
          ? _value.requiredDown
          : requiredDown // ignore: cast_nullable_to_non_nullable
              as num,
      numberOfBidders: null == numberOfBidders
          ? _value.numberOfBidders
          : numberOfBidders // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfBids: null == numberOfBids
          ? _value.numberOfBids
          : numberOfBids // ignore: cast_nullable_to_non_nullable
              as int,
      lotNumber: null == lotNumber
          ? _value.lotNumber
          : lotNumber // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      auctionHost: null == auctionHost
          ? _value.auctionHost
          : auctionHost // ignore: cast_nullable_to_non_nullable
              as AuctionHostCompany,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<DocumentSummary>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PastWinningDetailDtoImpl extends _PastWinningDetailDto {
  const _$PastWinningDetailDtoImpl(
      {@JsonKey(name: 'id')
          required this.lotId,
      required this.auctionId,
      this.depositReceivedDate,
      this.paymentReceivedDate,
      @JsonKey(unknownEnumValue: CaseStatus.unknown)
          this.status = CaseStatus.unknown,
      required this.caseId,
      this.caseFirmName = '',
      this.caseFileNumber = '',
      this.caseNumber = '',
      this.caseDeedDelivery = '',
      final List<PropertyDto> properties = const [],
      required this.bidderUserName,
      required this.winner,
      required this.startedTime,
      required this.stoppedTime,
      required this.openingPrice,
      required this.requiredDown,
      required this.numberOfBidders,
      required this.numberOfBids,
      required this.lotNumber,
      @JsonKey(name: 'winnerCreatedDate')
          required this.createdDate,
      required this.auctionHost,
      final List<DocumentSummary> documents = const []})
      : _properties = properties,
        _documents = documents,
        super._();

  factory _$PastWinningDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PastWinningDetailDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int lotId;
  @override
  final int auctionId;
  @override
  final DateTime? depositReceivedDate;
  @override
  final DateTime? paymentReceivedDate;
  @override
  @JsonKey(unknownEnumValue: CaseStatus.unknown)
  final CaseStatus status;
  @override
  final int caseId;
  @override
  @JsonKey()
  final String caseFirmName;
  @override
  @JsonKey()
  final String caseFileNumber;
  @override
  @JsonKey()
  final String caseNumber;
  @override
  @JsonKey()
  final String caseDeedDelivery;
  final List<PropertyDto> _properties;
  @override
  @JsonKey()
  List<PropertyDto> get properties {
    if (_properties is EqualUnmodifiableListView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_properties);
  }

  @override
  final String bidderUserName;
  @override
  final WinnerDetailDto winner;
  @override
  final DateTime startedTime;
  @override
  final DateTime stoppedTime;
  @override
  final num openingPrice;
  @override
  final num requiredDown;
  @override
  final int numberOfBidders;
  @override
  final int numberOfBids;
  @override
  final int lotNumber;
  @override
  @JsonKey(name: 'winnerCreatedDate')
  final DateTime createdDate;
  @override
  final AuctionHostCompany auctionHost;
  final List<DocumentSummary> _documents;
  @override
  @JsonKey()
  List<DocumentSummary> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  String toString() {
    return 'PastWinningDetailDto(lotId: $lotId, auctionId: $auctionId, depositReceivedDate: $depositReceivedDate, paymentReceivedDate: $paymentReceivedDate, status: $status, caseId: $caseId, caseFirmName: $caseFirmName, caseFileNumber: $caseFileNumber, caseNumber: $caseNumber, caseDeedDelivery: $caseDeedDelivery, properties: $properties, bidderUserName: $bidderUserName, winner: $winner, startedTime: $startedTime, stoppedTime: $stoppedTime, openingPrice: $openingPrice, requiredDown: $requiredDown, numberOfBidders: $numberOfBidders, numberOfBids: $numberOfBids, lotNumber: $lotNumber, createdDate: $createdDate, auctionHost: $auctionHost, documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PastWinningDetailDtoImpl &&
            (identical(other.lotId, lotId) || other.lotId == lotId) &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.depositReceivedDate, depositReceivedDate) ||
                other.depositReceivedDate == depositReceivedDate) &&
            (identical(other.paymentReceivedDate, paymentReceivedDate) ||
                other.paymentReceivedDate == paymentReceivedDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.caseId, caseId) || other.caseId == caseId) &&
            (identical(other.caseFirmName, caseFirmName) ||
                other.caseFirmName == caseFirmName) &&
            (identical(other.caseFileNumber, caseFileNumber) ||
                other.caseFileNumber == caseFileNumber) &&
            (identical(other.caseNumber, caseNumber) ||
                other.caseNumber == caseNumber) &&
            (identical(other.caseDeedDelivery, caseDeedDelivery) ||
                other.caseDeedDelivery == caseDeedDelivery) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.bidderUserName, bidderUserName) ||
                other.bidderUserName == bidderUserName) &&
            (identical(other.winner, winner) || other.winner == winner) &&
            (identical(other.startedTime, startedTime) ||
                other.startedTime == startedTime) &&
            (identical(other.stoppedTime, stoppedTime) ||
                other.stoppedTime == stoppedTime) &&
            (identical(other.openingPrice, openingPrice) ||
                other.openingPrice == openingPrice) &&
            (identical(other.requiredDown, requiredDown) ||
                other.requiredDown == requiredDown) &&
            (identical(other.numberOfBidders, numberOfBidders) ||
                other.numberOfBidders == numberOfBidders) &&
            (identical(other.numberOfBids, numberOfBids) ||
                other.numberOfBids == numberOfBids) &&
            (identical(other.lotNumber, lotNumber) ||
                other.lotNumber == lotNumber) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.auctionHost, auctionHost) ||
                other.auctionHost == auctionHost) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        lotId,
        auctionId,
        depositReceivedDate,
        paymentReceivedDate,
        status,
        caseId,
        caseFirmName,
        caseFileNumber,
        caseNumber,
        caseDeedDelivery,
        const DeepCollectionEquality().hash(_properties),
        bidderUserName,
        winner,
        startedTime,
        stoppedTime,
        openingPrice,
        requiredDown,
        numberOfBidders,
        numberOfBids,
        lotNumber,
        createdDate,
        auctionHost,
        const DeepCollectionEquality().hash(_documents)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PastWinningDetailDtoImplCopyWith<_$PastWinningDetailDtoImpl>
      get copyWith =>
          __$$PastWinningDetailDtoImplCopyWithImpl<_$PastWinningDetailDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PastWinningDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _PastWinningDetailDto extends PastWinningDetailDto {
  const factory _PastWinningDetailDto(
      {@JsonKey(name: 'id') required final int lotId,
      required final int auctionId,
      final DateTime? depositReceivedDate,
      final DateTime? paymentReceivedDate,
      @JsonKey(unknownEnumValue: CaseStatus.unknown) final CaseStatus status,
      required final int caseId,
      final String caseFirmName,
      final String caseFileNumber,
      final String caseNumber,
      final String caseDeedDelivery,
      final List<PropertyDto> properties,
      required final String bidderUserName,
      required final WinnerDetailDto winner,
      required final DateTime startedTime,
      required final DateTime stoppedTime,
      required final num openingPrice,
      required final num requiredDown,
      required final int numberOfBidders,
      required final int numberOfBids,
      required final int lotNumber,
      @JsonKey(name: 'winnerCreatedDate') required final DateTime createdDate,
      required final AuctionHostCompany auctionHost,
      final List<DocumentSummary> documents}) = _$PastWinningDetailDtoImpl;
  const _PastWinningDetailDto._() : super._();

  factory _PastWinningDetailDto.fromJson(Map<String, dynamic> json) =
      _$PastWinningDetailDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get lotId;
  @override
  int get auctionId;
  @override
  DateTime? get depositReceivedDate;
  @override
  DateTime? get paymentReceivedDate;
  @override
  @JsonKey(unknownEnumValue: CaseStatus.unknown)
  CaseStatus get status;
  @override
  int get caseId;
  @override
  String get caseFirmName;
  @override
  String get caseFileNumber;
  @override
  String get caseNumber;
  @override
  String get caseDeedDelivery;
  @override
  List<PropertyDto> get properties;
  @override
  String get bidderUserName;
  @override
  WinnerDetailDto get winner;
  @override
  DateTime get startedTime;
  @override
  DateTime get stoppedTime;
  @override
  num get openingPrice;
  @override
  num get requiredDown;
  @override
  int get numberOfBidders;
  @override
  int get numberOfBids;
  @override
  int get lotNumber;
  @override
  @JsonKey(name: 'winnerCreatedDate')
  DateTime get createdDate;
  @override
  AuctionHostCompany get auctionHost;
  @override
  List<DocumentSummary> get documents;
  @override
  @JsonKey(ignore: true)
  _$$PastWinningDetailDtoImplCopyWith<_$PastWinningDetailDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WinnerDetailDto _$WinnerDetailDtoFromJson(Map<String, dynamic> json) {
  return _WinnerDetailDto.fromJson(json);
}

/// @nodoc
mixin _$WinnerDetailDto {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get contactName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get zip => throw _privateConstructorUsedError;
  num get reliefFee => throw _privateConstructorUsedError;
  num get bidAmount => throw _privateConstructorUsedError;
  num get bidDownAmount => throw _privateConstructorUsedError;
  String get bidBidderFullName => throw _privateConstructorUsedError;
  String get bidPaddleNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WinnerDetailDtoCopyWith<WinnerDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WinnerDetailDtoCopyWith<$Res> {
  factory $WinnerDetailDtoCopyWith(
          WinnerDetailDto value, $Res Function(WinnerDetailDto) then) =
      _$WinnerDetailDtoCopyWithImpl<$Res, WinnerDetailDto>;
  @useResult
  $Res call(
      {int id,
      String type,
      String name,
      String contactName,
      String phoneNumber,
      String address1,
      String? address2,
      String city,
      String state,
      String zip,
      num reliefFee,
      num bidAmount,
      num bidDownAmount,
      String bidBidderFullName,
      String bidPaddleNumber});
}

/// @nodoc
class _$WinnerDetailDtoCopyWithImpl<$Res, $Val extends WinnerDetailDto>
    implements $WinnerDetailDtoCopyWith<$Res> {
  _$WinnerDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? contactName = null,
    Object? phoneNumber = null,
    Object? address1 = null,
    Object? address2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? zip = null,
    Object? reliefFee = null,
    Object? bidAmount = null,
    Object? bidDownAmount = null,
    Object? bidBidderFullName = null,
    Object? bidPaddleNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      reliefFee: null == reliefFee
          ? _value.reliefFee
          : reliefFee // ignore: cast_nullable_to_non_nullable
              as num,
      bidAmount: null == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as num,
      bidDownAmount: null == bidDownAmount
          ? _value.bidDownAmount
          : bidDownAmount // ignore: cast_nullable_to_non_nullable
              as num,
      bidBidderFullName: null == bidBidderFullName
          ? _value.bidBidderFullName
          : bidBidderFullName // ignore: cast_nullable_to_non_nullable
              as String,
      bidPaddleNumber: null == bidPaddleNumber
          ? _value.bidPaddleNumber
          : bidPaddleNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WinnerDetailDtoImplCopyWith<$Res>
    implements $WinnerDetailDtoCopyWith<$Res> {
  factory _$$WinnerDetailDtoImplCopyWith(_$WinnerDetailDtoImpl value,
          $Res Function(_$WinnerDetailDtoImpl) then) =
      __$$WinnerDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String type,
      String name,
      String contactName,
      String phoneNumber,
      String address1,
      String? address2,
      String city,
      String state,
      String zip,
      num reliefFee,
      num bidAmount,
      num bidDownAmount,
      String bidBidderFullName,
      String bidPaddleNumber});
}

/// @nodoc
class __$$WinnerDetailDtoImplCopyWithImpl<$Res>
    extends _$WinnerDetailDtoCopyWithImpl<$Res, _$WinnerDetailDtoImpl>
    implements _$$WinnerDetailDtoImplCopyWith<$Res> {
  __$$WinnerDetailDtoImplCopyWithImpl(
      _$WinnerDetailDtoImpl _value, $Res Function(_$WinnerDetailDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? name = null,
    Object? contactName = null,
    Object? phoneNumber = null,
    Object? address1 = null,
    Object? address2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? zip = null,
    Object? reliefFee = null,
    Object? bidAmount = null,
    Object? bidDownAmount = null,
    Object? bidBidderFullName = null,
    Object? bidPaddleNumber = null,
  }) {
    return _then(_$WinnerDetailDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address1: null == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
      reliefFee: null == reliefFee
          ? _value.reliefFee
          : reliefFee // ignore: cast_nullable_to_non_nullable
              as num,
      bidAmount: null == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as num,
      bidDownAmount: null == bidDownAmount
          ? _value.bidDownAmount
          : bidDownAmount // ignore: cast_nullable_to_non_nullable
              as num,
      bidBidderFullName: null == bidBidderFullName
          ? _value.bidBidderFullName
          : bidBidderFullName // ignore: cast_nullable_to_non_nullable
              as String,
      bidPaddleNumber: null == bidPaddleNumber
          ? _value.bidPaddleNumber
          : bidPaddleNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WinnerDetailDtoImpl extends _WinnerDetailDto {
  const _$WinnerDetailDtoImpl(
      {required this.id,
      required this.type,
      required this.name,
      this.contactName = '',
      this.phoneNumber = '',
      required this.address1,
      this.address2,
      required this.city,
      required this.state,
      required this.zip,
      this.reliefFee = 0,
      required this.bidAmount,
      required this.bidDownAmount,
      this.bidBidderFullName = '',
      this.bidPaddleNumber = ''})
      : super._();

  factory _$WinnerDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WinnerDetailDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final String name;
  @override
  @JsonKey()
  final String contactName;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  final String address1;
  @override
  final String? address2;
  @override
  final String city;
  @override
  final String state;
  @override
  final String zip;
  @override
  @JsonKey()
  final num reliefFee;
  @override
  final num bidAmount;
  @override
  final num bidDownAmount;
  @override
  @JsonKey()
  final String bidBidderFullName;
  @override
  @JsonKey()
  final String bidPaddleNumber;

  @override
  String toString() {
    return 'WinnerDetailDto(id: $id, type: $type, name: $name, contactName: $contactName, phoneNumber: $phoneNumber, address1: $address1, address2: $address2, city: $city, state: $state, zip: $zip, reliefFee: $reliefFee, bidAmount: $bidAmount, bidDownAmount: $bidDownAmount, bidBidderFullName: $bidBidderFullName, bidPaddleNumber: $bidPaddleNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WinnerDetailDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zip, zip) || other.zip == zip) &&
            (identical(other.reliefFee, reliefFee) ||
                other.reliefFee == reliefFee) &&
            (identical(other.bidAmount, bidAmount) ||
                other.bidAmount == bidAmount) &&
            (identical(other.bidDownAmount, bidDownAmount) ||
                other.bidDownAmount == bidDownAmount) &&
            (identical(other.bidBidderFullName, bidBidderFullName) ||
                other.bidBidderFullName == bidBidderFullName) &&
            (identical(other.bidPaddleNumber, bidPaddleNumber) ||
                other.bidPaddleNumber == bidPaddleNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      name,
      contactName,
      phoneNumber,
      address1,
      address2,
      city,
      state,
      zip,
      reliefFee,
      bidAmount,
      bidDownAmount,
      bidBidderFullName,
      bidPaddleNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WinnerDetailDtoImplCopyWith<_$WinnerDetailDtoImpl> get copyWith =>
      __$$WinnerDetailDtoImplCopyWithImpl<_$WinnerDetailDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WinnerDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _WinnerDetailDto extends WinnerDetailDto {
  const factory _WinnerDetailDto(
      {required final int id,
      required final String type,
      required final String name,
      final String contactName,
      final String phoneNumber,
      required final String address1,
      final String? address2,
      required final String city,
      required final String state,
      required final String zip,
      final num reliefFee,
      required final num bidAmount,
      required final num bidDownAmount,
      final String bidBidderFullName,
      final String bidPaddleNumber}) = _$WinnerDetailDtoImpl;
  const _WinnerDetailDto._() : super._();

  factory _WinnerDetailDto.fromJson(Map<String, dynamic> json) =
      _$WinnerDetailDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  String get name;
  @override
  String get contactName;
  @override
  String get phoneNumber;
  @override
  String get address1;
  @override
  String? get address2;
  @override
  String get city;
  @override
  String get state;
  @override
  String get zip;
  @override
  num get reliefFee;
  @override
  num get bidAmount;
  @override
  num get bidDownAmount;
  @override
  String get bidBidderFullName;
  @override
  String get bidPaddleNumber;
  @override
  @JsonKey(ignore: true)
  _$$WinnerDetailDtoImplCopyWith<_$WinnerDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
