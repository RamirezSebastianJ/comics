import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class Image {
  @JsonKey(name: 'icon_url')
  final String? iconUrl;
  @JsonKey(name: 'medium_url')
  final String? mediumUrl;
  @JsonKey(name: 'screen_url')
  final String? screenUrl;
  @JsonKey(name: 'screen_large_url')
  final String? screenLargeUrl;
  @JsonKey(name: 'small_url')
  final String? smallUrl;
  @JsonKey(name: 'super_url')
  final String? superUrl;
  @JsonKey(name: 'thumb_url')
  final String? thumbUrl;
  @JsonKey(name: 'tiny_url')
  final String? tinyUrl;
  @JsonKey(name: 'original_url')
  final String? originalUrl;
  @JsonKey(name: 'image_tags')
  final String? imageTags;

  const Image({
    this.iconUrl,
    this.mediumUrl,
    this.screenUrl,
    this.screenLargeUrl,
    this.smallUrl,
    this.superUrl,
    this.thumbUrl,
    this.tinyUrl,
    this.originalUrl,
    this.imageTags,
  });

  @override
  String toString() {
    return 'Image(iconUrl: $iconUrl, mediumUrl: $mediumUrl, screenUrl: $screenUrl, screenLargeUrl: $screenLargeUrl, smallUrl: $smallUrl, superUrl: $superUrl, thumbUrl: $thumbUrl, tinyUrl: $tinyUrl, originalUrl: $originalUrl, imageTags: $imageTags)';
  }

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);

  Image copyWith({
    String? iconUrl,
    String? mediumUrl,
    String? screenUrl,
    String? screenLargeUrl,
    String? smallUrl,
    String? superUrl,
    String? thumbUrl,
    String? tinyUrl,
    String? originalUrl,
    String? imageTags,
  }) {
    return Image(
      iconUrl: iconUrl ?? this.iconUrl,
      mediumUrl: mediumUrl ?? this.mediumUrl,
      screenUrl: screenUrl ?? this.screenUrl,
      screenLargeUrl: screenLargeUrl ?? this.screenLargeUrl,
      smallUrl: smallUrl ?? this.smallUrl,
      superUrl: superUrl ?? this.superUrl,
      thumbUrl: thumbUrl ?? this.thumbUrl,
      tinyUrl: tinyUrl ?? this.tinyUrl,
      originalUrl: originalUrl ?? this.originalUrl,
      imageTags: imageTags ?? this.imageTags,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Image) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      iconUrl.hashCode ^
      mediumUrl.hashCode ^
      screenUrl.hashCode ^
      screenLargeUrl.hashCode ^
      smallUrl.hashCode ^
      superUrl.hashCode ^
      thumbUrl.hashCode ^
      tinyUrl.hashCode ^
      originalUrl.hashCode ^
      imageTags.hashCode;
}
