import 'package:dragonball_heroes/foundation/di/di.config.dart';
import 'package:dragonball_heroes/foundation/global.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: false,
  asExtension: true,
  throwOnMissingDependencies: true,
)
Future<void> configureDependencies() async => getIt.init();
