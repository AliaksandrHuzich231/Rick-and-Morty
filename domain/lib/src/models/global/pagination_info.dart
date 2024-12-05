part of 'paginated_model.dart';

final class PaginationInfo {
  final int count;
  final int pages;
  final String? next;
  final String? prev;

  bool get _isLastPage => next == null && prev != null;

  bool get _isCacheData =>
      next == AppConstants.CACHE_DATA || prev == AppConstants.CACHE_DATA;

  bool get canLoadMore => !_isLastPage && !_isCacheData;

  const PaginationInfo({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  factory PaginationInfo.empty() {
    return const PaginationInfo(
      count: 0,
      pages: 0,
      next: null,
      prev: null,
    );
  }

  factory PaginationInfo.fromCache() {
    return const PaginationInfo(
      count: 0,
      pages: 0,
      next: AppConstants.CACHE_DATA,
      prev: AppConstants.CACHE_DATA,
    );
  }
}
