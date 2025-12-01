import 'package:dio/dio.dart';
import 'package:dragonball_heroes/api/models/planet_dto.dart';

class PlanetsApiService {
  PlanetsApiService(this._dio);

  final Dio _dio;

  Future<PlanetResponse> getPlanets({
    int? page,
    int? limit,
    String? name,
    bool? isDestroyed,
  }) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '/planets',
      queryParameters: {
        'page': page,
        'limit': limit,
        'name': name,
        'isDestroyed': isDestroyed,
      }..removeWhere((key, value) => value == null),
    );

    return PlanetResponseMapper.fromMap(response.data!);
  }

  Future<PlanetDto> getPlanet(int id) async {
    final response = await _dio.get<Map<String, dynamic>>('/planets/$id');
    return PlanetDtoMapper.fromMap(response.data!);
  }
}
