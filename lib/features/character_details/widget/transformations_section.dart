import 'package:dragonball_heroes/features/character_details/widget/widget.dart';
import 'package:dragonball_heroes/features/models/character_model.dart';
import 'package:dragonball_heroes/foundation/global.dart';
import 'package:flutter/material.dart';

class TransformationsSection extends StatelessWidget {
  const TransformationsSection({
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
                  Icons.flash_on,
                  size: 20,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(width: 8),
                Text(
                  l10n.transformations,
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
            else if (character.transformations?.isEmpty ?? true)
              Text(
                l10n.noTransformationsAvailable,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(fontStyle: FontStyle.italic),
              )
            else
              Column(
                children: character.transformations!
                    .map(
                      (transformation) =>
                          TransformationCard(transformation: transformation),
                    )
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }
}
