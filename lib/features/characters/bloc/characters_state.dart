import 'package:dart_mappable/dart_mappable.dart';
import 'package:dragonball_heroes/features/models/models.dart';

part 'characters_state.mapper.dart';

@MappableClass()
class CharactersState with CharactersStateMappable {
  const CharactersState({
    required this.characters,
    required this.loading,
    required this.loadingMore,
    required this.loadingDetails,
    required this.pagination,
    this.errorMessage,
  });

  factory CharactersState.empty() {
    return CharactersState(
      characters: [],
      loading: false,
      loadingMore: false,
      loadingDetails: false,
      pagination: PaginationModel.empty(),
    );
  }

  factory CharactersState.loading() {
    return CharactersState(
      characters: [],
      loading: true,
      loadingMore: false,
      loadingDetails: false,
      pagination: PaginationModel.empty(),
    );
  }

  factory CharactersState.loaded({
    required List<CharacterModel> characters,
    PaginationModel? pagination,
  }) {
    return CharactersState(
      characters: characters,
      loading: false,
      loadingMore: false,
      loadingDetails: false,
      pagination: pagination ?? PaginationModel.empty(),
    );
  }

  factory CharactersState.error({required String errorMessage}) {
    return CharactersState(
      characters: [],
      loading: false,
      loadingMore: false,
      errorMessage: errorMessage,
      loadingDetails: false,
      pagination: PaginationModel.empty(),
    );
  }

  factory CharactersState.loadingMore({
    required List<CharacterModel> characters,
    required PaginationModel pagination,
  }) {
    return CharactersState(
      characters: characters,
      loading: false,
      loadingMore: true,
      loadingDetails: false,
      pagination: pagination,
    );
  }

  factory CharactersState.loadingDetails({
    required List<CharacterModel> characters,
    required PaginationModel pagination,
  }) {
    return CharactersState(
      characters: characters,
      loading: false,
      loadingMore: false,
      loadingDetails: true,
      pagination: pagination,
    );
  }

  final List<CharacterModel> characters;
  final bool loading;
  final bool loadingMore;
  final String? errorMessage;
  final PaginationModel pagination;
  final bool loadingDetails;

  bool get hasError => errorMessage != null;

  /// Helper method to get a character by ID
  /// Returns null if not found
  CharacterModel? getCharacterById(int id) {
    try {
      return characters.firstWhere((char) => char.id == id);
    } catch (e) {
      return null;
    }
  }
}
