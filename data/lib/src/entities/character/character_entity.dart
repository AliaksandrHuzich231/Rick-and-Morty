import 'package:core/core.dart';

import '../../../data.dart';

part 'character_entity.g.dart';

@JsonSerializable(createToJson: false)
final class CharacterEntity extends JsonSerializable {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'species')
  final String species;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'gender')
  final String gender;
  @JsonKey(name: 'location')
  final CharacterLocationEntity characterLocationEntity;
  @JsonKey(name: 'image')
  final String imageUrl;
  @JsonKey(name: 'episode')
  final List<String> episodes;
  @JsonKey(name: 'url')
  final String characterUrl;
  @JsonKey(name: 'created')
  final String createdAt;

  const CharacterEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.characterLocationEntity,
    required this.imageUrl,
    required this.episodes,
    required this.characterUrl,
    required this.createdAt,
  });

  factory CharacterEntity.fromJson(Map<String, dynamic> json) {
    return _$CharacterEntityFromJson(json);
  }
}