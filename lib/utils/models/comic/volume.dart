import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'volume.g.dart';

@JsonSerializable()
class Volume {
  @JsonKey(name: 'api_detail_url')
  final String? apiDetailUrl;
  final int? id;
  final String? name;
  @JsonKey(name: 'site_detail_url')
  final String? siteDetailUrl;

  const Volume({this.apiDetailUrl, this.id, this.name, this.siteDetailUrl});

  @override
  String toString() {
    return 'Volume(apiDetailUrl: $apiDetailUrl, id: $id, name: $name, siteDetailUrl: $siteDetailUrl)';
  }

  factory Volume.fromJson(Map<String, dynamic> json) {
    return _$VolumeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VolumeToJson(this);

  Volume copyWith({
    String? apiDetailUrl,
    int? id,
    String? name,
    String? siteDetailUrl,
  }) {
    return Volume(
      apiDetailUrl: apiDetailUrl ?? this.apiDetailUrl,
      id: id ?? this.id,
      name: name ?? this.name,
      siteDetailUrl: siteDetailUrl ?? this.siteDetailUrl,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Volume) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      apiDetailUrl.hashCode ^
      id.hashCode ^
      name.hashCode ^
      siteDetailUrl.hashCode;
}
