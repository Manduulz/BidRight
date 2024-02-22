class PaginatedResponse<T> {
  final List<T> data;
  final int total;

  const PaginatedResponse(this.data, this.total);

  PaginatedResponse.fromJson(Map<String, dynamic> json,
      {required T Function(dynamic json) mapper})
      : total = json['total'],
        data = (json['data'] as List).map(mapper).toList();
}
