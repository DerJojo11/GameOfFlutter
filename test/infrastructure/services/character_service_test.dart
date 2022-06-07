import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/infrastructure/domain/character.dart';
import 'package:game_of_flutter/infrastructure/dtos/character_dto.dart';
import 'package:game_of_flutter/infrastructure/services/character_service.dart';
import 'package:mockito/mockito.dart';
import '../../test_helper/file_reader.dart';
import '../../test_helper/mocks/repositories/repositories_mocks.mocks.dart';

void main() {
  late MockCharacterRepository mockCharacterRepository;

  late CharacterService characterService;

  setUp(() {
    mockCharacterRepository = MockCharacterRepository();

    characterService = CharacterService(characterRepository: mockCharacterRepository);
  });

  group('getAll', () {
    test('should return list of [CharacterDto]', () async {
      // arrange
      final CharacterDto dto = CharacterDto.fromJson(jsonDecode(resource('test_character.json')));
      when(mockCharacterRepository.getAll(page: anyNamed('page'))).thenAnswer((_) async => [dto]);

      final Character expected = dto.toDomain;

      // act
      final List<Character> characters = await characterService.getAll();

      // assert
      expect(characters, [expected]);
    });

    test('verify [MockCharacterRepository.getForId] is called', () async {
      // arrange
      final CharacterDto dto = CharacterDto.fromJson(jsonDecode(resource('test_character.json')));
      when(mockCharacterRepository.getAll(page: anyNamed('page'))).thenAnswer((_) async => [dto]);

      // act
      await characterService.getAll(page: 2);

      // assert
      verify(mockCharacterRepository.getAll(page: 2));
    });
  });

  group('getForId', () {
    test('should return [CharacterDto]', () async {
      // arrange
      final CharacterDto dto = CharacterDto.fromJson(jsonDecode(resource('test_character.json')));
      when(mockCharacterRepository.getForId(any)).thenAnswer((_) async => dto);

      final Character expected = dto.toDomain;

      // act
      final Character characters = await characterService.getForId(1);

      // assert
      expect(characters, expected);
    });

    test('verify [MockCharacterRepository.getForId] is called', () async {
      // arrange
      final CharacterDto dto = CharacterDto.fromJson(jsonDecode(resource('test_character.json')));
      when(mockCharacterRepository.getForId(any)).thenAnswer((_) async => dto);

      // act
      await characterService.getForId(1);

      // assert
      verify(mockCharacterRepository.getForId(1));
    });
  });
}
