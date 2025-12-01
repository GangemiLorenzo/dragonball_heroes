import 'package:dragonball_heroes/l10n/gen/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

AppLocalizations get l10n =>
    AppLocalizations.of(rootScaffoldMessengerKey.currentState!.context);

final getIt = GetIt.instance;
