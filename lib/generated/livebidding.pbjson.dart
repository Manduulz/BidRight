///
//  Generated code. Do not modify.
//  source: livebidding.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use lotDescriptor instead')
const Lot$json = const {
  '1': 'Lot',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'startedTime', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startedTime'},
    const {'1': 'stopTime', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'stopTime'},
    const {'1': 'stoppedTime', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'stoppedTime'},
    const {'1': 'winner', '3': 5, '4': 1, '5': 11, '6': '.auction.Winner', '10': 'winner'},
    const {'1': 'nextId', '3': 6, '4': 1, '5': 3, '10': 'nextId'},
  ],
};

/// Descriptor for `Lot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lotDescriptor = $convert.base64Decode('CgNMb3QSDgoCaWQYASABKANSAmlkEjwKC3N0YXJ0ZWRUaW1lGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILc3RhcnRlZFRpbWUSNgoIc3RvcFRpbWUYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUghzdG9wVGltZRI8CgtzdG9wcGVkVGltZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3N0b3BwZWRUaW1lEicKBndpbm5lchgFIAEoCzIPLmF1Y3Rpb24uV2lubmVyUgZ3aW5uZXISFgoGbmV4dElkGAYgASgDUgZuZXh0SWQ=');
@$core.Deprecated('Use winnerDescriptor instead')
const Winner$json = const {
  '1': 'Winner',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'bid', '3': 2, '4': 1, '5': 11, '6': '.auction.Bid', '10': 'bid'},
    const {'1': 'paddleNumber', '3': 3, '4': 1, '5': 9, '10': 'paddleNumber'},
    const {'1': 'createdDate', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdDate'},
  ],
};

/// Descriptor for `Winner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List winnerDescriptor = $convert.base64Decode('CgZXaW5uZXISDgoCaWQYASABKANSAmlkEh4KA2JpZBgCIAEoCzIMLmF1Y3Rpb24uQmlkUgNiaWQSIgoMcGFkZGxlTnVtYmVyGAMgASgJUgxwYWRkbGVOdW1iZXISPAoLY3JlYXRlZERhdGUYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtjcmVhdGVkRGF0ZQ==');
@$core.Deprecated('Use bidDescriptor instead')
const Bid$json = const {
  '1': 'Bid',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 1, '10': 'amount'},
    const {'1': 'createdDate', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdDate'},
  ],
};

/// Descriptor for `Bid`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bidDescriptor = $convert.base64Decode('CgNCaWQSDgoCaWQYASABKANSAmlkEhYKBmFtb3VudBgCIAEoAVIGYW1vdW50EjwKC2NyZWF0ZWREYXRlGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILY3JlYXRlZERhdGU=');
@$core.Deprecated('Use bidderDescriptor instead')
const Bidder$json = const {
  '1': 'Bidder',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'userName', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'paddleNumber', '3': 3, '4': 1, '5': 9, '10': 'paddleNumber'},
    const {'1': 'bid', '3': 4, '4': 1, '5': 11, '6': '.auction.Bid', '10': 'bid'},
  ],
};

/// Descriptor for `Bidder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bidderDescriptor = $convert.base64Decode('CgZCaWRkZXISDgoCaWQYASABKANSAmlkEhoKCHVzZXJOYW1lGAIgASgJUgh1c2VyTmFtZRIiCgxwYWRkbGVOdW1iZXIYAyABKAlSDHBhZGRsZU51bWJlchIeCgNiaWQYBCABKAsyDC5hdWN0aW9uLkJpZFIDYmlk');
@$core.Deprecated('Use lastBidDescriptor instead')
const LastBid$json = const {
  '1': 'LastBid',
  '2': const [
    const {'1': 'lotId', '3': 1, '4': 1, '5': 3, '10': 'lotId'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 1, '10': 'amount'},
  ],
};

