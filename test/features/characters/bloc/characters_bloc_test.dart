// awaiting expectLater is failing the tests
// ignore_for_file: unawaited_futures

import 'package:dragonball_heroes/features/characters/bloc/bloc.dart';
import 'package:dragonball_heroes/features/models/models.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'characters_bloc_test.mocks.dart';

@GenerateMocks([CharactersRepository])
void main() {
  group('CharactersBloc', () {
    late MockCharactersRepository mockRepository;
    late CharactersBloc charactersBloc;

    // Test data
    const mockCharacter1 = CharacterModel(
      id: 1,
      name: 'Goku',
      ki: '60000000',
      maxKi: '90000000000000',
      race: 'Saiyan',
      gender: 'Male',
      description: "Earth's strongest warrior",
      imageUrl: 'https://example.com/goku.jpg',
      affiliation: 'Z_Fighter',
    );

    const mockCharacter2 = CharacterModel(
      id: 2,
      name: 'Vegeta',
      ki: '54000000',
      maxKi: '19000000000000',
      race: 'Saiyan',
      gender: 'Male',
      description: 'Prince of all Saiyans',
      imageUrl: 'https://example.com/vegeta.jpg',
      affiliation: 'Z_Fighter',
    );

    const mockPagination = PaginationModel(
      totalItems: 58,
      itemCount: 2,
      itemsPerPage: 20,
      totalPages: 3,
      currentPage: 1,
    );

    const mockCharactersResponse = CharactersResponse(
      characters: [mockCharacter1, mockCharacter2],
      pagination: mockPagination,
    );

    setUp(() {
      mockRepository = MockCharactersRepository();
      charactersBloc = CharactersBloc(repository: mockRepository);
    });

    tearDown(() {
      charactersBloc.close();
    });

    test('initial state should be empty', () {
      expect(charactersBloc.state, equals(CharactersState.empty()));
    });

    group('FetchCharactersEvent', () {
      test(
        'emits [loading, loaded] when characters are fetched successfully',
        () async {
          // Arrange
          when(
            mockRepository.getCharacters(),
          ).thenAnswer((_) async => mockCharactersResponse);

          final expectedStates = [
            CharactersState.loading(),
            CharactersState.loaded(
              characters: [mockCharacter1, mockCharacter2],
              pagination: mockPagination,
            ),
          ];

          // Act & Assert
          expectLater(charactersBloc.stream, emitsInOrder(expectedStates));

          charactersBloc.add(const FetchCharactersEvent());

          await Future<void>.delayed(const Duration(milliseconds: 100));
          verify(mockRepository.getCharacters()).called(1);
        },
      );

      test('emits [loading, error] when fetching characters fails', () async {
        // Arrange
        when(
          mockRepository.getCharacters(),
        ).thenThrow(Exception('Network error'));

        final expectedStates = [
          CharactersState.loading(),
          CharactersState.error(errorMessage: 'Exception: Network error'),
        ];

        // Act & Assert
        expectLater(charactersBloc.stream, emitsInOrder(expectedStates));

        charactersBloc.add(const FetchCharactersEvent());

        await Future<void>.delayed(const Duration(milliseconds: 100));
        verify(mockRepository.getCharacters()).called(1);
      });
    });

    group('RefreshCharactersEvent', () {
      test(
        'emits [loading, loaded] when characters are refreshed successfully',
        () async {
          // Arrange
          when(
            mockRepository.getCharacters(),
          ).thenAnswer((_) async => mockCharactersResponse);

          final expectedStates = [
            CharactersState.loading(),
            CharactersState.loaded(
              characters: [mockCharacter1, mockCharacter2],
              pagination: mockPagination,
            ),
          ];

          // Act & Assert
          expectLater(charactersBloc.stream, emitsInOrder(expectedStates));

          charactersBloc.add(const RefreshCharactersEvent());

          await Future<void>.delayed(const Duration(milliseconds: 100));
          verify(mockRepository.getCharacters()).called(1);
        },
      );
    });

    group('FetchMoreCharactersEvent', () {
      test(
        'emits [loadingMore, loaded] when more characters are fetched successfully',
        () async {
          // Arrange
          const newCharacter = CharacterModel(
            id: 3,
            name: 'Piccolo',
            ki: '2000000',
            maxKi: '500000000',
            race: 'Namekian',
            gender: 'Male',
            description: "Earth's guardian",
            imageUrl: 'https://example.com/piccolo.jpg',
            affiliation: 'Z_Fighter',
          );

          const paginationPage2 = PaginationModel(
            totalItems: 58,
            itemCount: 1,
            itemsPerPage: 20,
            totalPages: 3,
            currentPage: 2,
          );

          when(mockRepository.getCharacters(page: 2)).thenAnswer(
            (_) async => const CharactersResponse(
              characters: [newCharacter],
              pagination: paginationPage2,
            ),
          );

          // Set initial state by emitting it directly
          charactersBloc.emit(
            CharactersState.loaded(
              characters: [mockCharacter1, mockCharacter2],
              pagination: mockPagination,
            ),
          );

          final expectedStates = [
            CharactersState.loadingMore(
              characters: [mockCharacter1, mockCharacter2],
              pagination: mockPagination,
            ),
            predicate<CharactersState>((state) {
              return state.characters.length == 3 &&
                  state.characters[0].id == 1 &&
                  state.characters[1].id == 2 &&
                  state.characters[2].id == 3 &&
                  !state.loading &&
                  !state.loadingMore;
            }),
          ];

          // Act & Assert
          expectLater(charactersBloc.stream, emitsInOrder(expectedStates));

          charactersBloc.add(const FetchMoreCharactersEvent());

          await Future<void>.delayed(const Duration(milliseconds: 100));
          verify(mockRepository.getCharacters(page: 2)).called(1);
        },
      );

      test('does not fetch more characters when already loading', () async {
        // Arrange - set bloc to loading state
        charactersBloc
          ..emit(CharactersState.loading())
          ..add(const FetchMoreCharactersEvent());

        await Future<void>.delayed(const Duration(milliseconds: 100));

        // Assert - should not call repository
        verifyNever(mockRepository.getCharacters(page: anyNamed('page')));
      });

      test(
        'does not fetch more characters when no next page available',
        () async {
          // Arrange - set bloc to loaded state with no next page
          charactersBloc
            ..emit(
              CharactersState.loaded(
                characters: [mockCharacter1, mockCharacter2],
                pagination: const PaginationModel(
                  totalItems: 2,
                  itemCount: 2,
                  itemsPerPage: 20,
                  totalPages: 1,
                  currentPage: 1,
                ),
              ),
            )
            ..add(const FetchMoreCharactersEvent());

          await Future<void>.delayed(const Duration(milliseconds: 100));

          // Assert - should not call repository
          verifyNever(mockRepository.getCharacters(page: anyNamed('page')));
        },
      );
    });

    group('FetchCharacterEvent', () {
      test('updates existing character when fetched successfully', () async {
        // Arrange
        const updatedCharacter = CharacterModel(
          id: 1,
          name: 'Goku (Updated)',
          ki: '70000000',
          maxKi: '90000000000000',
          race: 'Saiyan',
          gender: 'Male',
          description: "Earth's strongest warrior (updated)",
          imageUrl: 'https://example.com/goku-updated.jpg',
          affiliation: 'Z_Fighter',
        );

        when(
          mockRepository.getCharacter(1),
        ).thenAnswer((_) async => updatedCharacter);

        // Set initial state
        charactersBloc.emit(
          CharactersState.loaded(
            characters: [mockCharacter1, mockCharacter2],
            pagination: mockPagination,
          ),
        );

        final expectedStates = [
          CharactersState.loadingDetails(
            characters: [mockCharacter1, mockCharacter2],
            pagination: mockPagination,
          ),
          predicate<CharactersState>((state) {
            return state.characters.length == 2 &&
                state.characters[0].name == 'Goku (Updated)' &&
                state.characters[0].ki == '70000000' &&
                state.characters[1].id == 2 &&
                !state.loading &&
                !state.loadingDetails;
          }),
        ];
        expectLater(charactersBloc.stream, emitsInOrder(expectedStates));

        charactersBloc.add(const FetchCharacterEvent(1));

        await Future<void>.delayed(const Duration(milliseconds: 100));
        verify(mockRepository.getCharacter(1)).called(1);
      });

      test('adds new character when not found in existing list', () async {
        // Arrange
        const newCharacter = CharacterModel(
          id: 3,
          name: 'Piccolo',
          ki: '2000000',
          maxKi: '500000000',
          race: 'Namekian',
          gender: 'Male',
          description: "Earth's guardian",
          imageUrl: 'https://example.com/piccolo.jpg',
          affiliation: 'Z_Fighter',
        );

        when(
          mockRepository.getCharacter(3),
        ).thenAnswer((_) async => newCharacter);

        // Set initial state
        charactersBloc.emit(
          CharactersState.loaded(
            characters: [mockCharacter1, mockCharacter2],
            pagination: mockPagination,
          ),
        );

        final expectedStates = [
          CharactersState.loadingDetails(
            characters: [mockCharacter1, mockCharacter2],
            pagination: mockPagination,
          ),
          predicate<CharactersState>((state) {
            return state.characters.length == 3 &&
                state.characters[2].id == 3 &&
                state.characters[2].name == 'Piccolo' &&
                !state.loading &&
                !state.loadingDetails;
          }),
        ];

        // Act & Assert
        expectLater(charactersBloc.stream, emitsInOrder(expectedStates));

        charactersBloc.add(const FetchCharacterEvent(3));

        await Future<void>.delayed(const Duration(milliseconds: 100));
        verify(mockRepository.getCharacter(3)).called(1);
      });

      test('emits error when fetching character fails', () async {
        // Arrange
        when(
          mockRepository.getCharacter(1),
        ).thenThrow(Exception('Character not found'));

        // Set initial state
        charactersBloc.emit(
          CharactersState.loaded(
            characters: [mockCharacter1, mockCharacter2],
            pagination: mockPagination,
          ),
        );

        final expectedStates = [
          CharactersState.loadingDetails(
            characters: [mockCharacter1, mockCharacter2],
            pagination: mockPagination,
          ),
          CharactersState.error(errorMessage: 'Exception: Character not found'),
        ];

        // Act & Assert
        expectLater(charactersBloc.stream, emitsInOrder(expectedStates));

        charactersBloc.add(const FetchCharacterEvent(1));

        await Future<void>.delayed(const Duration(milliseconds: 100));
        verify(mockRepository.getCharacter(1)).called(1);
      });

      test('does not fetch character when already loading', () async {
        // Arrange - set bloc to loading state
        charactersBloc
          ..emit(CharactersState.loading())
          ..add(const FetchCharacterEvent(1));

        await Future<void>.delayed(const Duration(milliseconds: 100));

        // Assert - should not call repository
        verifyNever(mockRepository.getCharacter(any));
      });
    });
  });
}
