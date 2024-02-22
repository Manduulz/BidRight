import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_bounds.freezed.dart';

@freezed
class MapBounds with _$MapBounds {
  const factory MapBounds({
    required num north,
    required num south,
    required num east,
    required num west,
  }) = _MapBounds;
}
