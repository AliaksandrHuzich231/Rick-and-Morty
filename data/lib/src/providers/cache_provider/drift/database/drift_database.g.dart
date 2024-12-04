// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
class $CharactersTableTable extends CharactersTable
    with TableInfo<$CharactersTableTable, CharactersTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CharactersTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _speciesMeta =
      const VerificationMeta('species');
  @override
  late final GeneratedColumn<String> species = GeneratedColumn<String>(
      'species', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
      'gender', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, status, species, type, gender, image, url, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'characters_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<CharactersTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('species')) {
      context.handle(_speciesMeta,
          species.isAcceptableOrUnknown(data['species']!, _speciesMeta));
    } else if (isInserting) {
      context.missing(_speciesMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  CharactersTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CharactersTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      species: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}species'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      gender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $CharactersTableTable createAlias(String alias) {
    return $CharactersTableTable(attachedDatabase, alias);
  }
}

class CharactersTableData extends DataClass
    implements Insertable<CharactersTableData> {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final String image;
  final String url;
  final String createdAt;
  const CharactersTableData(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.type,
      required this.gender,
      required this.image,
      required this.url,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['status'] = Variable<String>(status);
    map['species'] = Variable<String>(species);
    map['type'] = Variable<String>(type);
    map['gender'] = Variable<String>(gender);
    map['image'] = Variable<String>(image);
    map['url'] = Variable<String>(url);
    map['created_at'] = Variable<String>(createdAt);
    return map;
  }

  CharactersTableCompanion toCompanion(bool nullToAbsent) {
    return CharactersTableCompanion(
      id: Value(id),
      name: Value(name),
      status: Value(status),
      species: Value(species),
      type: Value(type),
      gender: Value(gender),
      image: Value(image),
      url: Value(url),
      createdAt: Value(createdAt),
    );
  }

  factory CharactersTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CharactersTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      status: serializer.fromJson<String>(json['status']),
      species: serializer.fromJson<String>(json['species']),
      type: serializer.fromJson<String>(json['type']),
      gender: serializer.fromJson<String>(json['gender']),
      image: serializer.fromJson<String>(json['image']),
      url: serializer.fromJson<String>(json['url']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'status': serializer.toJson<String>(status),
      'species': serializer.toJson<String>(species),
      'type': serializer.toJson<String>(type),
      'gender': serializer.toJson<String>(gender),
      'image': serializer.toJson<String>(image),
      'url': serializer.toJson<String>(url),
      'createdAt': serializer.toJson<String>(createdAt),
    };
  }

  CharactersTableData copyWith(
          {int? id,
          String? name,
          String? status,
          String? species,
          String? type,
          String? gender,
          String? image,
          String? url,
          String? createdAt}) =>
      CharactersTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        status: status ?? this.status,
        species: species ?? this.species,
        type: type ?? this.type,
        gender: gender ?? this.gender,
        image: image ?? this.image,
        url: url ?? this.url,
        createdAt: createdAt ?? this.createdAt,
      );
  CharactersTableData copyWithCompanion(CharactersTableCompanion data) {
    return CharactersTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      status: data.status.present ? data.status.value : this.status,
      species: data.species.present ? data.species.value : this.species,
      type: data.type.present ? data.type.value : this.type,
      gender: data.gender.present ? data.gender.value : this.gender,
      image: data.image.present ? data.image.value : this.image,
      url: data.url.present ? data.url.value : this.url,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CharactersTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('status: $status, ')
          ..write('species: $species, ')
          ..write('type: $type, ')
          ..write('gender: $gender, ')
          ..write('image: $image, ')
          ..write('url: $url, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, name, status, species, type, gender, image, url, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CharactersTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.status == this.status &&
          other.species == this.species &&
          other.type == this.type &&
          other.gender == this.gender &&
          other.image == this.image &&
          other.url == this.url &&
          other.createdAt == this.createdAt);
}