/// Descriptor for `LastBid`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lastBidDescriptor = $convert.base64Decode('CgdMYXN0QmlkEhQKBWxvdElkGAEgASgDUgVsb3RJZBIWCgZhbW91bnQYAiABKAFSBmFtb3VudA==');
@$core.Deprecated('Use bidderListDescriptor instead')
const BidderList$json = const {
  '1': 'BidderList',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'paddleNumber', '3': 2, '4': 1, '5': 9, '10': 'paddleNumber'},
    const {'1': 'firstName', '3': 3, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'lastName', '3': 4, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'userName', '3': 5, '4': 1, '5': 9, '10': 'userName'},
    const {'1': 'maxBidAmount', '3': 6, '4': 1, '5': 1, '10': 'maxBidAmount'},
    const {'1': 'enteredDate', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'enteredDate'},
    const {'1': 'leftDate', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'leftDate'},
    const {'1': 'lastBid', '3': 9, '4': 1, '5': 11, '6': '.auction.LastBid', '10': 'lastBid'},
    const {'1': 'Wins', '3': 10, '4': 3, '5': 11, '6': '.auction.LastBid', '10': 'Wins'},
  ],
};

/// Descriptor for `BidderList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bidderListDescriptor = $convert.base64Decode('CgpCaWRkZXJMaXN0Eg4KAmlkGAEgASgDUgJpZBIiCgxwYWRkbGVOdW1iZXIYAiABKAlSDHBhZGRsZU51bWJlchIcCglmaXJzdE5hbWUYAyABKAlSCWZpcnN0TmFtZRIaCghsYXN0TmFtZRgEIAEoCVIIbGFzdE5hbWUSGgoIdXNlck5hbWUYBSABKAlSCHVzZXJOYW1lEiIKDG1heEJpZEFtb3VudBgGIAEoAVIMbWF4QmlkQW1vdW50EjwKC2VudGVyZWREYXRlGAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILZW50ZXJlZERhdGUSNgoIbGVmdERhdGUYCCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUghsZWZ0RGF0ZRIqCgdsYXN0QmlkGAkgASgLMhAuYXVjdGlvbi5MYXN0QmlkUgdsYXN0QmlkEiQKBFdpbnMYCiADKAsyEC5hdWN0aW9uLkxhc3RCaWRSBFdpbnM=');
@$core.Deprecated('Use auctionDescriptor instead')
const Auction$json = const {
  '1': 'Auction',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'lot', '3': 2, '4': 1, '5': 11, '6': '.auction.Lot', '10': 'lot'},
    const {'1': 'bidder', '3': 3, '4': 1, '5': 11, '6': '.auction.Bidder', '10': 'bidder'},
    const {'1': 'bidders', '3': 4, '4': 3, '5': 11, '6': '.auction.BidderList', '10': 'bidders'},
    const {'1': 'event', '3': 5, '4': 1, '5': 14, '6': '.auction.Auction.Event', '10': 'event'},
    const {'1': 'errorMsg', '3': 6, '4': 1, '5': 9, '10': 'errorMsg'},
    const {'1': 'priorBids', '3': 7, '4': 3, '5': 11, '6': '.auction.Bidder', '10': 'priorBids'},
  ],
  '4': const [Auction_Event$json],
};

@$core.Deprecated('Use auctionDescriptor instead')
const Auction_Event$json = const {
  '1': 'Event',
  '2': const [
    const {'1': 'CONNECT', '2': 0},
    const {'1': 'BIDDER_JOINED', '2': 1},
    const {'1': 'BIDDER_LEFT', '2': 2},
    const {'1': 'LOT_STARTED', '2': 3},
    const {'1': 'BID_PLACED', '2': 4},
    const {'1': 'LOT_STOPPED', '2': 5},
    const {'1': 'LOT_STOPPING', '2': 6},
    const {'1': 'STOPPING_CANCELLED', '2': 7},
    const {'1': 'CHANGE_AMOUNT', '2': 8},
    const {'1': 'ERROR', '2': 9},
    const {'1': 'DISCONNECT', '2': 10},
    const {'1': 'KICK', '2': 11},
    const {'1': 'BID_PRIOR', '2': 12},
  ],
};

