// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuctionState {
  LoadingState<AuctionDetailWithLot> get lotDetail =>
      throw _privateConstructorUsedError;
  LoadingState<List<AuctionStreamInfo>> get streams =>
      throw _privateConstructorUsedError;
  LoadingState<List<Property>> get properties =>
      throw _privateConstructorUsedError;
  LoadingState<List<LotSummary>> get lots => throw _privateConstructorUsedError;
  DateTime? get stoppingTime => throw _privateConstructorUsedError;
  int? get auctionId => throw _privateConstructorUsedError;
  int get selectedLotId => throw _privateConstructorUsedError;
  int? get selectedPropertyId => throw _privateConstructorUsedError;
  bool get autoStarted => throw _privateConstructorUsedError;
  bool get autoStopped => throw _privateConstructorUsedError;
  bool get showWinningScreen => throw _privateConstructorUsedError;
  bool get showVideo => throw _privateConstructorUsedError;
  ConnectionStatus get connectionStatus => throw _privateConstructorUsedError;
  bool get isLeaving => throw _privateConstructorUsedError;
  LotStatus get status => throw _privateConstructorUsedError;
  int get bidAmount => throw _privateConstructorUsedError;
  bool get isEditingBidAmount => throw _privateConstructorUsedError;
  num? get bidAmountInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuctionStateCopyWith<AuctionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionStateCopyWith<$Res> {
  factory $AuctionStateCopyWith(
          AuctionState value, $Res Function(AuctionState) then) =
      _$AuctionStateCopyWithImpl<$Res, AuctionState>;
  @useResult
  $Res call(
      {LoadingState<AuctionDetailWithLot> lotDetail,
      LoadingState<List<AuctionStreamInfo>> streams,
      LoadingState<List<Property>> properties,
      LoadingState<List<LotSummary>> lots,
      DateTime? stoppingTime,
      int? auctionId,
      int selectedLotId,
      int? selectedPropertyId,
      bool autoStarted,
      bool autoStopped,
      bool showWinningScreen,
      bool showVideo,
      ConnectionStatus connectionStatus,
      bool isLeaving,
      LotStatus status,
      int bidAmount,
      bool isEditingBidAmount,
      num? bidAmountInProgress});

  $LoadingStateCopyWith<AuctionDetailWithLot, $Res> get lotDetail;
  $LoadingStateCopyWith<List<AuctionStreamInfo>, $Res> get streams;
  $LoadingStateCopyWith<List<Property>, $Res> get properties;
  $LoadingStateCopyWith<List<LotSummary>, $Res> get lots;
}

