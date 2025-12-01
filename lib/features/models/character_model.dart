import 'package:dart_mappable/dart_mappable.dart';
import 'package:dragonball_heroes/api/models/character_dto.dart'
    show CharacterDto;
import 'package:dragonball_heroes/features/models/planet_model.dart';
import 'package:dragonball_heroes/features/models/transformation_model.dart';
import 'package:flutter/material.dart';

part 'character_model.mapper.dart';

@MappableClass()
class CharacterModel with CharacterModelMappable {
  const CharacterModel({
    required this.id,
    required this.name,
    required this.ki,
    required this.maxKi,
    required this.race,
    required this.gender,
    required this.description,
    required this.imageUrl,
    required this.affiliation,
    this.deletedAt,
    this.originPlanet,
    this.transformations,
  });

  factory CharacterModel.fromDto(CharacterDto dto) {
    return CharacterModel(
      id: dto.id,
      name: dto.name,
      ki: dto.ki,
      maxKi: dto.maxKi,
      race: dto.race,
      gender: dto.gender,
      description: dto.description,
      imageUrl: dto.image,
      affiliation: dto.affiliation,
      deletedAt: dto.deletedAt,
      originPlanet: dto.originPlanet != null
          ? PlanetModel.fromDto(dto.originPlanet!)
          : null,
      transformations: dto.transformations
          ?.map(TransformationModel.fromDto)
          .toList(),
    );
  }

  final int id;
  final String name;
  final String ki;
  final String maxKi;
  final String race;
  final String gender;
  final String description;
  final String imageUrl;
  final String affiliation;
  final String? deletedAt;
  final PlanetModel? originPlanet;
  final List<TransformationModel>? transformations;

  // UI-friendly utility methods
  String get displayName => name;

  String get displayRace => race
      .replaceAll('_', ' ')
      .toLowerCase()
      .split(' ')
      .map(
        (word) => word.isNotEmpty
            ? '${word[0].toUpperCase()}${word.substring(1)}'
            : '',
      )
      .join(' ');

  String get displayGender => gender.toLowerCase() == 'male' ? '♂' : '♀';

  String get displayAffiliation => affiliation
      .replaceAll('_', ' ')
      .toLowerCase()
      .split(' ')
      .map(
        (word) => word.isNotEmpty
            ? '${word[0].toUpperCase()}${word.substring(1)}'
            : '',
      )
      .join(' ');

  String get formattedKi => _formatPowerLevel(ki);

  String get formattedMaxKi => _formatPowerLevel(maxKi);

  String get shortDescription => description.length > 100
      ? '${description.substring(0, 100)}...'
      : description;

  bool get isAlive => deletedAt == null;

  bool get hasTransformations =>
      transformations != null && transformations!.isNotEmpty;

  bool get hasOriginPlanet => originPlanet != null;

  Color get affiliationColor {
    switch (affiliation.toLowerCase()) {
      case 'z fighter':
      case 'z_fighter':
        return Colors.blue;
      case 'villain':
        return Colors.red;
      case 'neutral':
        return Colors.grey;
      case 'army':
        return Colors.orange;
      default:
        return Colors.purple;
    }
  }

  IconData get genderIcon {
    return gender.toLowerCase() == 'male' ? Icons.male : Icons.female;
  }

  String _formatPowerLevel(String powerLevel) {
    // Remove commas and convert to number for formatting
    final cleaned = powerLevel.replaceAll(',', '');
    final number = int.tryParse(cleaned);

    if (number == null) {
      return powerLevel;
    }

    if (number >= 1000000000000) {
      return '${(number / 1000000000000).toStringAsFixed(1)}T';
    } else if (number >= 1000000000) {
      return '${(number / 1000000000).toStringAsFixed(1)}B';
    } else if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    }

    return number.toString();
  }
}
