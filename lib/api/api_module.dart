import 'package:dio/dio.dart';
import 'package:dragonball_heroes/foundation/env/env.dart';
import 'package:injectable/injectable.dart';

import 'config/dio_config.dart';
import 'services/characters_api_service.dart';
import 'services/planets_api_service.dart';
import 'services/transformations_api_service.dart';

@module
abstract class ApiModule {
  @singleton
  Dio get dio => DioConfig.createDio(baseUrl: Env().dragonballBaseUrl);

  @injectable
  CharactersApiService charactersApiService(Dio dio) =>
      CharactersApiService(dio);

  @injectable
  PlanetsApiService planetsApiService(Dio dio) => PlanetsApiService(dio);

  @injectable
  TransformationsApiService transformationsApiService(Dio dio) =>
      TransformationsApiService(dio);
}
