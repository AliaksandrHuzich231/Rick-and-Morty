final class PaginationPayload {
  final int? lastObjectId;
  final String? nextPage;
  final String? prevPage;

  const PaginationPayload({
    required this.lastObjectId,
    required this.nextPage,
    required this.prevPage,
  });
}
