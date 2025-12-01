import 'package:dart_mappable/dart_mappable.dart';

import 'common_dto.dart';

part 'character_dto.mapper.dart';

@MappableClass()
class CharacterDto with CharacterDtoMappable {
  const CharacterDto({
    required this.id,
    required this.name,
    required this.ki,
    required this.maxKi,
    required this.race,
    required this.gender,
    required this.description,
    required this.image,
    required this.affiliation,
    this.deletedAt,
    this.originPlanet,
    this.transformations,
  });

  final int id;
  final String name;
  final String ki;
  final String maxKi;
  final String race;
  final String gender;
  final String description;
  final String image;
  final String affiliation;
  final String? deletedAt;
  final OriginPlanet? originPlanet;
  final List<CharacterTransformation>? transformations;
}

@MappableClass()
class CharacterResponse with CharacterResponseMappable {
  const CharacterResponse({
    required this.items,
    required this.meta,
    required this.links,
  });

  final List<CharacterDto> items;
  final MetaDto meta;
  final LinksDto links;
}

@MappableClass()
class OriginPlanet with OriginPlanetMappable {
  const OriginPlanet({
    required this.id,
    required this.name,
    required this.isDestroyed,
    required this.description,
    required this.image,
    this.deletedAt,
  });

  final int id;
  final String name;
  final bool isDestroyed;
  final String description;
  final String image;
  final String? deletedAt;
}

@MappableClass()
class CharacterTransformation with CharacterTransformationMappable {
  const CharacterTransformation({
    required this.id,
    required this.name,
    required this.image,
    required this.ki,
    this.deletedAt,
  });

  final int id;
  final String name;
  final String image;
  final String ki;
  final String? deletedAt;
}
