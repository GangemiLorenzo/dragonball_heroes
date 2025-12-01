import 'package:dio/dio.dart';
import 'package:dragonball_heroes/api/models/character_dto.dart';
import 'package:dragonball_heroes/api/models/common_dto.dart';
import 'package:dragonball_heroes/api/services/characters_api_service.dart';
import 'package:dragonball_heroes/features/characters/bloc/characters_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'characters_repository_impl_test.mocks.dart';

@GenerateMocks([CharactersApiService])
void main() {
  group('CharactersRepositoryImpl', () {
    late MockCharactersApiService mockApiService;
    late CharactersRepositoryImpl repository;

    // Test data
    const mockCharacterDto1 = CharacterDto(
      id: 1,
      name: 'Goku',
      ki: '60000000',
      maxKi: '90000000000000',
      race: 'Saiyan',
      gender: 'Male',
      description: "Earth's strongest warrior",
      image: 'https://example.com/goku.jpg',
      affiliation: 'Z_Fighter',
    );

    const mockCharacterDto2 = CharacterDto(
      id: 2,
      name: 'Vegeta',
      ki: '54000000',
      maxKi: '19000000000000',
      race: 'Saiyan',
      gender: 'Male',
      description: 'Prince of all Saiyans',
      image: 'https://example.com/vegeta.jpg',
      affiliation: 'Z_Fighter',
    );

    const mockMetaDto = MetaDto(
      totalItems: 58,
      itemCount: 2,
      itemsPerPage: 20,
      totalPages: 3,
      currentPage: 1,
    );

    const mockLinksDto = LinksDto(
      first: 'https://api.example.com/characters?page=1',
      next: 'https://api.example.com/characters?page=2',
      last: 'https://api.example.com/characters?page=3',
    );

    const mockCharacterResponse = CharacterResponse(
      items: [mockCharacterDto1, mockCharacterDto2],
      meta: mockMetaDto,
      links: mockLinksDto,
    );

    setUp(() {
      mockApiService = MockCharactersApiService();
      repository = TestCharactersRepositoryImpl(mockApiService);
    });

    group('getCharacters', () {
      test(
        'returns CharactersResponse with correct data when API call succeeds',
        () async {
          // Arrange
          when(
            mockApiService.getCharacters(
              page: anyNamed('page'),
              limit: anyNamed('limit'),
            ),
          ).thenAnswer((_) async => mockCharacterResponse);

          // Act
          final result = await repository.getCharacters();

          // Assert
          expect(result.characters, hasLength(2));
          expect(result.characters[0].id, equals(1));
          expect(result.characters[0].name, equals('Goku'));
          expect(result.characters[0].race, equals('Saiyan'));
          expect(result.characters[0].affiliation, equals('Z_Fighter'));

          expect(result.characters[1].id, equals(2));
          expect(result.characters[1].name, equals('Vegeta'));

          expect(result.pagination.totalItems, equals(58));
          expect(result.pagination.currentPage, equals(1));
          expect(result.pagination.totalPages, equals(3));
          expect(result.pagination.hasNextPage, isTrue);

          verify(mockApiService.getCharacters(page: 1, limit: 20)).called(1);
        },
      );

      test('uses default values when no parameters provided', () async {
        // Arrange
        when(
          mockApiService.getCharacters(
            page: anyNamed('page'),
            limit: anyNamed('limit'),
          ),
        ).thenAnswer((_) async => mockCharacterResponse);

        // Act
        await repository.getCharacters();

        // Assert
        verify(mockApiService.getCharacters(page: 1, limit: 20)).called(1);
      });

      test('passes custom parameters correctly', () async {
        // Arrange
        when(
          mockApiService.getCharacters(
            page: anyNamed('page'),
            limit: anyNamed('limit'),
          ),
        ).thenAnswer((_) async => mockCharacterResponse);

        // Act
        await repository.getCharacters(page: 2, limit: 10);

        // Assert
        verify(mockApiService.getCharacters(page: 2, limit: 10)).called(1);
      });

      test('throws exception when API call fails', () {
        // Arrange
        when(
          mockApiService.getCharacters(
            page: anyNamed('page'),
            limit: anyNamed('limit'),
          ),
        ).thenThrow(
          DioException(
            requestOptions: RequestOptions(path: '/characters'),
            message: 'Network error',
          ),
        );

        // Act & Assert
        expect(() => repository.getCharacters(), throwsA(isA<DioException>()));

        verify(mockApiService.getCharacters(page: 1, limit: 20)).called(1);
      });

      test('maps empty response correctly', () async {
        // Arrange
        const emptyResponse = CharacterResponse(
          items: [],
          meta: MetaDto(
            totalItems: 0,
            itemCount: 0,
            itemsPerPage: 20,
            totalPages: 0,
            currentPage: 1,
          ),
          links: LinksDto(),
        );

        when(
          mockApiService.getCharacters(
            page: anyNamed('page'),
            limit: anyNamed('limit'),
          ),
        ).thenAnswer((_) async => emptyResponse);

        // Act
        final result = await repository.getCharacters();

        // Assert
        expect(result.characters, isEmpty);
        expect(result.pagination.totalItems, equals(0));
        expect(result.pagination.hasNextPage, isFalse);
      });
    });

    group('getCharacter', () {
      test('returns CharacterModel when API call succeeds', () async {
        // Arrange
        when(
          mockApiService.getCharacter(any),
        ).thenAnswer((_) async => mockCharacterDto1);

        // Act
        final result = await repository.getCharacter(1);

        // Assert
        expect(result.id, equals(1));
        expect(result.name, equals('Goku'));
        expect(result.race, equals('Saiyan'));
        expect(result.gender, equals('Male'));
        expect(result.imageUrl, equals('https://example.com/goku.jpg'));
        expect(result.affiliation, equals('Z_Fighter'));

        verify(mockApiService.getCharacter(1)).called(1);
      });

      test('throws exception when API call fails', () {
        // Arrange
        when(mockApiService.getCharacter(any)).thenThrow(
          DioException(
            requestOptions: RequestOptions(path: '/characters/1'),
            message: 'Character not found',
            response: Response(
              requestOptions: RequestOptions(path: '/characters/1'),
              statusCode: 404,
            ),
          ),
        );

        // Act & Assert
        expect(() => repository.getCharacter(1), throwsA(isA<DioException>()));

        verify(mockApiService.getCharacter(1)).called(1);
      });

      test(
        'handles character with full data including optional fields',
        () async {
          // Arrange
          const characterWithOptionals = CharacterDto(
            id: 1,
            name: 'Goku',
            ki: '60000000',
            maxKi: '90000000000000',
            race: 'Saiyan',
            gender: 'Male',
            description: "Earth's strongest warrior",
            image: 'https://example.com/goku.jpg',
            affiliation: 'Z_Fighter',
            originPlanet: OriginPlanet(
              id: 1,
              name: 'Planet Vegeta',
              isDestroyed: true,
              description: 'Home planet of the Saiyans',
              image: 'https://example.com/planet-vegeta.jpg',
            ),
            transformations: [
              CharacterTransformation(
                id: 1,
                name: 'Super Saiyan',
                image: 'https://example.com/goku-ssj.jpg',
                ki: '150000000',
              ),
            ],
          );

          when(
            mockApiService.getCharacter(any),
          ).thenAnswer((_) async => characterWithOptionals);

          // Act
          final result = await repository.getCharacter(1);

          // Assert
          expect(result.id, equals(1));
          expect(result.hasOriginPlanet, isTrue);
          expect(result.originPlanet?.name, equals('Planet Vegeta'));
          expect(result.hasTransformations, isTrue);
          expect(result.transformations?.length, equals(1));
          expect(result.transformations?[0].name, equals('Super Saiyan'));

          verify(mockApiService.getCharacter(1)).called(1);
        },
      );
    });
  });
}

// Test implementation that allows us to inject the mock service
class TestCharactersRepositoryImpl extends CharactersRepositoryImpl {
  TestCharactersRepositoryImpl(this._mockApiService);

  final CharactersApiService _mockApiService;

  @override
  CharactersApiService get charactersApiService => _mockApiService;
}
