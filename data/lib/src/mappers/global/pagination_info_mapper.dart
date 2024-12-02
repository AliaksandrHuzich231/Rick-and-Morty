import 'package:data/data.dart';
import 'package:domain/domain.dart';

import '../base_mapper.dart';

final class PaginationInfoMapper
    implements Mapper<PaginationInfoEntity, PaginationInfo> {
  const PaginationInfoMapper();

  @override
  PaginationInfo fromEntity(PaginationInfoEntity entity) {
    return PaginationInfo(
      count: entity.count,
      pages: entity.pages,
      next: entity.next,
      prev: entity.prev,
    );
  }

  @override
  PaginationInfoEntity toEntity(PaginationInfo model) {
    return PaginationInfoEntity(
      count: model.count,
      pages: model.pages,
      next: model.next,
      prev: model.prev,
    );
  }
}
