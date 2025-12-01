import 'package:flutter/services.dart';

enum Flavor { dev, stg, prod }

/// Return the current flavor
Flavor get flavor => switch (appFlavor) {
  'development' => Flavor.dev,
  'staging' => Flavor.stg,
  'production' => Flavor.prod,
  _ => throw UnsupportedError('Flavor $appFlavor is not supported'),
};
