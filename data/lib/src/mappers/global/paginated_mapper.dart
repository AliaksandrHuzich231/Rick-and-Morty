import 'package:data/data.dart';
import 'package:data/src/mappers/global/pagination_info_mapper.dart';
import 'package:domain/domain.dart';

import '../base_mapper.dart';

final class PaginatedMapper<A, B>
    implements Mapper<PaginatedEntity<A>, PaginatedModel<B>> {
  final Mapper<A, B> _mapper;
  final PaginationInfoMapper _paginationInfoMapper;

  const PaginatedMapper({
    required PaginationInfoMapper paginationInfoMapper,
    required Mapper<A, B> mapper,
  })  : _paginationInfoMapper = paginationInfoMapper,
        _mapper = mapper;

  @override
  PaginatedModel<B> fromEntity(
    PaginatedEntity<A> entity,
  ) {
    return PaginatedModel(
      info: _paginationInfoMapper.fromEntity(entity.info),
      results: _mapper.fromList(entity.results),
    );
  }

  @override
  PaginatedEntity<A> toEntity(PaginatedModel<B> model) {
    return PaginatedEntity(
      info: _paginationInfoMapper.toEntity(model.info),
      results: _mapper.toList(model.results),
    );
  }
}
