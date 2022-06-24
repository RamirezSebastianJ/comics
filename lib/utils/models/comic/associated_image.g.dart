// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associated_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssociatedImage _$AssociatedImageFromJson(Map<String, dynamic> json) =>
    AssociatedImage(
      originalUrl: json['original_url'] as String?,
      id: json['id'] as int?,
      caption: json['caption'],
      imageTags: json['image_tags'] as String?,
    );

Map<String, dynamic> _$AssociatedImageToJson(AssociatedImage instance) =>
    <String, dynamic>{
      'original_url': instance.originalUrl,
      'id': instance.id,
      'caption': instance.caption,
      'image_tags': instance.imageTags,
    };
