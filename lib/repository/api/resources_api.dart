import 'package:bid_right_mobile/models/auction_host.dart';
import 'package:bid_right_mobile/models/help.dart';
import 'package:bid_right_mobile/models/result.dart';
import 'package:bid_right_mobile/repository/api/error_wrapper.dart';
import 'package:dio/dio.dart';

class ResourcesApi {
  final Dio _dio;

  ResourcesApi(this._dio);

  Future<Result<List<HelpResource>>> loadResources() {
    return wrapError(() async {
      final response = await _dio.get<List>('/api/resources/list');
      return response.data!.map((e) => HelpResource.fromJson(e)).toList();
    });
  }

  Future<Result<List<VerifiedAuctionHost>>> loadVerifiedHosts() {
    return wrapError(() async {
      final response = await _dio.post<List>('/api/companies/listpublic');
      return response.data!
          .map((e) => VerifiedAuctionHost.fromJson(e))
          .toList();
    });
  }
}
