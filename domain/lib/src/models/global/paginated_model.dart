part 'pagination_info.dart';

final class PaginatedModel<T> {
  final PaginationInfo info;
  final List<T> results;

  const PaginatedModel({
    required this.info,
    required this.results,
  });

  factory PaginatedModel.empty() {
    return PaginatedModel(
      info: PaginationInfo.empty(),
      results: [],
    );
  }

  PaginatedModel copyWith({
    List<T>? results,
  }) {
    return PaginatedModel(
      info: this.info,
      results: results ?? this.results,
    );
  }
}
