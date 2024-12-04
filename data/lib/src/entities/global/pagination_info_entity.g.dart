// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_info_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationInfoEntity _$PaginationInfoEntityFromJson(
        Map<String, dynamic> json) =>
    PaginationInfoEntity(
      count: (json['count'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$PaginationInfoEntityToJson(
        PaginationInfoEntity instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };
