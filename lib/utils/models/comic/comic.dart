import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'comic.g.dart';

@JsonSerializable()
class Comic {
  final String? error;
  final int? limit;
  final int? offset;
  @JsonKey(name: 'number_of_page_results')
  final int? numberOfPageResults;
  @JsonKey(name: 'number_of_total_results')
  final int? numberOfTotalResults;
  @JsonKey(name: 'status_code')
  final int? statusCode;
  final List<Result>? results;
  final String? version;

  const Comic({
    this.error,
    this.limit,
    this.offset,
    this.numberOfPageResults,
    this.numberOfTotalResults,
    this.statusCode,
    this.results,
    this.version,
  });

  @override
  String toString() {
    return 'Comic(error: $error, limit: $limit, offset: $offset, numberOfPageResults: $numberOfPageResults, numberOfTotalResults: $numberOfTotalResults, statusCode: $statusCode, results: $results, version: $version)';
  }

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);

  Map<String, dynamic> toJson() => _$ComicToJson(this);

  Comic copyWith({
    String? error,
    int? limit,
    int? offset,
    int? numberOfPageResults,
    int? numberOfTotalResults,
    int? statusCode,
    List<Result>? results,
    String? version,
  }) {
    return Comic(
      error: error ?? this.error,
      limit: limit ?? this.limit,
      offset: offset ?? this.offset,
      numberOfPageResults: numberOfPageResults ?? this.numberOfPageResults,
      numberOfTotalResults: numberOfTotalResults ?? this.numberOfTotalResults,
      statusCode: statusCode ?? this.statusCode,
      results: results ?? this.results,
      version: version ?? this.version,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! Comic) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode =>
      error.hashCode ^
      limit.hashCode ^
      offset.hashCode ^
      numberOfPageResults.hashCode ^
      numberOfTotalResults.hashCode ^
      statusCode.hashCode ^
      results.hashCode ^
      version.hashCode;
}
