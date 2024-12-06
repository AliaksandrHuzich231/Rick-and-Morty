part of 'character.dart';

enum CharacterStatus {
  any('Any'),
  alive('Alive'),
  dead('Dead'),
  unknown('unknown');

  final String status;

  const CharacterStatus(this.status);
}

enum CharacterSpecies {
  any('Any'),
  alien('Alien'),
  human('Human');

  final String species;

  const CharacterSpecies(this.species);
}

enum CharacterGender {
  female('Female'),
  male('Male'),
  genderless('Genderless'),
  unknown('unknown');

  final String gender;

  const CharacterGender(this.gender);
}
