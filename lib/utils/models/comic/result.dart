import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'associated_image.dart';
import 'image.dart';
import 'volume.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  final dynamic aliases;
  @JsonKey(name: 'api_detail_url')
  final String? apiDetailUrl;
  @JsonKey(name: 'cover_date')
  final String? coverDate;
  @JsonKey(name: 'date_added')
  final String? dateAdded;
  @JsonKey(name: 'date_last_updated')
  final String? dateLastUpdated;
  final dynamic deck;
  final String? description;
  @JsonKey(name: 'has_staff_review')
  final bool? hasStaffReview;
  final int? id;
  final Image? image;
  @JsonKey(name: 'associated_images')
  final List<AssociatedImage>? associatedImages;
  @JsonKey(name: 'issue_number')
  final String? issueNumber;
  final String? name;
  @JsonKey(name: 'site_detail_url')
  final String? siteDetailUrl;
  @JsonKey(name: 'store_date')
  final dynamic storeDate;
  final Volume? volume;

  const Result({
    this.aliases,
    this.apiDetailUrl,
    this.coverDate,
    this.dateAdded,
    this.dateLastUpdated,
    this.deck,
    this.description,
    this.hasStaffReview,
    this.id,
    this.image,
    this.associatedImages,
    this.issueNumber,
    this.name,
    this.siteDetailUrl,
    this.storeDate,
    this.volume,
  });

  @override
  String toString() {
    return 'Result(aliases: $aliases, apiDetailUrl: $apiDetailUrl, coverDate: $coverDate, dateAdded: $dateAdded, dateLastUpdated: $dateLastUpdated, deck: $deck, description: $description, hasStaffReview: $hasStaffReview, id: $id, image: $image, associatedImages: $associatedImages, issueNumber: $issueNumber, name: $name, siteDetailUrl: $siteDetailUrl, storeDate: $storeDate, volume: $volume)';
  }

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);

  Result copyWith({
    dynamic aliases,
    String? apiDetailUrl,
    String? coverDate,
    String? dateAdded,
    String? dateLastUpdated,
    dynamic deck,
    String? description,
    bool? hasStaffReview,
    int? id,
    Image? image,
    List<AssociatedImage>? associatedImages,
    String? issueNumber,
    String? name,
    String? siteDetailUrl,
    dynamic storeDate,
    Volume? volume,
  }) {
    return Result(
      aliases: aliases ?? this.aliases,
      apiDetailUrl: apiDetailUrl ?? this.apiDetailUrl,
      coverDate: coverDate ?? this.coverDate,
      dateAdded: dateAdded ?? this.dateAdded,
      dateLastUpdated: dateLastUpdated ?? this.dateLastUpdated,
      deck: deck ?? this.deck,
      description: description ?? this.description,
      hasStaffReview: hasStaffReview ?? this.hasStaffReview,
      id: id ?? this.id,
      image: image ?? this.image,
      associatedImages: associatedImages ?? this.associatedImages,
      issueNumber: issueNumber ?? this.issueNumber,
      name: name ?? this.name,
      siteDetailUrl: siteDetailUrl ?? this.siteDetailUrl,
      storeDate: storeDate ?? this.storeDate,
      volume: volume ?? this.volume,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Result) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      aliases.hashCode ^
      apiDetailUrl.hashCode ^
      coverDate.hashCode ^
      dateAdded.hashCode ^
      dateLastUpdated.hashCode ^
      deck.hashCode ^
      description.hashCode ^
      hasStaffReview.hashCode ^
      id.hashCode ^
      image.hashCode ^
      associatedImages.hashCode ^
      issueNumber.hashCode ^
      name.hashCode ^
      siteDetailUrl.hashCode ^
      storeDate.hashCode ^
      volume.hashCode;
}
