part of 'character_list_bloc.dart';

sealed class CharacterListEvent {
  const CharacterListEvent();
}

final class InitialLoad extends CharacterListEvent {}

final class LoadCharacters extends CharacterListEvent {}

final class ChangeFilters extends CharacterListEvent {
  final CharacterSpecies? characterSpecies;
  final CharacterStatus? characterStatus;

  const ChangeFilters({
    this.characterSpecies,
    this.characterStatus,
  });
}

final class ChangeInternetConnectionStatus extends CharacterListEvent {
  final bool hasConnection;

  const ChangeInternetConnectionStatus({
    required this.hasConnection,
  });
}

final class MoveToDetailsPage extends CharacterListEvent {
  final Character character;

  const MoveToDetailsPage({
    required this.character,
  });
}
