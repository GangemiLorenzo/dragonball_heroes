import 'package:dragonball_heroes/api/services/characters_api_service.dart';
import 'package:dragonball_heroes/features/models/models.dart';
import 'package:dragonball_heroes/foundation/foundation.dart';
import 'package:injectable/injectable.dart';

class CharactersResponse {
  const CharactersResponse({
    required this.characters,
    required this.pagination,
  });

  final List<CharacterModel> characters;
  final PaginationModel pagination;
}

abstract class CharactersRepository {
  Future<CharactersResponse> getCharacters({int page = 1, int limit = 20});
  Future<CharacterModel> getCharacter(int id);
}

@Injectable(as: CharactersRepository)
class CharactersRepositoryImpl implements CharactersRepository {
  @override
  Future<CharactersResponse> getCharacters({
    int page = 1,
    int limit = 20,
  }) async {
    final response = await charactersApiService.getCharacters(
      page: page,
      limit: limit,
    );

    final characters = response.items.map(CharacterModel.fromDto).toList();
    final pagination = PaginationModel.fromDto(response.meta);

    return CharactersResponse(characters: characters, pagination: pagination);
  }

  @override
  Future<CharacterModel> getCharacter(int id) async {
    final response = await charactersApiService.getCharacter(id);

    return CharacterModel.fromDto(response);
  }

  CharactersApiService get charactersApiService =>
      getIt<CharactersApiService>();
}
