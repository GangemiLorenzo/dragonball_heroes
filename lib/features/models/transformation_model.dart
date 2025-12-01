import 'package:dart_mappable/dart_mappable.dart';
import 'package:dragonball_heroes/api/models/character_dto.dart'
    show CharacterTransformation;

part 'transformation_model.mapper.dart';

@MappableClass()
class TransformationModel with TransformationModelMappable {
  const TransformationModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.ki,
    this.deletedAt,
  });

  factory TransformationModel.fromDto(CharacterTransformation dto) {
    return TransformationModel(
      id: dto.id,
      name: dto.name,
      imageUrl: dto.image,
      ki: dto.ki,
      deletedAt: dto.deletedAt,
    );
  }

  final int id;
  final String name;
  final String imageUrl;
  final String ki;
  final String? deletedAt;

  // UI-friendly utility methods
  String get displayName => name;

  String get formattedKi => _formatPowerLevel(ki);

  String _formatPowerLevel(String powerLevel) {
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
