part of 'character_list_bloc.dart';

sealed class CharacterListEvent {
  const CharacterListEvent();
}

final class LoadMoreCharacters extends CharacterListEvent {}

final class MoveToDetailsPage extends CharacterListEvent {
  final Character character;

  const MoveToDetailsPage({
    required this.character,
  });
}