/// @nodoc
class _$AuctionStateCopyWithImpl<$Res, $Val extends AuctionState>
    implements $AuctionStateCopyWith<$Res> {
  _$AuctionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotDetail = null,
    Object? streams = null,
    Object? properties = null,
    Object? lots = null,
    Object? stoppingTime = freezed,
    Object? auctionId = freezed,
    Object? selectedLotId = null,
    Object? selectedPropertyId = freezed,
    Object? autoStarted = null,
    Object? autoStopped = null,
    Object? showWinningScreen = null,
    Object? showVideo = null,
    Object? connectionStatus = null,
    Object? isLeaving = null,
    Object? status = null,
    Object? bidAmount = null,
    Object? isEditingBidAmount = null,
    Object? bidAmountInProgress = freezed,
  }) {
    return _then(_value.copyWith(
      lotDetail: null == lotDetail
          ? _value.lotDetail
          : lotDetail // ignore: cast_nullable_to_non_nullable
              as LoadingState<AuctionDetailWithLot>,
      streams: null == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<AuctionStreamInfo>>,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<Property>>,
      lots: null == lots
          ? _value.lots
          : lots // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<LotSummary>>,
      stoppingTime: freezed == stoppingTime
          ? _value.stoppingTime
          : stoppingTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      auctionId: freezed == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedLotId: null == selectedLotId
          ? _value.selectedLotId
          : selectedLotId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedPropertyId: freezed == selectedPropertyId
          ? _value.selectedPropertyId
          : selectedPropertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      autoStarted: null == autoStarted
          ? _value.autoStarted
          : autoStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      autoStopped: null == autoStopped
          ? _value.autoStopped
          : autoStopped // ignore: cast_nullable_to_non_nullable
              as bool,
      showWinningScreen: null == showWinningScreen
          ? _value.showWinningScreen
          : showWinningScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      showVideo: null == showVideo
          ? _value.showVideo
          : showVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionStatus: null == connectionStatus
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus,
      isLeaving: null == isLeaving
          ? _value.isLeaving
          : isLeaving // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LotStatus,
      bidAmount: null == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as int,
      isEditingBidAmount: null == isEditingBidAmount
          ? _value.isEditingBidAmount
          : isEditingBidAmount // ignore: cast_nullable_to_non_nullable
              as bool,
      bidAmountInProgress: freezed == bidAmountInProgress
          ? _value.bidAmountInProgress
          : bidAmountInProgress // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<AuctionDetailWithLot, $Res> get lotDetail {
    return $LoadingStateCopyWith<AuctionDetailWithLot, $Res>(_value.lotDetail,
        (value) {
      return _then(_value.copyWith(lotDetail: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<List<AuctionStreamInfo>, $Res> get streams {
    return $LoadingStateCopyWith<List<AuctionStreamInfo>, $Res>(_value.streams,
        (value) {
      return _then(_value.copyWith(streams: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<List<Property>, $Res> get properties {
    return $LoadingStateCopyWith<List<Property>, $Res>(_value.properties,
        (value) {
      return _then(_value.copyWith(properties: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<List<LotSummary>, $Res> get lots {
    return $LoadingStateCopyWith<List<LotSummary>, $Res>(_value.lots, (value) {
      return _then(_value.copyWith(lots: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuctionStateImplCopyWith<$Res>
    implements $AuctionStateCopyWith<$Res> {
  factory _$$AuctionStateImplCopyWith(
          _$AuctionStateImpl value, $Res Function(_$AuctionStateImpl) then) =
      __$$AuctionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingState<AuctionDetailWithLot> lotDetail,
      LoadingState<List<AuctionStreamInfo>> streams,
      LoadingState<List<Property>> properties,
      LoadingState<List<LotSummary>> lots,
      DateTime? stoppingTime,
      int? auctionId,
      int selectedLotId,
      int? selectedPropertyId,
      bool autoStarted,
      bool autoStopped,
      bool showWinningScreen,
      bool showVideo,
      ConnectionStatus connectionStatus,
      bool isLeaving,
      LotStatus status,
      int bidAmount,
      bool isEditingBidAmount,
      num? bidAmountInProgress});

  @override
  $LoadingStateCopyWith<AuctionDetailWithLot, $Res> get lotDetail;
  @override
  $LoadingStateCopyWith<List<AuctionStreamInfo>, $Res> get streams;
  @override
  $LoadingStateCopyWith<List<Property>, $Res> get properties;
  @override
  $LoadingStateCopyWith<List<LotSummary>, $Res> get lots;
}

/// @nodoc
class __$$AuctionStateImplCopyWithImpl<$Res>
    extends _$AuctionStateCopyWithImpl<$Res, _$AuctionStateImpl>
    implements _$$AuctionStateImplCopyWith<$Res> {
  __$$AuctionStateImplCopyWithImpl(
      _$AuctionStateImpl _value, $Res Function(_$AuctionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotDetail = null,
    Object? streams = null,
    Object? properties = null,
    Object? lots = null,
    Object? stoppingTime = freezed,
    Object? auctionId = freezed,
    Object? selectedLotId = null,
    Object? selectedPropertyId = freezed,
    Object? autoStarted = null,
    Object? autoStopped = null,
    Object? showWinningScreen = null,
    Object? showVideo = null,
    Object? connectionStatus = null,
    Object? isLeaving = null,
    Object? status = null,
    Object? bidAmount = null,
    Object? isEditingBidAmount = null,
    Object? bidAmountInProgress = freezed,
  }) {
    return _then(_$AuctionStateImpl(
      lotDetail: null == lotDetail
          ? _value.lotDetail
          : lotDetail // ignore: cast_nullable_to_non_nullable
              as LoadingState<AuctionDetailWithLot>,
      streams: null == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<AuctionStreamInfo>>,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<Property>>,
      lots: null == lots
          ? _value.lots
          : lots // ignore: cast_nullable_to_non_nullable
              as LoadingState<List<LotSummary>>,
      stoppingTime: freezed == stoppingTime
          ? _value.stoppingTime
          : stoppingTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      auctionId: freezed == auctionId
          ? _value.auctionId
          : auctionId // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedLotId: null == selectedLotId
          ? _value.selectedLotId
          : selectedLotId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedPropertyId: freezed == selectedPropertyId
          ? _value.selectedPropertyId
          : selectedPropertyId // ignore: cast_nullable_to_non_nullable
              as int?,
      autoStarted: null == autoStarted
          ? _value.autoStarted
          : autoStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      autoStopped: null == autoStopped
          ? _value.autoStopped
          : autoStopped // ignore: cast_nullable_to_non_nullable
              as bool,
      showWinningScreen: null == showWinningScreen
          ? _value.showWinningScreen
          : showWinningScreen // ignore: cast_nullable_to_non_nullable
              as bool,
      showVideo: null == showVideo
          ? _value.showVideo
          : showVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionStatus: null == connectionStatus
          ? _value.connectionStatus
          : connectionStatus // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus,
      isLeaving: null == isLeaving
          ? _value.isLeaving
          : isLeaving // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LotStatus,
      bidAmount: null == bidAmount
          ? _value.bidAmount
          : bidAmount // ignore: cast_nullable_to_non_nullable
              as int,
      isEditingBidAmount: null == isEditingBidAmount
          ? _value.isEditingBidAmount
          : isEditingBidAmount // ignore: cast_nullable_to_non_nullable
              as bool,
      bidAmountInProgress: freezed == bidAmountInProgress
          ? _value.bidAmountInProgress
          : bidAmountInProgress // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$AuctionStateImpl extends _AuctionState {
  const _$AuctionStateImpl(
      {this.lotDetail = const Uninitialized(),
      this.streams = const Uninitialized(),
      this.properties = const Uninitialized(),
      this.lots = const Uninitialized(),
      this.stoppingTime,
      this.auctionId,
      required this.selectedLotId,
      this.selectedPropertyId,
      this.autoStarted = false,
      this.autoStopped = false,
      this.showWinningScreen = false,
      this.showVideo = false,
      this.connectionStatus = ConnectionStatus.disconnected,
      this.isLeaving = false,
      this.status = LotStatus.pending,
      this.bidAmount = 0,
      this.isEditingBidAmount = false,
      this.bidAmountInProgress})
      : super._();

  @override
  @JsonKey()
  final LoadingState<AuctionDetailWithLot> lotDetail;
  @override
  @JsonKey()
  final LoadingState<List<AuctionStreamInfo>> streams;
  @override
  @JsonKey()
  final LoadingState<List<Property>> properties;
  @override
  @JsonKey()
  final LoadingState<List<LotSummary>> lots;
  @override
  final DateTime? stoppingTime;
  @override
  final int? auctionId;
  @override
  final int selectedLotId;
  @override
  final int? selectedPropertyId;
  @override
  @JsonKey()
  final bool autoStarted;
  @override
  @JsonKey()
  final bool autoStopped;
  @override
  @JsonKey()
  final bool showWinningScreen;
  @override
  @JsonKey()
  final bool showVideo;
  @override
  @JsonKey()
  final ConnectionStatus connectionStatus;
  @override
  @JsonKey()
  final bool isLeaving;
  @override
  @JsonKey()
  final LotStatus status;
  @override
  @JsonKey()
  final int bidAmount;
  @override
  @JsonKey()
  final bool isEditingBidAmount;
  @override
  final num? bidAmountInProgress;

  @override
  String toString() {
    return 'AuctionState(lotDetail: $lotDetail, streams: $streams, properties: $properties, lots: $lots, stoppingTime: $stoppingTime, auctionId: $auctionId, selectedLotId: $selectedLotId, selectedPropertyId: $selectedPropertyId, autoStarted: $autoStarted, autoStopped: $autoStopped, showWinningScreen: $showWinningScreen, showVideo: $showVideo, connectionStatus: $connectionStatus, isLeaving: $isLeaving, status: $status, bidAmount: $bidAmount, isEditingBidAmount: $isEditingBidAmount, bidAmountInProgress: $bidAmountInProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionStateImpl &&
            (identical(other.lotDetail, lotDetail) ||
                other.lotDetail == lotDetail) &&
            (identical(other.streams, streams) || other.streams == streams) &&
            (identical(other.properties, properties) ||
                other.properties == properties) &&
            (identical(other.lots, lots) || other.lots == lots) &&
            (identical(other.stoppingTime, stoppingTime) ||
                other.stoppingTime == stoppingTime) &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.selectedLotId, selectedLotId) ||
                other.selectedLotId == selectedLotId) &&
            (identical(other.selectedPropertyId, selectedPropertyId) ||
                other.selectedPropertyId == selectedPropertyId) &&
            (identical(other.autoStarted, autoStarted) ||
                other.autoStarted == autoStarted) &&
            (identical(other.autoStopped, autoStopped) ||
                other.autoStopped == autoStopped) &&
            (identical(other.showWinningScreen, showWinningScreen) ||
                other.showWinningScreen == showWinningScreen) &&
            (identical(other.showVideo, showVideo) ||
                other.showVideo == showVideo) &&
            (identical(other.connectionStatus, connectionStatus) ||
                other.connectionStatus == connectionStatus) &&
            (identical(other.isLeaving, isLeaving) ||
                other.isLeaving == isLeaving) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.bidAmount, bidAmount) ||
                other.bidAmount == bidAmount) &&
            (identical(other.isEditingBidAmount, isEditingBidAmount) ||
                other.isEditingBidAmount == isEditingBidAmount) &&
            (identical(other.bidAmountInProgress, bidAmountInProgress) ||
                other.bidAmountInProgress == bidAmountInProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      lotDetail,
      streams,
      properties,
      lots,
      stoppingTime,
      auctionId,
      selectedLotId,
      selectedPropertyId,
      autoStarted,
      autoStopped,
      showWinningScreen,
      showVideo,
      connectionStatus,
      isLeaving,
      status,
      bidAmount,
      isEditingBidAmount,
      bidAmountInProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionStateImplCopyWith<_$AuctionStateImpl> get copyWith =>
      __$$AuctionStateImplCopyWithImpl<_$AuctionStateImpl>(this, _$identity);
}

abstract class _AuctionState extends AuctionState {
  const factory _AuctionState(
      {final LoadingState<AuctionDetailWithLot> lotDetail,
      final LoadingState<List<AuctionStreamInfo>> streams,
      final LoadingState<List<Property>> properties,
      final LoadingState<List<LotSummary>> lots,
      final DateTime? stoppingTime,
      final int? auctionId,
      required final int selectedLotId,
      final int? selectedPropertyId,
      final bool autoStarted,
      final bool autoStopped,
      final bool showWinningScreen,
      final bool showVideo,
      final ConnectionStatus connectionStatus,
      final bool isLeaving,
      final LotStatus status,
      final int bidAmount,
      final bool isEditingBidAmount,
      final num? bidAmountInProgress}) = _$AuctionStateImpl;
  const _AuctionState._() : super._();

  @override
  LoadingState<AuctionDetailWithLot> get lotDetail;
  @override
  LoadingState<List<AuctionStreamInfo>> get streams;
  @override
  LoadingState<List<Property>> get properties;
  @override
  LoadingState<List<LotSummary>> get lots;
  @override
  DateTime? get stoppingTime;
  @override
  int? get auctionId;
  @override
  int get selectedLotId;
  @override
  int? get selectedPropertyId;
  @override
  bool get autoStarted;
  @override
  bool get autoStopped;
  @override
  bool get showWinningScreen;
  @override
  bool get showVideo;
  @override
  ConnectionStatus get connectionStatus;
  @override
  bool get isLeaving;
  @override
  LotStatus get status;
  @override
  int get bidAmount;
  @override
  bool get isEditingBidAmount;
  @override
  num? get bidAmountInProgress;
  @override
  @JsonKey(ignore: true)
  _$$AuctionStateImplCopyWith<_$AuctionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
