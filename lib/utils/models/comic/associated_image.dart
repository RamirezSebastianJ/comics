import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'associated_image.g.dart';

@JsonSerializable()
class AssociatedImage {
  @JsonKey(name: 'original_url')
  final String? originalUrl;
  final int? id;
  final dynamic caption;
  @JsonKey(name: 'image_tags')
  final String? imageTags;

  const AssociatedImage({
    this.originalUrl,
    this.id,
    this.caption,
    this.imageTags,
  });

  @override
  String toString() {
    return 'AssociatedImage(originalUrl: $originalUrl, id: $id, caption: $caption, imageTags: $imageTags)';
  }

  factory AssociatedImage.fromJson(Map<String, dynamic> json) {
    return _$AssociatedImageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssociatedImageToJson(this);

  AssociatedImage copyWith({
    String? originalUrl,
    int? id,
    dynamic caption,
    String? imageTags,
  }) {
    return AssociatedImage(
      originalUrl: originalUrl ?? this.originalUrl,
      id: id ?? this.id,
      caption: caption ?? this.caption,
      imageTags: imageTags ?? this.imageTags,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! AssociatedImage) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      originalUrl.hashCode ^
      id.hashCode ^
      caption.hashCode ^
      imageTags.hashCode;
}
