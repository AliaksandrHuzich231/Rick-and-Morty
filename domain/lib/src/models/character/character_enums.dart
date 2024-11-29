part of 'character.dart';

enum CharacterStatus {
  alive('Alive'),
  dead('Dead'),
  unknown('unknown');

  final String status;

  const CharacterStatus(this.status);
}

enum CharacterGender {
  female('Female'),
  male('Male'),
  genderless('Genderless'),
  unknown('unknown');

  final String gender;

  const CharacterGender(this.gender);
}
