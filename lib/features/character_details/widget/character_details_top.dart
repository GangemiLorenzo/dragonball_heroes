import 'package:dragonball_heroes/features/character_details/widget/widget.dart';
import 'package:dragonball_heroes/features/models/character_model.dart';
import 'package:flutter/material.dart';

class CharacterDetailsTop extends StatelessWidget {
  const CharacterDetailsTop({super.key, required this.character});

  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.60,

      child: Stack(
        children: [
          Positioned.fill(
            bottom: 128,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.primaryContainer,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: _buildTitle(context: context, character: character),
          ),
          Positioned(
            left: 128,
            bottom: 0,
            top: 64,
            child: CharacterDetailsHero(character: character),
          ),
        ],
      ),
    );
  }
}

Widget _buildTitle({
  required BuildContext context,
  required CharacterModel character,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          character.displayName,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(
              character.genderIcon,
              size: 18,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 4),
            Text(
              character.gender,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface.withAlpha(190),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: character.affiliationColor.withAlpha(50),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: character.affiliationColor.withAlpha(125),
            ),
          ),
          child: Text(
            character.displayAffiliation,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: character.affiliationColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    ),
  );
}
