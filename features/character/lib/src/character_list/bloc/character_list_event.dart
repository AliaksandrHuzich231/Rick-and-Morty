part of 'character_list_bloc.dart';

sealed class CharacterListEvent {}

final class InitialLoad extends CharacterListEvent {}

final class LoadMoreCharacters extends CharacterListEvent {}

final class MoveToDetailsPage extends CharacterListEvent {}
