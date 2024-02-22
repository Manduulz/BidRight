import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_stream.freezed.dart';
part 'auction_stream.g.dart';

//ignore_for_file: invalid_annotation_target

@freezed
class AuctionStreamInfo with _$AuctionStreamInfo {
  const AuctionStreamInfo._();

  const factory AuctionStreamInfo({
    required int id,
    String? title,
    String? url,
    required int auctionId,
    @Default(StreamType.other)
    @JsonKey(unknownEnumValue: StreamType.other)
        StreamType type,
  }) = _AuctionStreamInfo;

  factory AuctionStreamInfo.fromJson(Map<String, dynamic> json) =>
      _$AuctionStreamInfoFromJson(json);
}

@JsonEnum()
enum StreamType {
  @JsonValue('YouTube')
  youTube,
  @JsonValue('Other')
  other,
}
