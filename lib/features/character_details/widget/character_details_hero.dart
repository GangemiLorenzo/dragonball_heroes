import 'dart:ui';

import 'package:dragonball_heroes/features/models/character_model.dart';
import 'package:flutter/material.dart';

class CharacterDetailsHero extends StatelessWidget {
  const CharacterDetailsHero({super.key, required this.character});

  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'character-avatar-${character.id}',
      child: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withAlpha(75),
              BlendMode.srcATop,
            ),
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Image.network(
                character.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.transparent,
                    width: 80,
                    height: 80,
                  );
                },
              ),
            ),
          ),
          Image.network(
            character.imageUrl,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Theme.of(context).colorScheme.surface,
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