/// Descriptor for `Auction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List auctionDescriptor = $convert.base64Decode('CgdBdWN0aW9uEg4KAmlkGAEgASgDUgJpZBIeCgNsb3QYAiABKAsyDC5hdWN0aW9uLkxvdFIDbG90EicKBmJpZGRlchgDIAEoCzIPLmF1Y3Rpb24uQmlkZGVyUgZiaWRkZXISLQoHYmlkZGVycxgEIAMoCzITLmF1Y3Rpb24uQmlkZGVyTGlzdFIHYmlkZGVycxIsCgVldmVudBgFIAEoDjIWLmF1Y3Rpb24uQXVjdGlvbi5FdmVudFIFZXZlbnQSGgoIZXJyb3JNc2cYBiABKAlSCGVycm9yTXNnEi0KCXByaW9yQmlkcxgHIAMoCzIPLmF1Y3Rpb24uQmlkZGVyUglwcmlvckJpZHMi2wEKBUV2ZW50EgsKB0NPTk5FQ1QQABIRCg1CSURERVJfSk9JTkVEEAESDwoLQklEREVSX0xFRlQQAhIPCgtMT1RfU1RBUlRFRBADEg4KCkJJRF9QTEFDRUQQBBIPCgtMT1RfU1RPUFBFRBAFEhAKDExPVF9TVE9QUElORxAGEhYKElNUT1BQSU5HX0NBTkNFTExFRBAHEhEKDUNIQU5HRV9BTU9VTlQQCBIJCgVFUlJPUhAJEg4KCkRJU0NPTk5FQ1QQChIICgRLSUNLEAsSDQoJQklEX1BSSU9SEAw=');
@$core.Deprecated('Use subscriptionRequestItemDescriptor instead')
const SubscriptionRequestItem$json = const {
  '1': 'SubscriptionRequestItem',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 1, '10': 'amount'},
    const {'1': 'lastBidDate', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastBidDate'},
    const {'1': 'type', '3': 4, '4': 1, '5': 14, '6': '.auction.SubscriptionRequestItem.Type', '10': 'type'},
  ],
  '4': const [SubscriptionRequestItem_Type$json],
};

@$core.Deprecated('Use subscriptionRequestItemDescriptor instead')
const SubscriptionRequestItem_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'Online', '2': 0},
    const {'1': 'InPerson', '2': 1},
  ],
};

/// Descriptor for `SubscriptionRequestItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionRequestItemDescriptor = $convert.base64Decode('ChdTdWJzY3JpcHRpb25SZXF1ZXN0SXRlbRIOCgJpZBgBIAEoA1ICaWQSFgoGYW1vdW50GAIgASgBUgZhbW91bnQSPAoLbGFzdEJpZERhdGUYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtsYXN0QmlkRGF0ZRI5CgR0eXBlGAQgASgOMiUuYXVjdGlvbi5TdWJzY3JpcHRpb25SZXF1ZXN0SXRlbS5UeXBlUgR0eXBlIiAKBFR5cGUSCgoGT25saW5lEAASDAoISW5QZXJzb24QAQ==');
@$core.Deprecated('Use subscriptionRequestDescriptor instead')
const SubscriptionRequest$json = const {
  '1': 'SubscriptionRequest',
  '2': const [
    const {'1': 'lots', '3': 1, '4': 3, '5': 11, '6': '.auction.SubscriptionRequestItem', '10': 'lots'},
    const {'1': 'role', '3': 2, '4': 1, '5': 14, '6': '.auction.SubscriptionRequest.Role', '10': 'role'},
  ],
  '4': const [SubscriptionRequest_Role$json],
};

@$core.Deprecated('Use subscriptionRequestDescriptor instead')
const SubscriptionRequest_Role$json = const {
  '1': 'Role',
  '2': const [
    const {'1': 'BIDDER', '2': 0},
    const {'1': 'AUCTIONEER', '2': 1},
    const {'1': 'PRESENTER', '2': 2},
  ],
};

/// Descriptor for `SubscriptionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionRequestDescriptor = $convert.base64Decode('ChNTdWJzY3JpcHRpb25SZXF1ZXN0EjQKBGxvdHMYASADKAsyIC5hdWN0aW9uLlN1YnNjcmlwdGlvblJlcXVlc3RJdGVtUgRsb3RzEjUKBHJvbGUYAiABKA4yIS5hdWN0aW9uLlN1YnNjcmlwdGlvblJlcXVlc3QuUm9sZVIEcm9sZSIxCgRSb2xlEgoKBkJJRERFUhAAEg4KCkFVQ1RJT05FRVIQARINCglQUkVTRU5URVIQAg==');
