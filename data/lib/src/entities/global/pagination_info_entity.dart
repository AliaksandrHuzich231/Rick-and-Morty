import 'package:json_annotation/json_annotation.dart';

part 'pagination_info_entity.g.dart';

@JsonSerializable()
final class PaginationInfoEntity extends JsonSerializable {
  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'pages')
  final int pages;
  @JsonKey(name: 'next')
  final String? next;
  @JsonKey(name: 'prev')
  final String? prev;

  const PaginationInfoEntity({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  factory PaginationInfoEntity.fromJson(Map<String, dynamic> json) {
    return _$PaginationInfoEntityFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PaginationInfoEntityToJson(this);
}
