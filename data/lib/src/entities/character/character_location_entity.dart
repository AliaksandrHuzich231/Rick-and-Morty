import 'package:json_annotation/json_annotation.dart';

part 'character_location_entity.g.dart';

@JsonSerializable(createToJson: false)
final class CharacterLocationEntity extends JsonSerializable {
  final String name;
  final String url;

  const CharacterLocationEntity({
    required this.name,
    required this.url,
  });

  factory CharacterLocationEntity.fromJson(Map<String, dynamic> json) {
    return _$CharacterLocationEntityFromJson(json);
  }
}
