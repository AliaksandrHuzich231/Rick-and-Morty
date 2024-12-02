// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:character/src/character_details/ui/character_details_screen.dart'
    as _i1;
import 'package:character/src/character_list/ui/character_list_screen.dart'
    as _i2;
import 'package:domain/domain.dart' as _i5;
import 'package:flutter/cupertino.dart' as _i4;

/// generated route for
/// [_i1.CharacterDetailsScreen]
class CharacterDetailsRoute
    extends _i3.PageRouteInfo<CharacterDetailsRouteArgs> {
  CharacterDetailsRoute({
    _i4.Key? key,
    required _i5.Character character,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          CharacterDetailsRoute.name,
          args: CharacterDetailsRouteArgs(
            key: key,
            character: character,
          ),
          initialChildren: children,
        );

  static const String name = 'CharacterDetailsRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CharacterDetailsRouteArgs>();
      return _i1.CharacterDetailsScreen(
        key: args.key,
        character: args.character,
      );
    },
  );
}

class CharacterDetailsRouteArgs {
  const CharacterDetailsRouteArgs({
    this.key,
    required this.character,
  });

  final _i4.Key? key;

  final _i5.Character character;

  @override
  String toString() {
    return 'CharacterDetailsRouteArgs{key: $key, character: $character}';
  }
}

/// generated route for
/// [_i2.CharacterListScreen]
class CharacterListRoute extends _i3.PageRouteInfo<void> {
  const CharacterListRoute({List<_i3.PageRouteInfo>? children})
      : super(
          CharacterListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CharacterListRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.CharacterListScreen();
    },
  );
}
