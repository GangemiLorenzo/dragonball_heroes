import 'package:dragonball_heroes/features/models/character_model.dart';
import 'package:dragonball_heroes/foundation/global.dart';
import 'package:flutter/material.dart';

class PlanetSection extends StatelessWidget {
  const PlanetSection({
    super.key,
    required this.character,
    required this.isLoadingDetails,
  });

  final CharacterModel character;
  final bool isLoadingDetails;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.public,
                  size: 20,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  l10n.originPlanet,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (isLoadingDetails)
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: CircularProgressIndicator(),
                ),
              )
            else ...[
              Text(
                character.originPlanet?.name ?? l10n.unknown,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              if (character.originPlanet?.description.isNotEmpty ?? false) ...[
                const SizedBox(height: 8),
                Text(
                  character.originPlanet!.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
              if (character.originPlanet?.isDestroyed ?? false) ...[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    l10n.destroyed,
                    style: TextStyle(
                      color: Colors.red.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ],
          ],
        ),
      ),
    );
  }
}
