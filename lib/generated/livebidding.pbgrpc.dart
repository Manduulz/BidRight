///
//  Generated code. Do not modify.
//  source: livebidding.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'livebidding.pb.dart' as $0;
export 'livebidding.pb.dart';

class AuctionSubscriptionGrpcServiceClient extends $grpc.Client {
  static final _$subscribe =
      $grpc.ClientMethod<$0.SubscriptionRequest, $0.Auction>(
          '/auction.AuctionSubscriptionGrpcService/Subscribe',
          ($0.SubscriptionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Auction.fromBuffer(value));
  static final _$publish = $grpc.ClientMethod<$0.Auction, $0.Auction>(
      '/auction.AuctionSubscriptionGrpcService/Publish',
      ($0.Auction value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Auction.fromBuffer(value));

  AuctionSubscriptionGrpcServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.Auction> subscribe($0.SubscriptionRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$subscribe, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Auction> publish($0.Auction request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$publish, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class AuctionSubscriptionGrpcServiceBase extends $grpc.Service {
  $core.String get $name => 'auction.AuctionSubscriptionGrpcService';

  AuctionSubscriptionGrpcServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SubscriptionRequest, $0.Auction>(
        'Subscribe',
        subscribe_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.SubscriptionRequest.fromBuffer(value),
        ($0.Auction value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Auction, $0.Auction>(
        'Publish',
        publish_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Auction.fromBuffer(value),
        ($0.Auction value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Auction> subscribe_Pre($grpc.ServiceCall call,
      $async.Future<$0.SubscriptionRequest> request) async* {
    yield* subscribe(call, await request);
  }

  $async.Stream<$0.Auction> publish_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Auction> request) async* {
    yield* publish(call, await request);
  }

  $async.Stream<$0.Auction> subscribe(
      $grpc.ServiceCall call, $0.SubscriptionRequest request);
  $async.Stream<$0.Auction> publish($grpc.ServiceCall call, $0.Auction request);
}
