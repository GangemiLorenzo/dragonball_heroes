import 'package:dragonball_heroes/foundation/env/app_env_fields.dart';
import 'package:dragonball_heroes/foundation/env/env.dart';
import 'package:envied/envied.dart';

part 'env_prod.g.dart';

/// Production environment
@Envied(name: 'Prod', path: '.env.prod')
final class EnvProd implements Env, AppEnvFields {
  EnvProd();

  @override
  @EnviedField(varName: 'DRAGONBALL_BASE_URL')
  final String dragonballBaseUrl = _Prod.dragonballBaseUrl;
}
