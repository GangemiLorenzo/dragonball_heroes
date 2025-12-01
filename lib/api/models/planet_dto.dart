import 'package:dart_mappable/dart_mappable.dart';

import 'common_dto.dart';

part 'planet_dto.mapper.dart';

@MappableClass()
class PlanetDto with PlanetDtoMappable {
  const PlanetDto({
    required this.id,
    required this.name,
    required this.isDestroyed,
    required this.description,
    required this.image,
    this.deletedAt,
    this.characters,
  });

  final int id;
  final String name;
  final bool isDestroyed;
  final String description;
  final String image;
  final String? deletedAt;
  final List<PlanetCharacter>? characters;
}

@MappableClass()
class PlanetResponse with PlanetResponseMappable {
  const PlanetResponse({
    required this.items,
    required this.meta,
    required this.links,
  });

  final List<PlanetDto> items;
  final MetaDto meta;
  final LinksDto links;
}

@MappableClass()
class PlanetCharacter with PlanetCharacterMappable {
  const PlanetCharacter({
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
}
