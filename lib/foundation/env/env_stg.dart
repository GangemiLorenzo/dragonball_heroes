import 'package:dragonball_heroes/foundation/env/app_env_fields.dart';
import 'package:dragonball_heroes/foundation/env/env.dart';
import 'package:envied/envied.dart';

part 'env_stg.g.dart';

/// Staging environment
@Envied(name: 'Stg', path: '.env.stg')
final class EnvStg implements Env, AppEnvFields {
  EnvStg();

  @override
  @EnviedField(varName: 'DRAGONBALL_BASE_URL')
  final String dragonballBaseUrl = _Stg.dragonballBaseUrl;
}
