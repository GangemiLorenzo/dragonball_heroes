import 'package:dragonball_heroes/foundation/global.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmptyCharacterPage extends StatelessWidget {
  const EmptyCharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(l10n.characterDetails)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              l10n.characterNotFound,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: Text(l10n.backToCharactersList),
            ),
          ],
        ),
      ),
    );
  }
}
