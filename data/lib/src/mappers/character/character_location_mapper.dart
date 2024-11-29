import 'package:domain/domain.dart' as domain;

import '../../../data.dart';
import '../base_mapper.dart';

class CharacterLocationMapper
    implements Mapper<CharacterLocationEntity, domain.CharacterLocation> {
  const CharacterLocationMapper();

  @override
  domain.CharacterLocation fromEntity(CharacterLocationEntity entity) {
    return domain.CharacterLocation(
      name: entity.name,
      url: entity.url,
    );
  }

  @override
  CharacterLocationEntity toEntity(domain.CharacterLocation model) {
    return CharacterLocationEntity(
      name: model.name,
      url: model.url,
    );
  }
}