class CharactersTableCompanion extends UpdateCompanion<CharactersTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> status;
  final Value<String> species;
  final Value<String> type;
  final Value<String> gender;
  final Value<String> image;
  final Value<String> url;
  final Value<String> createdAt;
  final Value<int> rowid;
  const CharactersTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.status = const Value.absent(),
    this.species = const Value.absent(),
    this.type = const Value.absent(),
    this.gender = const Value.absent(),
    this.image = const Value.absent(),
    this.url = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CharactersTableCompanion.insert({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required String image,
    required String url,
    required String createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        status = Value(status),
        species = Value(species),
        type = Value(type),
        gender = Value(gender),
        image = Value(image),
        url = Value(url),
        createdAt = Value(createdAt);
  static Insertable<CharactersTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? status,
    Expression<String>? species,
    Expression<String>? type,
    Expression<String>? gender,
    Expression<String>? image,
    Expression<String>? url,
    Expression<String>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (status != null) 'status': status,
      if (species != null) 'species': species,
      if (type != null) 'type': type,
      if (gender != null) 'gender': gender,
      if (image != null) 'image': image,
      if (url != null) 'url': url,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CharactersTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? status,
      Value<String>? species,
      Value<String>? type,
      Value<String>? gender,
      Value<String>? image,
      Value<String>? url,
      Value<String>? createdAt,
      Value<int>? rowid}) {
    return CharactersTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
      species: species ?? this.species,
      type: type ?? this.type,
      gender: gender ?? this.gender,
      image: image ?? this.image,
      url: url ?? this.url,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (species.present) {
      map['species'] = Variable<String>(species.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CharactersTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('status: $status, ')
          ..write('species: $species, ')
          ..write('type: $type, ')
          ..write('gender: $gender, ')
          ..write('image: $image, ')
          ..write('url: $url, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CharacterLocationsTableTable extends CharacterLocationsTable
    with TableInfo<$CharacterLocationsTableTable, CharacterLocationsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CharacterLocationsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _characterIdMeta =
      const VerificationMeta('characterId');
  @override
  late final GeneratedColumn<int> characterId = GeneratedColumn<int>(
      'character_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, characterId, name, url];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'character_locations_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<CharacterLocationsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('character_id')) {
      context.handle(
          _characterIdMeta,
          characterId.isAcceptableOrUnknown(
              data['character_id']!, _characterIdMeta));
    } else if (isInserting) {
      context.missing(_characterIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CharacterLocationsTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CharacterLocationsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      characterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}character_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
    );
  }

  @override
  $CharacterLocationsTableTable createAlias(String alias) {
    return $CharacterLocationsTableTable(attachedDatabase, alias);
  }
}

class CharacterLocationsTableData extends DataClass
    implements Insertable<CharacterLocationsTableData> {
  final int id;
  final int characterId;
  final String name;
  final String url;
  const CharacterLocationsTableData(
      {required this.id,
      required this.characterId,
      required this.name,
      required this.url});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['character_id'] = Variable<int>(characterId);
    map['name'] = Variable<String>(name);
    map['url'] = Variable<String>(url);
    return map;
  }

  CharacterLocationsTableCompanion toCompanion(bool nullToAbsent) {
    return CharacterLocationsTableCompanion(
      id: Value(id),
      characterId: Value(characterId),
      name: Value(name),
      url: Value(url),
    );
  }

  factory CharacterLocationsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CharacterLocationsTableData(
      id: serializer.fromJson<int>(json['id']),
      characterId: serializer.fromJson<int>(json['characterId']),
      name: serializer.fromJson<String>(json['name']),
      url: serializer.fromJson<String>(json['url']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'characterId': serializer.toJson<int>(characterId),
      'name': serializer.toJson<String>(name),
      'url': serializer.toJson<String>(url),
    };
  }

  CharacterLocationsTableData copyWith(
          {int? id, int? characterId, String? name, String? url}) =>
      CharacterLocationsTableData(
        id: id ?? this.id,
        characterId: characterId ?? this.characterId,
        name: name ?? this.name,
        url: url ?? this.url,
      );
  CharacterLocationsTableData copyWithCompanion(
      CharacterLocationsTableCompanion data) {
    return CharacterLocationsTableData(
      id: data.id.present ? data.id.value : this.id,
      characterId:
          data.characterId.present ? data.characterId.value : this.characterId,
      name: data.name.present ? data.name.value : this.name,
      url: data.url.present ? data.url.value : this.url,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CharacterLocationsTableData(')
          ..write('id: $id, ')
          ..write('characterId: $characterId, ')
          ..write('name: $name, ')
          ..write('url: $url')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, characterId, name, url);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CharacterLocationsTableData &&
          other.id == this.id &&
          other.characterId == this.characterId &&
          other.name == this.name &&
          other.url == this.url);
}

class CharacterLocationsTableCompanion
    extends UpdateCompanion<CharacterLocationsTableData> {
  final Value<int> id;
  final Value<int> characterId;
  final Value<String> name;
  final Value<String> url;
  const CharacterLocationsTableCompanion({
    this.id = const Value.absent(),
    this.characterId = const Value.absent(),
    this.name = const Value.absent(),
    this.url = const Value.absent(),
  });
  CharacterLocationsTableCompanion.insert({
    this.id = const Value.absent(),
    required int characterId,
    required String name,
    required String url,
  })  : characterId = Value(characterId),
        name = Value(name),
        url = Value(url);
  static Insertable<CharacterLocationsTableData> custom({
    Expression<int>? id,
    Expression<int>? characterId,
    Expression<String>? name,
    Expression<String>? url,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (characterId != null) 'character_id': characterId,
      if (name != null) 'name': name,
      if (url != null) 'url': url,
    });
  }

  CharacterLocationsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? characterId,
      Value<String>? name,
      Value<String>? url}) {
    return CharacterLocationsTableCompanion(
      id: id ?? this.id,
      characterId: characterId ?? this.characterId,
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (characterId.present) {
      map['character_id'] = Variable<int>(characterId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CharacterLocationsTableCompanion(')
          ..write('id: $id, ')
          ..write('characterId: $characterId, ')
          ..write('name: $name, ')
          ..write('url: $url')
          ..write(')'))
        .toString();
  }
}

class $EpisodesTableTable extends EpisodesTable
    with TableInfo<$EpisodesTableTable, EpisodesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EpisodesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _episodeMeta =
      const VerificationMeta('episode');
  @override
  late final GeneratedColumn<String> episode = GeneratedColumn<String>(
      'episode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, episode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'episodes_table';
  @override
  VerificationContext validateIntegrity(Insertable<EpisodesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('episode')) {
      context.handle(_episodeMeta,
          episode.isAcceptableOrUnknown(data['episode']!, _episodeMeta));
    } else if (isInserting) {
      context.missing(_episodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EpisodesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EpisodesTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      episode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}episode'])!,
    );
  }

  @override
  $EpisodesTableTable createAlias(String alias) {
    return $EpisodesTableTable(attachedDatabase, alias);
  }
}

class EpisodesTableData extends DataClass
    implements Insertable<EpisodesTableData> {
  final int id;
  final String episode;
  const EpisodesTableData({required this.id, required this.episode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['episode'] = Variable<String>(episode);
    return map;
  }

  EpisodesTableCompanion toCompanion(bool nullToAbsent) {
    return EpisodesTableCompanion(
      id: Value(id),
      episode: Value(episode),
    );
  }

  factory EpisodesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EpisodesTableData(
      id: serializer.fromJson<int>(json['id']),
      episode: serializer.fromJson<String>(json['episode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'episode': serializer.toJson<String>(episode),
    };
  }

  EpisodesTableData copyWith({int? id, String? episode}) => EpisodesTableData(
        id: id ?? this.id,
        episode: episode ?? this.episode,
      );
  EpisodesTableData copyWithCompanion(EpisodesTableCompanion data) {
    return EpisodesTableData(
      id: data.id.present ? data.id.value : this.id,
      episode: data.episode.present ? data.episode.value : this.episode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EpisodesTableData(')
          ..write('id: $id, ')
          ..write('episode: $episode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, episode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EpisodesTableData &&
          other.id == this.id &&
          other.episode == this.episode);
}

class EpisodesTableCompanion extends UpdateCompanion<EpisodesTableData> {
  final Value<int> id;
  final Value<String> episode;
  const EpisodesTableCompanion({
    this.id = const Value.absent(),
    this.episode = const Value.absent(),
  });
  EpisodesTableCompanion.insert({
    this.id = const Value.absent(),
    required String episode,
  }) : episode = Value(episode);
  static Insertable<EpisodesTableData> custom({
    Expression<int>? id,
    Expression<String>? episode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (episode != null) 'episode': episode,
    });
  }

  EpisodesTableCompanion copyWith({Value<int>? id, Value<String>? episode}) {
    return EpisodesTableCompanion(
      id: id ?? this.id,
      episode: episode ?? this.episode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (episode.present) {
      map['episode'] = Variable<String>(episode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EpisodesTableCompanion(')
          ..write('id: $id, ')
          ..write('episode: $episode')
          ..write(')'))
        .toString();
  }
}

class $CharactersEpisodesTableTable extends CharactersEpisodesTable
    with TableInfo<$CharactersEpisodesTableTable, CharactersEpisodesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CharactersEpisodesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _characterIdMeta =
      const VerificationMeta('characterId');
  @override
  late final GeneratedColumn<int> characterId = GeneratedColumn<int>(
      'character_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _episodeIdMeta =
      const VerificationMeta('episodeId');
  @override
  late final GeneratedColumn<int> episodeId = GeneratedColumn<int>(
      'episode_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [characterId, episodeId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'characters_episodes_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<CharactersEpisodesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('character_id')) {
      context.handle(
          _characterIdMeta,
          characterId.isAcceptableOrUnknown(
              data['character_id']!, _characterIdMeta));
    } else if (isInserting) {
      context.missing(_characterIdMeta);
    }
    if (data.containsKey('episode_id')) {
      context.handle(_episodeIdMeta,
          episodeId.isAcceptableOrUnknown(data['episode_id']!, _episodeIdMeta));
    } else if (isInserting) {
      context.missing(_episodeIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {characterId, episodeId};
  @override
  CharactersEpisodesTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CharactersEpisodesTableData(
      characterId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}character_id'])!,
      episodeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}episode_id'])!,
    );
  }

  @override
  $CharactersEpisodesTableTable createAlias(String alias) {
    return $CharactersEpisodesTableTable(attachedDatabase, alias);
  }
}

class CharactersEpisodesTableData extends DataClass
    implements Insertable<CharactersEpisodesTableData> {
  final int characterId;
  final int episodeId;
  const CharactersEpisodesTableData(
      {required this.characterId, required this.episodeId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['character_id'] = Variable<int>(characterId);
    map['episode_id'] = Variable<int>(episodeId);
    return map;
  }

  CharactersEpisodesTableCompanion toCompanion(bool nullToAbsent) {
    return CharactersEpisodesTableCompanion(
      characterId: Value(characterId),
      episodeId: Value(episodeId),
    );
  }

  factory CharactersEpisodesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CharactersEpisodesTableData(
      characterId: serializer.fromJson<int>(json['characterId']),
      episodeId: serializer.fromJson<int>(json['episodeId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'characterId': serializer.toJson<int>(characterId),
      'episodeId': serializer.toJson<int>(episodeId),
    };
  }

  CharactersEpisodesTableData copyWith({int? characterId, int? episodeId}) =>
      CharactersEpisodesTableData(
        characterId: characterId ?? this.characterId,
        episodeId: episodeId ?? this.episodeId,
      );
  CharactersEpisodesTableData copyWithCompanion(
      CharactersEpisodesTableCompanion data) {
    return CharactersEpisodesTableData(
      characterId:
          data.characterId.present ? data.characterId.value : this.characterId,
      episodeId: data.episodeId.present ? data.episodeId.value : this.episodeId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CharactersEpisodesTableData(')
          ..write('characterId: $characterId, ')
          ..write('episodeId: $episodeId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(characterId, episodeId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CharactersEpisodesTableData &&
          other.characterId == this.characterId &&
          other.episodeId == this.episodeId);
}

class CharactersEpisodesTableCompanion
    extends UpdateCompanion<CharactersEpisodesTableData> {
  final Value<int> characterId;
  final Value<int> episodeId;
  final Value<int> rowid;
  const CharactersEpisodesTableCompanion({
    this.characterId = const Value.absent(),
    this.episodeId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CharactersEpisodesTableCompanion.insert({
    required int characterId,
    required int episodeId,
    this.rowid = const Value.absent(),
  })  : characterId = Value(characterId),
        episodeId = Value(episodeId);
  static Insertable<CharactersEpisodesTableData> custom({
    Expression<int>? characterId,
    Expression<int>? episodeId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (characterId != null) 'character_id': characterId,
      if (episodeId != null) 'episode_id': episodeId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CharactersEpisodesTableCompanion copyWith(
      {Value<int>? characterId, Value<int>? episodeId, Value<int>? rowid}) {
    return CharactersEpisodesTableCompanion(
      characterId: characterId ?? this.characterId,
      episodeId: episodeId ?? this.episodeId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (characterId.present) {
      map['character_id'] = Variable<int>(characterId.value);
    }
    if (episodeId.present) {
      map['episode_id'] = Variable<int>(episodeId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CharactersEpisodesTableCompanion(')
          ..write('characterId: $characterId, ')
          ..write('episodeId: $episodeId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CharactersTableTable charactersTable =
      $CharactersTableTable(this);
  late final $CharacterLocationsTableTable characterLocationsTable =
      $CharacterLocationsTableTable(this);
  late final $EpisodesTableTable episodesTable = $EpisodesTableTable(this);
  late final $CharactersEpisodesTableTable charactersEpisodesTable =
      $CharactersEpisodesTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        charactersTable,
        characterLocationsTable,
        episodesTable,
        charactersEpisodesTable
      ];
}

typedef $$CharactersTableTableCreateCompanionBuilder = CharactersTableCompanion
    Function({
  required int id,
  required String name,
  required String status,
  required String species,
  required String type,
  required String gender,
  required String image,
  required String url,
  required String createdAt,
  Value<int> rowid,
});
typedef $$CharactersTableTableUpdateCompanionBuilder = CharactersTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String> status,
  Value<String> species,
  Value<String> type,
  Value<String> gender,
  Value<String> image,
  Value<String> url,
  Value<String> createdAt,
  Value<int> rowid,
});

class $$CharactersTableTableFilterComposer
    extends Composer<_$AppDatabase, $CharactersTableTable> {
  $$CharactersTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get species => $composableBuilder(
      column: $table.species, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$CharactersTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CharactersTableTable> {
  $$CharactersTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get species => $composableBuilder(
      column: $table.species, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$CharactersTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CharactersTableTable> {
  $$CharactersTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get species =>
      $composableBuilder(column: $table.species, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$CharactersTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CharactersTableTable,
    CharactersTableData,
    $$CharactersTableTableFilterComposer,
    $$CharactersTableTableOrderingComposer,
    $$CharactersTableTableAnnotationComposer,
    $$CharactersTableTableCreateCompanionBuilder,
    $$CharactersTableTableUpdateCompanionBuilder,
    (
      CharactersTableData,
      BaseReferences<_$AppDatabase, $CharactersTableTable, CharactersTableData>
    ),
    CharactersTableData,
    PrefetchHooks Function()> {
  $$CharactersTableTableTableManager(
      _$AppDatabase db, $CharactersTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CharactersTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CharactersTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CharactersTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String> species = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String> gender = const Value.absent(),
            Value<String> image = const Value.absent(),
            Value<String> url = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CharactersTableCompanion(
            id: id,
            name: name,
            status: status,
            species: species,
            type: type,
            gender: gender,
            image: image,
            url: url,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required String name,
            required String status,
            required String species,
            required String type,
            required String gender,
            required String image,
            required String url,
            required String createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              CharactersTableCompanion.insert(
            id: id,
            name: name,
            status: status,
            species: species,
            type: type,
            gender: gender,
            image: image,
            url: url,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CharactersTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CharactersTableTable,
    CharactersTableData,
    $$CharactersTableTableFilterComposer,
    $$CharactersTableTableOrderingComposer,
    $$CharactersTableTableAnnotationComposer,
    $$CharactersTableTableCreateCompanionBuilder,
    $$CharactersTableTableUpdateCompanionBuilder,
    (
      CharactersTableData,
      BaseReferences<_$AppDatabase, $CharactersTableTable, CharactersTableData>
    ),
    CharactersTableData,
    PrefetchHooks Function()>;
typedef $$CharacterLocationsTableTableCreateCompanionBuilder
    = CharacterLocationsTableCompanion Function({
  Value<int> id,
  required int characterId,
  required String name,
  required String url,
});
typedef $$CharacterLocationsTableTableUpdateCompanionBuilder
    = CharacterLocationsTableCompanion Function({
  Value<int> id,
  Value<int> characterId,
  Value<String> name,
  Value<String> url,
});

class $$CharacterLocationsTableTableFilterComposer
    extends Composer<_$AppDatabase, $CharacterLocationsTableTable> {
  $$CharacterLocationsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get characterId => $composableBuilder(
      column: $table.characterId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnFilters(column));
}

class $$CharacterLocationsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CharacterLocationsTableTable> {
  $$CharacterLocationsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get characterId => $composableBuilder(
      column: $table.characterId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url, builder: (column) => ColumnOrderings(column));
}

class $$CharacterLocationsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CharacterLocationsTableTable> {
  $$CharacterLocationsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get characterId => $composableBuilder(
      column: $table.characterId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);
}

class $$CharacterLocationsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CharacterLocationsTableTable,
    CharacterLocationsTableData,
    $$CharacterLocationsTableTableFilterComposer,
    $$CharacterLocationsTableTableOrderingComposer,
    $$CharacterLocationsTableTableAnnotationComposer,
    $$CharacterLocationsTableTableCreateCompanionBuilder,
    $$CharacterLocationsTableTableUpdateCompanionBuilder,
    (
      CharacterLocationsTableData,
      BaseReferences<_$AppDatabase, $CharacterLocationsTableTable,
          CharacterLocationsTableData>
    ),
    CharacterLocationsTableData,
    PrefetchHooks Function()> {
  $$CharacterLocationsTableTableTableManager(
      _$AppDatabase db, $CharacterLocationsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CharacterLocationsTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$CharacterLocationsTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CharacterLocationsTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> characterId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> url = const Value.absent(),
          }) =>
              CharacterLocationsTableCompanion(
            id: id,
            characterId: characterId,
            name: name,
            url: url,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int characterId,
            required String name,
            required String url,
          }) =>
              CharacterLocationsTableCompanion.insert(
            id: id,
            characterId: characterId,
            name: name,
            url: url,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CharacterLocationsTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $CharacterLocationsTableTable,
        CharacterLocationsTableData,
        $$CharacterLocationsTableTableFilterComposer,
        $$CharacterLocationsTableTableOrderingComposer,
        $$CharacterLocationsTableTableAnnotationComposer,
        $$CharacterLocationsTableTableCreateCompanionBuilder,
        $$CharacterLocationsTableTableUpdateCompanionBuilder,
        (
          CharacterLocationsTableData,
          BaseReferences<_$AppDatabase, $CharacterLocationsTableTable,
              CharacterLocationsTableData>
        ),
        CharacterLocationsTableData,
        PrefetchHooks Function()>;
typedef $$EpisodesTableTableCreateCompanionBuilder = EpisodesTableCompanion
    Function({
  Value<int> id,
  required String episode,
});
typedef $$EpisodesTableTableUpdateCompanionBuilder = EpisodesTableCompanion
    Function({
  Value<int> id,
  Value<String> episode,
});

class $$EpisodesTableTableFilterComposer
    extends Composer<_$AppDatabase, $EpisodesTableTable> {
  $$EpisodesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get episode => $composableBuilder(
      column: $table.episode, builder: (column) => ColumnFilters(column));
}

class $$EpisodesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $EpisodesTableTable> {
  $$EpisodesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get episode => $composableBuilder(
      column: $table.episode, builder: (column) => ColumnOrderings(column));
}

class $$EpisodesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $EpisodesTableTable> {
  $$EpisodesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get episode =>
      $composableBuilder(column: $table.episode, builder: (column) => column);
}

class $$EpisodesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EpisodesTableTable,
    EpisodesTableData,
    $$EpisodesTableTableFilterComposer,
    $$EpisodesTableTableOrderingComposer,
    $$EpisodesTableTableAnnotationComposer,
    $$EpisodesTableTableCreateCompanionBuilder,
    $$EpisodesTableTableUpdateCompanionBuilder,
    (
      EpisodesTableData,
      BaseReferences<_$AppDatabase, $EpisodesTableTable, EpisodesTableData>
    ),
    EpisodesTableData,
    PrefetchHooks Function()> {
  $$EpisodesTableTableTableManager(_$AppDatabase db, $EpisodesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EpisodesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EpisodesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EpisodesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> episode = const Value.absent(),
          }) =>
              EpisodesTableCompanion(
            id: id,
            episode: episode,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String episode,
          }) =>
              EpisodesTableCompanion.insert(
            id: id,
            episode: episode,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$EpisodesTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $EpisodesTableTable,
    EpisodesTableData,
    $$EpisodesTableTableFilterComposer,
    $$EpisodesTableTableOrderingComposer,
    $$EpisodesTableTableAnnotationComposer,
    $$EpisodesTableTableCreateCompanionBuilder,
    $$EpisodesTableTableUpdateCompanionBuilder,
    (
      EpisodesTableData,
      BaseReferences<_$AppDatabase, $EpisodesTableTable, EpisodesTableData>
    ),
    EpisodesTableData,
    PrefetchHooks Function()>;
typedef $$CharactersEpisodesTableTableCreateCompanionBuilder
    = CharactersEpisodesTableCompanion Function({
  required int characterId,
  required int episodeId,
  Value<int> rowid,
});
typedef $$CharactersEpisodesTableTableUpdateCompanionBuilder
    = CharactersEpisodesTableCompanion Function({
  Value<int> characterId,
  Value<int> episodeId,
  Value<int> rowid,
});

class $$CharactersEpisodesTableTableFilterComposer
    extends Composer<_$AppDatabase, $CharactersEpisodesTableTable> {
  $$CharactersEpisodesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get characterId => $composableBuilder(
      column: $table.characterId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get episodeId => $composableBuilder(
      column: $table.episodeId, builder: (column) => ColumnFilters(column));
}

class $$CharactersEpisodesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CharactersEpisodesTableTable> {
  $$CharactersEpisodesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get characterId => $composableBuilder(
      column: $table.characterId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get episodeId => $composableBuilder(
      column: $table.episodeId, builder: (column) => ColumnOrderings(column));
}

class $$CharactersEpisodesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CharactersEpisodesTableTable> {
  $$CharactersEpisodesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get characterId => $composableBuilder(
      column: $table.characterId, builder: (column) => column);

  GeneratedColumn<int> get episodeId =>
      $composableBuilder(column: $table.episodeId, builder: (column) => column);
}

class $$CharactersEpisodesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CharactersEpisodesTableTable,
    CharactersEpisodesTableData,
    $$CharactersEpisodesTableTableFilterComposer,
    $$CharactersEpisodesTableTableOrderingComposer,
    $$CharactersEpisodesTableTableAnnotationComposer,
    $$CharactersEpisodesTableTableCreateCompanionBuilder,
    $$CharactersEpisodesTableTableUpdateCompanionBuilder,
    (
      CharactersEpisodesTableData,
      BaseReferences<_$AppDatabase, $CharactersEpisodesTableTable,
          CharactersEpisodesTableData>
    ),
    CharactersEpisodesTableData,
    PrefetchHooks Function()> {
  $$CharactersEpisodesTableTableTableManager(
      _$AppDatabase db, $CharactersEpisodesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CharactersEpisodesTableTableFilterComposer(
                  $db: db, $table: table),
          createOrderingComposer: () =>
              $$CharactersEpisodesTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CharactersEpisodesTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> characterId = const Value.absent(),
            Value<int> episodeId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CharactersEpisodesTableCompanion(
            characterId: characterId,
            episodeId: episodeId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int characterId,
            required int episodeId,
            Value<int> rowid = const Value.absent(),
          }) =>
              CharactersEpisodesTableCompanion.insert(
            characterId: characterId,
            episodeId: episodeId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CharactersEpisodesTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $CharactersEpisodesTableTable,
        CharactersEpisodesTableData,
        $$CharactersEpisodesTableTableFilterComposer,
        $$CharactersEpisodesTableTableOrderingComposer,
        $$CharactersEpisodesTableTableAnnotationComposer,
        $$CharactersEpisodesTableTableCreateCompanionBuilder,
        $$CharactersEpisodesTableTableUpdateCompanionBuilder,
        (
          CharactersEpisodesTableData,
          BaseReferences<_$AppDatabase, $CharactersEpisodesTableTable,
              CharactersEpisodesTableData>
        ),
        CharactersEpisodesTableData,
        PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CharactersTableTableTableManager get charactersTable =>
      $$CharactersTableTableTableManager(_db, _db.charactersTable);
  $$CharacterLocationsTableTableTableManager get characterLocationsTable =>
      $$CharacterLocationsTableTableTableManager(
          _db, _db.characterLocationsTable);
  $$EpisodesTableTableTableManager get episodesTable =>
      $$EpisodesTableTableTableManager(_db, _db.episodesTable);
  $$CharactersEpisodesTableTableTableManager get charactersEpisodesTable =>
      $$CharactersEpisodesTableTableTableManager(
          _db, _db.charactersEpisodesTable);
}
