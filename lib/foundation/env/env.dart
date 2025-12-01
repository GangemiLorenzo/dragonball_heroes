import 'package:dragonball_heroes/foundation/env/app_env_fields.dart';
import 'package:dragonball_heroes/foundation/env/env_dev.dart';
import 'package:dragonball_heroes/foundation/env/env_prod.dart';
import 'package:dragonball_heroes/foundation/env/env_stg.dart';
import 'package:dragonball_heroes/foundation/env/flavor.dart';

abstract interface class Env implements AppEnvFields {
  factory Env() => _instance;

  static final Env _instance = switch (flavor) {
    Flavor.dev => EnvDev(),
    Flavor.stg => EnvStg(),
    Flavor.prod => EnvProd(),
  };
}
