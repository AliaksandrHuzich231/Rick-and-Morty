final class PaginationPayload {
  final int? lastObjectId;
  final String? nextPage;

  const PaginationPayload({
    required this.lastObjectId,
    required this.nextPage,
  });
}
