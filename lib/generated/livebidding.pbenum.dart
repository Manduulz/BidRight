///
//  Generated code. Do not modify.
//  source: livebidding.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Auction_Event extends $pb.ProtobufEnum {
  static const Auction_Event CONNECT = Auction_Event._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CONNECT');
  static const Auction_Event BIDDER_JOINED = Auction_Event._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BIDDER_JOINED');
  static const Auction_Event BIDDER_LEFT = Auction_Event._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BIDDER_LEFT');
  static const Auction_Event LOT_STARTED = Auction_Event._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOT_STARTED');
  static const Auction_Event BID_PLACED = Auction_Event._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BID_PLACED');
  static const Auction_Event LOT_STOPPED = Auction_Event._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOT_STOPPED');
  static const Auction_Event LOT_STOPPING = Auction_Event._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOT_STOPPING');
  static const Auction_Event STOPPING_CANCELLED = Auction_Event._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STOPPING_CANCELLED');
  static const Auction_Event CHANGE_AMOUNT = Auction_Event._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHANGE_AMOUNT');
  static const Auction_Event ERROR = Auction_Event._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR');
  static const Auction_Event DISCONNECT = Auction_Event._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISCONNECT');
  static const Auction_Event KICK = Auction_Event._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'KICK');
  static const Auction_Event BID_PRIOR = Auction_Event._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BID_PRIOR');

  static const $core.List<Auction_Event> values = <Auction_Event> [
    CONNECT,
    BIDDER_JOINED,
    BIDDER_LEFT,
    LOT_STARTED,
    BID_PLACED,
    LOT_STOPPED,
    LOT_STOPPING,
    STOPPING_CANCELLED,
    CHANGE_AMOUNT,
    ERROR,
    DISCONNECT,
    KICK,
    BID_PRIOR,
  ];

  static final $core.Map<$core.int, Auction_Event> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Auction_Event? valueOf($core.int value) => _byValue[value];

  const Auction_Event._($core.int v, $core.String n) : super(v, n);
}

class SubscriptionRequestItem_Type extends $pb.ProtobufEnum {
  static const SubscriptionRequestItem_Type Online = SubscriptionRequestItem_Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Online');
  static const SubscriptionRequestItem_Type InPerson = SubscriptionRequestItem_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'InPerson');

  static const $core.List<SubscriptionRequestItem_Type> values = <SubscriptionRequestItem_Type> [
    Online,
    InPerson,
  ];

  static final $core.Map<$core.int, SubscriptionRequestItem_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SubscriptionRequestItem_Type? valueOf($core.int value) => _byValue[value];

  const SubscriptionRequestItem_Type._($core.int v, $core.String n) : super(v, n);
}

class SubscriptionRequest_Role extends $pb.ProtobufEnum {
  static const SubscriptionRequest_Role BIDDER = SubscriptionRequest_Role._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BIDDER');
  static const SubscriptionRequest_Role AUCTIONEER = SubscriptionRequest_Role._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AUCTIONEER');
  static const SubscriptionRequest_Role PRESENTER = SubscriptionRequest_Role._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRESENTER');

  static const $core.List<SubscriptionRequest_Role> values = <SubscriptionRequest_Role> [
    BIDDER,
    AUCTIONEER,
    PRESENTER,
  ];

  static final $core.Map<$core.int, SubscriptionRequest_Role> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SubscriptionRequest_Role? valueOf($core.int value) => _byValue[value];

  const SubscriptionRequest_Role._($core.int v, $core.String n) : super(v, n);
}

