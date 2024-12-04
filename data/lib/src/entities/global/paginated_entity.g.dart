// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedEntity<T> _$PaginatedEntityFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginatedEntity<T>(
      info: PaginationInfoEntity.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
    );
