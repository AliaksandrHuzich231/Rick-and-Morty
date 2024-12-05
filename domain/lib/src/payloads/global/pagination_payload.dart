final class PaginationPayload<T> {
  final int? lastObjectId;
  final String? nextPage;
  final String? prevPage;
  final T filter;

  const PaginationPayload({
    required this.lastObjectId,
    required this.nextPage,
    required this.prevPage,
    required this.filter,
  });
}
