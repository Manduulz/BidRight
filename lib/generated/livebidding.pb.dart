///
//  Generated code. Do not modify.
//  source: livebidding.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $1;

import 'livebidding.pbenum.dart';

export 'livebidding.pbenum.dart';

class Lot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Lot', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auction'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<$1.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startedTime', protoName: 'startedTime', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stopTime', protoName: 'stopTime', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stoppedTime', protoName: 'stoppedTime', subBuilder: $1.Timestamp.create)
    ..aOM<Winner>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'winner', subBuilder: Winner.create)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextId', protoName: 'nextId')
    ..hasRequiredFields = false
  ;

  Lot._() : super();
  factory Lot({
    $fixnum.Int64? id,
    $1.Timestamp? startedTime,
    $1.Timestamp? stopTime,
    $1.Timestamp? stoppedTime,
    Winner? winner,
    $fixnum.Int64? nextId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (startedTime != null) {
      _result.startedTime = startedTime;
    }
    if (stopTime != null) {
      _result.stopTime = stopTime;
    }
    if (stoppedTime != null) {
      _result.stoppedTime = stoppedTime;
    }
    if (winner != null) {
      _result.winner = winner;
    }
    if (nextId != null) {
      _result.nextId = nextId;
    }
    return _result;
  }
  factory Lot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Lot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Lot clone() => Lot()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Lot copyWith(void Function(Lot) updates) => super.copyWith((message) => updates(message as Lot)) as Lot; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Lot create() => Lot._();
  Lot createEmptyInstance() => create();
  static $pb.PbList<Lot> createRepeated() => $pb.PbList<Lot>();
  @$core.pragma('dart2js:noInline')
  static Lot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lot>(create);
  static Lot? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $1.Timestamp get startedTime => $_getN(1);
  @$pb.TagNumber(2)
  set startedTime($1.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartedTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartedTime() => clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureStartedTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Timestamp get stopTime => $_getN(2);
  @$pb.TagNumber(3)
  set stopTime($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStopTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearStopTime() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureStopTime() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Timestamp get stoppedTime => $_getN(3);
  @$pb.TagNumber(4)
  set stoppedTime($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStoppedTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoppedTime() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureStoppedTime() => $_ensure(3);

  @$pb.TagNumber(5)
  Winner get winner => $_getN(4);
  @$pb.TagNumber(5)
  set winner(Winner v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasWinner() => $_has(4);
  @$pb.TagNumber(5)
  void clearWinner() => clearField(5);
  @$pb.TagNumber(5)
  Winner ensureWinner() => $_ensure(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get nextId => $_getI64(5);
  @$pb.TagNumber(6)
  set nextId($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNextId() => $_has(5);
  @$pb.TagNumber(6)
  void clearNextId() => clearField(6);
}

class Winner extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Winner', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auction'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<Bid>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bid', subBuilder: Bid.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paddleNumber', protoName: 'paddleNumber')
    ..aOM<$1.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdDate', protoName: 'createdDate', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Winner._() : super();
  factory Winner({
    $fixnum.Int64? id,
    Bid? bid,
    $core.String? paddleNumber,
    $1.Timestamp? createdDate,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (bid != null) {
      _result.bid = bid;
    }
    if (paddleNumber != null) {
      _result.paddleNumber = paddleNumber;
    }
    if (createdDate != null) {
      _result.createdDate = createdDate;
    }
    return _result;
  }
  factory Winner.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Winner.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Winner clone() => Winner()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Winner copyWith(void Function(Winner) updates) => super.copyWith((message) => updates(message as Winner)) as Winner; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Winner create() => Winner._();
  Winner createEmptyInstance() => create();
  static $pb.PbList<Winner> createRepeated() => $pb.PbList<Winner>();
  @$core.pragma('dart2js:noInline')
  static Winner getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Winner>(create);
  static Winner? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  Bid get bid => $_getN(1);
  @$pb.TagNumber(2)
  set bid(Bid v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBid() => $_has(1);
  @$pb.TagNumber(2)
  void clearBid() => clearField(2);
  @$pb.TagNumber(2)
  Bid ensureBid() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get paddleNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set paddleNumber($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPaddleNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearPaddleNumber() => clearField(3);

  @$pb.TagNumber(4)
  $1.Timestamp get createdDate => $_getN(3);
  @$pb.TagNumber(4)
  set createdDate($1.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedDate() => clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureCreatedDate() => $_ensure(3);
}

class Bid extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Bid', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auction'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OD)
    ..aOM<$1.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdDate', protoName: 'createdDate', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Bid._() : super();
  factory Bid({
    $fixnum.Int64? id,
    $core.double? amount,
    $1.Timestamp? createdDate,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (createdDate != null) {
      _result.createdDate = createdDate;
    }
    return _result;
  }
  factory Bid.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Bid.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Bid clone() => Bid()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Bid copyWith(void Function(Bid) updates) => super.copyWith((message) => updates(message as Bid)) as Bid; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Bid create() => Bid._();
  Bid createEmptyInstance() => create();
  static $pb.PbList<Bid> createRepeated() => $pb.PbList<Bid>();
  @$core.pragma('dart2js:noInline')
  static Bid getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Bid>(create);
  static Bid? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $1.Timestamp get createdDate => $_getN(2);
  @$pb.TagNumber(3)
  set createdDate($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedDate() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureCreatedDate() => $_ensure(2);
}

class Bidder extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Bidder', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auction'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userName', protoName: 'userName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paddleNumber', protoName: 'paddleNumber')
    ..aOM<Bid>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bid', subBuilder: Bid.create)
    ..hasRequiredFields = false
  ;

  Bidder._() : super();
  factory Bidder({
    $fixnum.Int64? id,
    $core.String? userName,
    $core.String? paddleNumber,
    Bid? bid,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (userName != null) {
      _result.userName = userName;
    }
    if (paddleNumber != null) {
      _result.paddleNumber = paddleNumber;
    }
    if (bid != null) {
      _result.bid = bid;
    }
    return _result;
  }
  factory Bidder.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Bidder.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Bidder clone() => Bidder()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Bidder copyWith(void Function(Bidder) updates) => super.copyWith((message) => updates(message as Bidder)) as Bidder; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Bidder create() => Bidder._();
  Bidder createEmptyInstance() => create();
  static $pb.PbList<Bidder> createRepeated() => $pb.PbList<Bidder>();
  @$core.pragma('dart2js:noInline')
  static Bidder getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Bidder>(create);
  static Bidder? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userName => $_getSZ(1);
  @$pb.TagNumber(2)
  set userName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get paddleNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set paddleNumber($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPaddleNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearPaddleNumber() => clearField(3);

  @$pb.TagNumber(4)
  Bid get bid => $_getN(3);
  @$pb.TagNumber(4)
  set bid(Bid v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBid() => $_has(3);
  @$pb.TagNumber(4)
  void clearBid() => clearField(4);
  @$pb.TagNumber(4)
  Bid ensureBid() => $_ensure(3);
}

class LastBid extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LastBid', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auction'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lotId', protoName: 'lotId')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  LastBid._() : super();
  factory LastBid({
    $fixnum.Int64? lotId,
    $core.double? amount,
  }) {
    final _result = create();
    if (lotId != null) {
      _result.lotId = lotId;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory LastBid.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LastBid.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LastBid clone() => LastBid()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LastBid copyWith(void Function(LastBid) updates) => super.copyWith((message) => updates(message as LastBid)) as LastBid; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LastBid create() => LastBid._();
  LastBid createEmptyInstance() => create();
  static $pb.PbList<LastBid> createRepeated() => $pb.PbList<LastBid>();
  @$core.pragma('dart2js:noInline')
  static LastBid getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LastBid>(create);
  static LastBid? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get lotId => $_getI64(0);
  @$pb.TagNumber(1)
  set lotId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLotId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class BidderList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BidderList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auction'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paddleNumber', protoName: 'paddleNumber')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName', protoName: 'firstName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName', protoName: 'lastName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userName', protoName: 'userName')
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxBidAmount', $pb.PbFieldType.OD, protoName: 'maxBidAmount')
    ..aOM<$1.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enteredDate', protoName: 'enteredDate', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'leftDate', protoName: 'leftDate', subBuilder: $1.Timestamp.create)
    ..aOM<LastBid>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastBid', protoName: 'lastBid', subBuilder: LastBid.create)
    ..pc<LastBid>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Wins', $pb.PbFieldType.PM, protoName: 'Wins', subBuilder: LastBid.create)
    ..hasRequiredFields = false
  ;

  BidderList._() : super();
  factory BidderList({
    $fixnum.Int64? id,
    $core.String? paddleNumber,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? userName,
    $core.double? maxBidAmount,
    $1.Timestamp? enteredDate,
    $1.Timestamp? leftDate,
    LastBid? lastBid,
    $core.Iterable<LastBid>? wins,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (paddleNumber != null) {
      _result.paddleNumber = paddleNumber;
    }
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (userName != null) {
      _result.userName = userName;
    }
    if (maxBidAmount != null) {
      _result.maxBidAmount = maxBidAmount;
    }
    if (enteredDate != null) {
      _result.enteredDate = enteredDate;
    }
    if (leftDate != null) {
      _result.leftDate = leftDate;
    }
    if (lastBid != null) {
      _result.lastBid = lastBid;
    }
    if (wins != null) {
      _result.wins.addAll(wins);
    }
    return _result;
  }
  factory BidderList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BidderList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BidderList clone() => BidderList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BidderList copyWith(void Function(BidderList) updates) => super.copyWith((message) => updates(message as BidderList)) as BidderList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BidderList create() => BidderList._();
  BidderList createEmptyInstance() => create();
  static $pb.PbList<BidderList> createRepeated() => $pb.PbList<BidderList>();
  @$core.pragma('dart2js:noInline')
  static BidderList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BidderList>(create);
  static BidderList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get paddleNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set paddleNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaddleNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaddleNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get firstName => $_getSZ(2);
  @$pb.TagNumber(3)
  set firstName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFirstName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFirstName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get lastName => $_getSZ(3);
  @$pb.TagNumber(4)
  set lastName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastName() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get userName => $_getSZ(4);
  @$pb.TagNumber(5)
  set userName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserName() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserName() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get maxBidAmount => $_getN(5);
  @$pb.TagNumber(6)
  set maxBidAmount($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMaxBidAmount() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxBidAmount() => clearField(6);

  @$pb.TagNumber(7)
  $1.Timestamp get enteredDate => $_getN(6);
  @$pb.TagNumber(7)
  set enteredDate($1.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasEnteredDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearEnteredDate() => clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureEnteredDate() => $_ensure(6);

  @$pb.TagNumber(8)
  $1.Timestamp get leftDate => $_getN(7);
  @$pb.TagNumber(8)
  set leftDate($1.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasLeftDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearLeftDate() => clearField(8);
  @$pb.TagNumber(8)
  $1.Timestamp ensureLeftDate() => $_ensure(7);

  @$pb.TagNumber(9)
  LastBid get lastBid => $_getN(8);
  @$pb.TagNumber(9)
  set lastBid(LastBid v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastBid() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastBid() => clearField(9);
  @$pb.TagNumber(9)
  LastBid ensureLastBid() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.List<LastBid> get wins => $_getList(9);
}

class Auction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Auction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auction'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<Lot>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lot', subBuilder: Lot.create)
    ..aOM<Bidder>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bidder', subBuilder: Bidder.create)
    ..pc<BidderList>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bidders', $pb.PbFieldType.PM, subBuilder: BidderList.create)
    ..e<Auction_Event>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'event', $pb.PbFieldType.OE, defaultOrMaker: Auction_Event.CONNECT, valueOf: Auction_Event.valueOf, enumValues: Auction_Event.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorMsg', protoName: 'errorMsg')
    ..pc<Bidder>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priorBids', $pb.PbFieldType.PM, protoName: 'priorBids', subBuilder: Bidder.create)
    ..hasRequiredFields = false
  ;

  Auction._() : super();
  factory Auction({
    $fixnum.Int64? id,
    Lot? lot,
    Bidder? bidder,
    $core.Iterable<BidderList>? bidders,
    Auction_Event? event,
    $core.String? errorMsg,
    $core.Iterable<Bidder>? priorBids,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (lot != null) {
      _result.lot = lot;
    }
    if (bidder != null) {
      _result.bidder = bidder;
    }
    if (bidders != null) {
      _result.bidders.addAll(bidders);
    }
    if (event != null) {
      _result.event = event;
    }
    if (errorMsg != null) {
      _result.errorMsg = errorMsg;
    }
    if (priorBids != null) {
      _result.priorBids.addAll(priorBids);
    }
    return _result;
  }
  factory Auction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Auction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Auction clone() => Auction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Auction copyWith(void Function(Auction) updates) => super.copyWith((message) => updates(message as Auction)) as Auction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Auction create() => Auction._();
  Auction createEmptyInstance() => create();
  static $pb.PbList<Auction> createRepeated() => $pb.PbList<Auction>();
  @$core.pragma('dart2js:noInline')
  static Auction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Auction>(create);
  static Auction? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  Lot get lot => $_getN(1);
  @$pb.TagNumber(2)
  set lot(Lot v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLot() => $_has(1);
  @$pb.TagNumber(2)
  void clearLot() => clearField(2);
  @$pb.TagNumber(2)
  Lot ensureLot() => $_ensure(1);

  @$pb.TagNumber(3)
  Bidder get bidder => $_getN(2);
  @$pb.TagNumber(3)
  set bidder(Bidder v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBidder() => $_has(2);
  @$pb.TagNumber(3)
  void clearBidder() => clearField(3);
  @$pb.TagNumber(3)
  Bidder ensureBidder() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<BidderList> get bidders => $_getList(3);

  @$pb.TagNumber(5)
  Auction_Event get event => $_getN(4);
  @$pb.TagNumber(5)
  set event(Auction_Event v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasEvent() => $_has(4);
  @$pb.TagNumber(5)
  void clearEvent() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get errorMsg => $_getSZ(5);
  @$pb.TagNumber(6)
  set errorMsg($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasErrorMsg() => $_has(5);
  @$pb.TagNumber(6)
  void clearErrorMsg() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<Bidder> get priorBids => $_getList(6);
}

class SubscriptionRequestItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscriptionRequestItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auction'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OD)
    ..aOM<$1.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastBidDate', protoName: 'lastBidDate', subBuilder: $1.Timestamp.create)
    ..e<SubscriptionRequestItem_Type>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SubscriptionRequestItem_Type.Online, valueOf: SubscriptionRequestItem_Type.valueOf, enumValues: SubscriptionRequestItem_Type.values)
    ..hasRequiredFields = false
  ;

  SubscriptionRequestItem._() : super();
  factory SubscriptionRequestItem({
    $fixnum.Int64? id,
    $core.double? amount,
    $1.Timestamp? lastBidDate,
    SubscriptionRequestItem_Type? type,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (lastBidDate != null) {
      _result.lastBidDate = lastBidDate;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory SubscriptionRequestItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscriptionRequestItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscriptionRequestItem clone() => SubscriptionRequestItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscriptionRequestItem copyWith(void Function(SubscriptionRequestItem) updates) => super.copyWith((message) => updates(message as SubscriptionRequestItem)) as SubscriptionRequestItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscriptionRequestItem create() => SubscriptionRequestItem._();
  SubscriptionRequestItem createEmptyInstance() => create();
  static $pb.PbList<SubscriptionRequestItem> createRepeated() => $pb.PbList<SubscriptionRequestItem>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionRequestItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscriptionRequestItem>(create);
  static SubscriptionRequestItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $1.Timestamp get lastBidDate => $_getN(2);
  @$pb.TagNumber(3)
  set lastBidDate($1.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastBidDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastBidDate() => clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureLastBidDate() => $_ensure(2);

  @$pb.TagNumber(4)
  SubscriptionRequestItem_Type get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(SubscriptionRequestItem_Type v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);
}

class SubscriptionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscriptionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'auction'), createEmptyInstance: create)
    ..pc<SubscriptionRequestItem>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lots', $pb.PbFieldType.PM, subBuilder: SubscriptionRequestItem.create)
    ..e<SubscriptionRequest_Role>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'role', $pb.PbFieldType.OE, defaultOrMaker: SubscriptionRequest_Role.BIDDER, valueOf: SubscriptionRequest_Role.valueOf, enumValues: SubscriptionRequest_Role.values)
    ..hasRequiredFields = false
  ;

  SubscriptionRequest._() : super();
  factory SubscriptionRequest({
    $core.Iterable<SubscriptionRequestItem>? lots,
    SubscriptionRequest_Role? role,
  }) {
    final _result = create();
    if (lots != null) {
      _result.lots.addAll(lots);
    }
    if (role != null) {
      _result.role = role;
    }
    return _result;
  }
  factory SubscriptionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscriptionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscriptionRequest clone() => SubscriptionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscriptionRequest copyWith(void Function(SubscriptionRequest) updates) => super.copyWith((message) => updates(message as SubscriptionRequest)) as SubscriptionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscriptionRequest create() => SubscriptionRequest._();
  SubscriptionRequest createEmptyInstance() => create();
  static $pb.PbList<SubscriptionRequest> createRepeated() => $pb.PbList<SubscriptionRequest>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscriptionRequest>(create);
  static SubscriptionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SubscriptionRequestItem> get lots => $_getList(0);

  @$pb.TagNumber(2)
  SubscriptionRequest_Role get role => $_getN(1);
  @$pb.TagNumber(2)
  set role(SubscriptionRequest_Role v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearRole() => clearField(2);
}

