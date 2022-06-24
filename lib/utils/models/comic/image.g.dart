// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      iconUrl: json['icon_url'] as String?,
      mediumUrl: json['medium_url'] as String?,
      screenUrl: json['screen_url'] as String?,
      screenLargeUrl: json['screen_large_url'] as String?,
      smallUrl: json['small_url'] as String?,
      superUrl: json['super_url'] as String?,
      thumbUrl: json['thumb_url'] as String?,
      tinyUrl: json['tiny_url'] as String?,
      originalUrl: json['original_url'] as String?,
      imageTags: json['image_tags'] as String?,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'icon_url': instance.iconUrl,
      'medium_url': instance.mediumUrl,
      'screen_url': instance.screenUrl,
      'screen_large_url': instance.screenLargeUrl,
      'small_url': instance.smallUrl,
      'super_url': instance.superUrl,
      'thumb_url': instance.thumbUrl,
      'tiny_url': instance.tinyUrl,
      'original_url': instance.originalUrl,
      'image_tags': instance.imageTags,
    };
