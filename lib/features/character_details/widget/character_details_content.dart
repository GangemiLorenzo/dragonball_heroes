import 'package:dragonball_heroes/features/character_details/widget/widget.dart';
import 'package:dragonball_heroes/features/models/character_model.dart';
import 'package:flutter/material.dart';

class CharacterDetailsContent extends StatelessWidget {
  const CharacterDetailsContent({
    super.key,
    required this.character,
    required this.isLoadingDetails,
  });

  final CharacterModel character;
  final bool isLoadingDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Planet Section
          PlanetSection(
            character: character,
            isLoadingDetails: isLoadingDetails,
          ),
          const SizedBox(height: 24),

          // Transformations Section
          TransformationsSection(
            character: character,
            isLoadingDetails: isLoadingDetails,
          ),
          const SizedBox(height: 24),

          // Description Section
          DescriptionSection(character: character),
          const SizedBox(height: 128),
        ],
      ),
    );
  }
}
