import 'package:data/src/mappers/character/character_location_mapper.dart';
import 'package:data/src/mappers/character/character_mapper.dart';

abstract final class MapperFactory {
  static CharacterLocationMapper get characterLocationMapper =>
      const CharacterLocationMapper();

  static CharacterMapper get characterMapper => CharacterMapper(
        characterLocationMapper: characterLocationMapper,
      );
}
