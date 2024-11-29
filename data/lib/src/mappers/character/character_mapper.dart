import 'package:data/src/mappers/character/character_location_mapper.dart';
import 'package:domain/domain.dart' as domain;

import '../../../data.dart';
import '../base_mapper.dart';

final class CharacterMapper
    implements Mapper<CharacterEntity, domain.Character> {
  final CharacterLocationMapper _characterLocationMapper;

  const CharacterMapper({
    required CharacterLocationMapper characterLocationMapper,
  }) : _characterLocationMapper = characterLocationMapper;

  @override
  domain.Character fromEntity(CharacterEntity entity) {
    return domain.Character(
      id: entity.id,
      name: entity.name,
      status: domain.CharacterStatus.values.firstWhere(
        (domain.CharacterStatus value) => value.status == entity.status,
        orElse: () => domain.CharacterStatus.unknown,
      ),
      species: entity.species,
      type: entity.type,
      gender: domain.CharacterGender.values.firstWhere(
        (domain.CharacterGender value) => value.gender == entity.gender,
        orElse: () => domain.CharacterGender.unknown,
      ),
      characterLocation:
          _characterLocationMapper.fromEntity(entity.characterLocationEntity),
      imageUrl: entity.imageUrl,
      episodes: entity.episodes,
      characterUrl: entity.characterUrl,
      createdAt: entity.createdAt,
    );
  }

  @override
  CharacterEntity toEntity(domain.Character model) {
    return CharacterEntity(
      id: model.id,
      name: model.name,
      status: model.status.name,
      species: model.species,
      type: model.type,
      gender: model.gender.name,
      characterLocationEntity:
          _characterLocationMapper.toEntity(model.characterLocation),
      imageUrl: model.imageUrl,
      episodes: model.episodes,
      characterUrl: model.characterUrl,
      createdAt: model.createdAt,
    );
  }
}
