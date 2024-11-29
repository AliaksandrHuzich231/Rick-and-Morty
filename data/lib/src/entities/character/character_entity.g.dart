// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterEntity _$CharacterEntityFromJson(Map<String, dynamic> json) =>
    CharacterEntity(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      type: json['type'] as String,
      gender: json['gender'] as String,
      characterLocationEntity: CharacterLocationEntity.fromJson(
          json['location'] as Map<String, dynamic>),
      imageUrl: json['image'] as String,
      episodes:
          (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
      characterUrl: json['url'] as String,
      createdAt: json['created'] as String,
    );
