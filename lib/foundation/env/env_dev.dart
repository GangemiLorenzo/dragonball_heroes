import 'package:dragonball_heroes/foundation/env/app_env_fields.dart';
import 'package:dragonball_heroes/foundation/env/env.dart';
import 'package:envied/envied.dart';

part 'env_dev.g.dart';

/// Development environment
@Envied(name: 'Dev', path: '.env.dev')
final class EnvDev implements Env, AppEnvFields {
  EnvDev();

  @override
  @EnviedField(varName: 'DRAGONBALL_BASE_URL')
  final String dragonballBaseUrl = _Dev.dragonballBaseUrl;
}
