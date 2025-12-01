// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:dragonball_heroes/api/api_module.dart' as _i560;
import 'package:dragonball_heroes/api/services/characters_api_service.dart'
    as _i624;
import 'package:dragonball_heroes/api/services/planets_api_service.dart'
    as _i746;
import 'package:dragonball_heroes/api/services/transformations_api_service.dart'
    as _i6;
import 'package:dragonball_heroes/features/characters/bloc/characters_bloc.dart'
    as _i716;
import 'package:dragonball_heroes/features/characters/bloc/characters_repo.dart'
    as _i321;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final apiModule = _$ApiModule();
    gh.singleton<_i361.Dio>(() => apiModule.dio);
    gh.factory<_i624.CharactersApiService>(
      () => apiModule.charactersApiService(gh<_i361.Dio>()),
    );
    gh.factory<_i746.PlanetsApiService>(
      () => apiModule.planetsApiService(gh<_i361.Dio>()),
    );
    gh.factory<_i6.TransformationsApiService>(
      () => apiModule.transformationsApiService(gh<_i361.Dio>()),
    );
    gh.factory<_i321.CharactersRepository>(
      () => _i321.CharactersRepositoryImpl(),
    );
    gh.factory<_i716.CharactersBloc>(
      () => _i716.CharactersBloc(repository: gh<_i321.CharactersRepository>()),
    );
    return this;
  }
}

class _$ApiModule extends _i560.ApiModule {}
