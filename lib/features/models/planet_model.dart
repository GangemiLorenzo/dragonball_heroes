import 'package:dart_mappable/dart_mappable.dart';
import 'package:dragonball_heroes/api/models/character_dto.dart'
    show OriginPlanet;
import 'package:flutter/material.dart';

part 'planet_model.mapper.dart';

@MappableClass()
class PlanetModel with PlanetModelMappable {
  const PlanetModel({
    required this.id,
    required this.name,
    required this.isDestroyed,
    required this.description,
    required this.imageUrl,
    this.deletedAt,
  });

  factory PlanetModel.fromDto(OriginPlanet dto) {
    return PlanetModel(
      id: dto.id,
      name: dto.name,
      isDestroyed: dto.isDestroyed,
      description: dto.description,
      imageUrl: dto.image,
      deletedAt: dto.deletedAt,
    );
  }

  final int id;
  final String name;
  final bool isDestroyed;
  final String description;
  final String imageUrl;
  final String? deletedAt;

  // UI-friendly utility methods
  String get displayName => name;

  String get statusText => isDestroyed ? 'Destroyed' : 'Intact';

  Color get statusColor => isDestroyed ? Colors.red : Colors.green;

  IconData get statusIcon => isDestroyed ? Icons.dangerous : Icons.public;
}
