import 'package:dragonball_heroes/app/dragonball_theme.dart';
import 'package:dragonball_heroes/foundation/foundation.dart';
import 'package:dragonball_heroes/l10n/l10n.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      routerConfig: appRouter,
      theme: dragonBallZTheme,
      darkTheme: dragonBallZDarkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
