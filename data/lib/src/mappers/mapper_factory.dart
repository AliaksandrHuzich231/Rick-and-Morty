import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:data/src/mappers/character/character_location_mapper.dart';
import 'package:data/src/mappers/character/character_mapper.dart';
import 'package:data/src/mappers/global/paginated_mapper.dart';
import 'package:data/src/mappers/global/pagination_info_mapper.dart';
import 'package:data/src/mappers/type_check.dart';

import 'base_mapper.dart';

abstract final class MapperFactory {
  static CharacterLocationMapper get characterLocationMapper =>
      const CharacterLocationMapper();

  static CharacterMapper get characterMapper => CharacterMapper(
        characterLocationMapper: characterLocationMapper,
      );

  static PaginationInfoMapper get paginationInfoMapper =>
      const PaginationInfoMapper();

  static PaginatedMapper<A, B> paginatedMapper<A, B>() => PaginatedMapper<A, B>(
        paginationInfoMapper: paginationInfoMapper,
        mapper: _factory<A, B>(),
      );

  static Mapper<A, B> _factory<A, B>() {
    if (isSameTypes<A, CharacterEntity>()) {
      return characterMapper as Mapper<A, B>;
    }
    throw const AppException(
      message: DataConstants.UNSUPPORTED_GENERIC_TYPE,
    );
  }
}
