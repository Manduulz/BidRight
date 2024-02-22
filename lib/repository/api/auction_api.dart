import 'package:bid_right_mobile/models/api/live_lot.dart';
import 'package:bid_right_mobile/models/api/lot_detail.dart';
import 'package:bid_right_mobile/models/api/property.dart';
import 'package:bid_right_mobile/models/api/winnings.dart';
import 'package:bid_right_mobile/models/auction.dart';
import 'package:bid_right_mobile/models/auction_bidder.dart';
import 'package:bid_right_mobile/models/auction_stream.dart';
import 'package:bid_right_mobile/models/deed_delivery.dart';
import 'package:bid_right_mobile/models/live_lot.dart';
import 'package:bid_right_mobile/models/map_bounds.dart';
import 'package:bid_right_mobile/models/property.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/models/search_filter.dart';
import 'package:bid_right_mobile/models/winnings.dart';
import 'package:bid_right_mobile/repository/api/error_wrapper.dart';
import 'package:dio/dio.dart';

class AuctionApi {
  final Dio _dio;

  AuctionApi(this._dio);

  Future<Result<List<LotBidderState>>> loadLots() {
    return wrapError(() async {
      final response = await _dio.get<List>('api/lots/listupcoming/bidder');

      return response.data!
          .map((json) => PropertyBidderResponse.fromJson(json).toLot())
          .toList();
    });
  }

  Future<Result<List<LotBidderState>>> loadPinnedLots() {
    return wrapError(() async {
      final response = await _dio.get<List>('api/lots/listpinned/bidder');

      return response.data!
          .map((json) => PropertyBidderResponse.fromJson(json)
              .toLot()
              .copyWith(isPinned: true))
          .toList();
    });
  }

  Future<Result<List<LotBidderState>>> loadRegisteredLots() {
    return wrapError(() async {
      final response = await _dio.post<List>(
        'api/lots/list/bidder',
        data: {'showMyAuctions': true},
      );

      return response.data!
          .map((json) => PropertyBidderResponse.fromJson(json).toLot())
          .toList();
    });
  }

  Future<Result<List<LotBidderState>>> loadCancelledSales() {
    return wrapError(() async {
      final response = await _dio.post(
        'api/lots/list/public',
        data: {'isCancelled': true},
      );

      return (response.data!['data'] as List)
          .map((json) => PropertyBidderResponse.fromJson(json).toLot())
          .toList();
    });
  }

  Future<Result<List<LotBidderState>>> searchLots({
    String? query,
    MapBounds? bounds,
    SearchFilter? filter,
  }) {
    return wrapError(() async {
      final response = await _dio.post<List>(
        'api/lots/list/bidder',
        data: {
          if (query != null && query.isNotEmpty) 'search': query,
          if (bounds != null) ..._mapBoundsToJson(bounds),
          if (filter != null) 'searchAttributes': filter.toJson(),
        },
      );

      return response.data!
          .map((json) => PropertyBidderResponse.fromJson(json).toLot())
          .toList();
    });
  }

  static Map<String, dynamic> _mapBoundsToJson(MapBounds bounds) {
    return {
      'polygons': [
        {
          'vertices': [
            {
              'latitude': bounds.north,
              'longitude': bounds.west,
            },
            {
              'latitude': bounds.north,
              'longitude': bounds.east,
            },
            {
              'latitude': bounds.south,
              'longitude': bounds.east,
            },
            {
              'latitude': bounds.south,
              'longitude': bounds.west,
            },
          ],
        },
      ],
    };
  }

  Future<Result<void>> pinLot({required int lotId}) {
    return wrapError(() => _dio.get('api/bidders/pin/$lotId'));
  }

  Future<Result<void>> unpinLot({required int lotId}) {
    return wrapError(() => _dio.delete('api/bidders/unpin/$lotId'));
  }

  Future<Result<List<LiveLot>>> loadLiveLots() {
    return wrapError(() async {
      final result = await _dio.post<List>('api/lots/list/live');
      return result.data!
          .map((e) => LiveLotDto.fromJson(e).toDomain())
          .toList();
    });
  }

  Future<Result<List<PastWinning>>> loadPastWinnings() {
    return wrapError(() async {
      final result = await _dio.get<List>('api/bidders/winning');
      return result.data!
          .map((e) => PastWinningDto.fromJson(e).toPastWinning())
          .toList();
    });
  }

  Future<Result<PastWinningDetail>> loadPastWinningDetail(
      {required int winningId}) {
    return wrapError(() async {
      final result = await _dio.get('api/bidders/winning/$winningId');
      return PastWinningDetailDto.fromJson(result.data).toPastWinning();
    });
  }

  Future<Result<List<Property>>> loadPropertiesForLot(int lotId) {
    return wrapError(() async {
      final result = await _dio.get('api/properties/$lotId/list');
      return (result.data as List)
          .map((e) => PropertyDto.fromJson(e).toProperty())
          .toList();
    });
  }

  Future<Result<void>> setDeedDeliveryMethod(
      {required int lotId, required DeedDeliveryMethod method}) {
    return wrapError(() =>
        _dio.put('api/lots/$lotId/setdeeddelivery', data: method.toJson()));
  }

  Future<Result<AuctionDetailWithLot>> loadLotDetail({required int lotId}) {
    return wrapError(() async {
      final response = await _dio.get('api/lots/$lotId/bidder');
      final dto = LotDetailDto.fromJson(response.data);
      return dto.toAuction();
    });
  }

  Future<Result<List<LotSummary>>> loadLotsForAuction(int auctionId) {
    return wrapError(() async {
      final response = await _dio.get<List>('api/lots/auction/$auctionId');
      return [
        for (final json in response.data!) LotSummary.fromJson(json['lot'])
      ];
    });
  }

  Future<Result<List<AuctionStreamInfo>>> loadStreams(
      {required int auctionId}) {
    return wrapError(() async {
      final response = await _dio.get('api/auctions/$auctionId/streams');
      return (response.data as List)
          .map((e) => AuctionStreamInfo.fromJson(e))
          .toList();
    });
  }

  Future<Result<void>> registerToAuction({
    required int auctionId,
    required int lotId,
    required int purchaseProfileId,
    required num amount,
    required ParticipationType participationType,
  }) {
    return wrapError(() => _dio.post(
          'api/auctions/$auctionId/$lotId/bidders',
          data: {
            'amount': amount,
            'purchaseProfileId': purchaseProfileId,
            'type': participationType.typeName,
          },
        ));
  }

  Future<Result<void>> unregisterFromAuction({
    required int auctionId,
    required int lotId,
  }) {
    return wrapError(
        () => _dio.delete('api/auctions/$auctionId/$lotId/bidders'));
  }

  Future<Result<void>> updatePurchaseProfile({
    required int auctionId,
    required int purchaseProfileId,
  }) {
    return wrapError(() => _dio.put('api/auctions/$auctionId/bidders',
        data: {'purchaseProfileId': purchaseProfileId}));
  }

  Future<Result<void>> updateLockedFunds({
    required int auctionId,
    required int lotId,
    required num amount,
  }) {
    return wrapError(() => _dio.put(
          'api/auctions/$auctionId/$lotId/biddersamount',
          data: {'amount': amount},
        ));
  }

  Future<Result<void>> placeBid({
    required int auctionId,
    required int lotId,
    required num amount,
  }) {
    return wrapError(() => _dio.post('api/auctions/$auctionId/lots/$lotId/bids',
        data: {'amount': amount}));
  }
}
