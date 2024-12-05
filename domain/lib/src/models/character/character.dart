part 'character_location.dart';

part 'character_enums.dart';

final class Character {
  final int id;
  final String name;
  final CharacterStatus status;
  final String species;
  final String type;
  final CharacterGender gender;
  final CharacterLocation characterLocation;
  final String imageUrl;
  final List<String> episodes;
  final String characterUrl;
  final String createdAt;

  const Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.characterLocation,
    required this.imageUrl,
    required this.episodes,
    required this.characterUrl,
    required this.createdAt,
  });
}
