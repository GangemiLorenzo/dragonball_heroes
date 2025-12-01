import 'package:dio/dio.dart';
import 'package:dragonball_heroes/api/models/character_dto.dart';

class CharactersApiService {
  CharactersApiService(this._dio);

  final Dio _dio;

  Future<CharacterResponse> getCharacters({
    int? page,
    int? limit,
    String? name,
    String? gender,
    String? race,
    String? affiliation,
  }) async {
    final response = await _dio.get<Map<String, dynamic>>(
      '/characters',
      queryParameters: {
        'page': page,
        'limit': limit,
        'name': name,
        'gender': gender,
        'race': race,
        'affiliation': affiliation,
      }..removeWhere((key, value) => value == null),
    );

    return CharacterResponseMapper.fromMap(response.data!);
  }

  Future<CharacterDto> getCharacter(int id) async {
    final response = await _dio.get<Map<String, dynamic>>('/characters/$id');
    return CharacterDtoMapper.fromMap(response.data!);
  }
}
