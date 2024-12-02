import 'package:data/src/entities/global/pagination_info_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_entity.g.dart';

@JsonSerializable(
  createToJson: false,
  genericArgumentFactories: true,
)
final class PaginatedEntity<T> extends JsonSerializable {
  @JsonKey(name: 'info')
  final PaginationInfoEntity info;
  @JsonKey(name: 'results')
  final List<T> results;

  const PaginatedEntity({
    required this.info,
    required this.results,
  });

  factory PaginatedEntity.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$PaginatedEntityFromJson(json, fromJsonT);
  }
}
