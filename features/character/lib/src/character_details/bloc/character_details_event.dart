part of 'character_details_bloc.dart';

sealed class CharacterDetailsEvent {
  const CharacterDetailsEvent();
}

final class BackToCharacterListPage extends CharacterDetailsEvent {
  const BackToCharacterListPage();
}
