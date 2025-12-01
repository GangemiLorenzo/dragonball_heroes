import 'package:bloc/bloc.dart';
import 'package:dragonball_heroes/features/characters/bloc/characters_event.dart';
import 'package:dragonball_heroes/features/characters/bloc/characters_repo.dart';
import 'package:dragonball_heroes/features/characters/bloc/characters_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc({required this.repository}) : super(CharactersState.empty()) {
    on<FetchCharactersEvent>(_onCharactersRequested);
    on<RefreshCharactersEvent>(_onCharactersRefreshRequested);
    on<FetchMoreCharactersEvent>(_onCharactersFetchMoreRequested);
    on<FetchCharacterEvent>(_onFetchCharacterRequested);
  }

  final CharactersRepository repository;

  Future<void> _onCharactersRequested(
    FetchCharactersEvent event,
    Emitter<CharactersState> emit,
  ) async {
    emit(CharactersState.loading());
    try {
      final response = await repository.getCharacters();

      emit(
        CharactersState.loaded(
          characters: response.characters,
          pagination: response.pagination,
        ),
      );
    } catch (error) {
      emit(CharactersState.error(errorMessage: error.toString()));
    }
  }

  Future<void> _onCharactersRefreshRequested(
    RefreshCharactersEvent event,
    Emitter<CharactersState> emit,
  ) async {
    emit(CharactersState.loading());
    try {
      final response = await repository.getCharacters();

      emit(
        CharactersState.loaded(
          characters: response.characters,
          pagination: response.pagination,
        ),
      );
    } catch (error) {
      emit(CharactersState.error(errorMessage: error.toString()));
    }
  }

  Future<void> _onCharactersFetchMoreRequested(
    FetchMoreCharactersEvent event,
    Emitter<CharactersState> emit,
  ) async {
    final currentState = state;
    if (currentState.loading || currentState.loadingMore) {
      return;
    }
    if (!currentState.pagination.hasNextPage) {
      return;
    }

    emit(
      CharactersState.loadingMore(
        characters: currentState.characters,
        pagination: currentState.pagination,
      ),
    );

    try {
      final nextPage = currentState.pagination.nextPage!;
      final response = await repository.getCharacters(page: nextPage);
      final newCharacters = response.characters;
      final pagination = response.pagination;

      emit(
        CharactersState.loaded(
          characters: [...currentState.characters, ...newCharacters],
          pagination: pagination,
        ),
      );
    } catch (error) {
      emit(CharactersState.error(errorMessage: error.toString()));
    }
  }

  Future<void> _onFetchCharacterRequested(
    FetchCharacterEvent event,
    Emitter<CharactersState> emit,
  ) async {
    final currentState = state;
    if (currentState.loading) {
      return;
    }

    emit(
      CharactersState.loadingDetails(
        characters: currentState.characters,
        pagination: currentState.pagination,
      ),
    );

    try {
      final character = await repository.getCharacter(event.characterId);
      final updatedCharacters = List.of(currentState.characters);
      final index = updatedCharacters.indexWhere((c) => c.id == character.id);
      if (index >= 0) {
        updatedCharacters[index] = character;
      } else {
        updatedCharacters.add(character);
      }

      emit(
        CharactersState.loaded(
          characters: updatedCharacters,
          pagination: currentState.pagination,
        ),
      );
    } catch (error) {
      emit(CharactersState.error(errorMessage: error.toString()));
    }
  }
}
