// dart format off
// coverage:ignore-file

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Dragon Ball Heroes';

  @override
  String get welcome => 'Welcome';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get retry => 'Retry';

  @override
  String get ok => 'OK';

  @override
  String get cancel => 'Cancel';

  @override
  String get dragonBallCharacters => 'Dragon Ball Characters';

  @override
  String errorWithMessage(String message) {
    return 'Error: $message';
  }

  @override
  String get noCharactersFound => 'No characters found';

  @override
  String get noMoreCharacters => 'No more characters to load';

  @override
  String get characterDetails => 'Character Details';

  @override
  String get characterNotFound => 'Character not found';

  @override
  String get backToCharactersList => 'Back to Characters List';

  @override
  String get description => 'Description';

  @override
  String get noDescriptionAvailable => 'No description available.';

  @override
  String get originPlanet => 'Origin Planet';

  @override
  String get unknown => 'Unknown';

  @override
  String get destroyed => 'Destroyed';

  @override
  String get transformations => 'Transformations';

  @override
  String get noTransformationsAvailable => 'No transformations available';

  @override
  String kiValue(String value) {
    return 'Ki: $value';
  }

  @override
  String get imageNotAvailable => 'Image not available';

  @override
  String get transformationDetails => 'Transformation Details';

  @override
  String get name => 'Name';

  @override
  String get kiLevel => 'Ki Level';

  @override
  String get id => 'ID';
}
