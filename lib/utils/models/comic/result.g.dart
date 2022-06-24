// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      aliases: json['aliases'],
      apiDetailUrl: json['api_detail_url'] as String?,
      coverDate: json['cover_date'] as String?,
      dateAdded: json['date_added'] as String?,
      dateLastUpdated: json['date_last_updated'] as String?,
      deck: json['deck'],
      description: json['description'] as String?,
      hasStaffReview: json['has_staff_review'] as bool?,
      id: json['id'] as int?,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      associatedImages: (json['associated_images'] as List<dynamic>?)
          ?.map((e) => AssociatedImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      issueNumber: json['issue_number'] as String?,
      name: json['name'] as String?,
      siteDetailUrl: json['site_detail_url'] as String?,
      storeDate: json['store_date'],
      volume: json['volume'] == null
          ? null
          : Volume.fromJson(json['volume'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'aliases': instance.aliases,
      'api_detail_url': instance.apiDetailUrl,
      'cover_date': instance.coverDate,
      'date_added': instance.dateAdded,
      'date_last_updated': instance.dateLastUpdated,
      'deck': instance.deck,
      'description': instance.description,
      'has_staff_review': instance.hasStaffReview,
      'id': instance.id,
      'image': instance.image,
      'associated_images': instance.associatedImages,
      'issue_number': instance.issueNumber,
      'name': instance.name,
      'site_detail_url': instance.siteDetailUrl,
      'store_date': instance.storeDate,
      'volume': instance.volume,
    };
