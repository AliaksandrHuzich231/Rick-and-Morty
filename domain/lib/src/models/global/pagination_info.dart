part of 'paginated_model.dart';

final class PaginationInfo {
  final int count;
  final int pages;
  final String? next;
  final String? prev;

  bool get isLastPage => next == null && prev != null;

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
}
