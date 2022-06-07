import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/configs/api_endpoints.dart';
import 'package:game_of_flutter/infrastructure/dtos/character_dto.dart';
import 'package:game_of_flutter/infrastructure/repositories/character_repository.dart';
import 'package:http/http.dart';
import 'package:mockito/mockito.dart';

import '../../test_helper/file_reader.dart';
import '../../test_helper/mocks/miscellaneous/miscellaneous_mocks.mocks.dart';

void main() {
  late MockAppConfigs mockAppConfigs;
  late MockAppClient mockAppClient;

  setUp(() {
    mockAppClient = MockAppClient();
    mockAppConfigs = MockAppConfigs();
  });

  group('getAll', () {
    test('verify client is called with correct uri and parameters', () async {
      // arrange
      final CharacterRepository characterRepository = CharacterRepository(
        client: mockAppClient,
        configs: mockAppConfigs,
      );
      when(mockAppConfigs.baseUrl).thenReturn('anapioficeandfire.com');
      when(mockAppConfigs.perPage).thenReturn(15);
      when(mockAppClient.get(any, headers: anyNamed('headers'))).thenAnswer((_) async => Response(
            resource('test_characters.json'),
            200,
          ));

      final Uri expectedUri = Uri.https(
        'anapioficeandfire.com',
        ApiEndpoints.getAllCharacters,
        {
          'page': '1',
          'pageSize': '15',
        },
      );

      // act
      await characterRepository.getAll(page: 1);

      // assert
      verify(mockAppClient.get(expectedUri));
    });
  });

  group('getForId', () {
    test('verify client is called with correct uri and parameters', () async {
      // arrange
      final CharacterRepository characterRepository = CharacterRepository(
        client: mockAppClient,
        configs: mockAppConfigs,
      );
      when(mockAppConfigs.baseUrl).thenReturn('anapioficeandfire.com');
      when(mockAppConfigs.perPage).thenReturn(15);
      when(mockAppClient.get(any, headers: anyNamed('headers'))).thenAnswer((_) async => Response(
            resource('test_character.json'),
            200,
          ));

      final Uri expectedUri = Uri.https(
        'anapioficeandfire.com',
        ApiEndpoints.getCharacterForId(1),
      );

      // act
      await characterRepository.getForId(1);

      // assert
      verify(mockAppClient.get(expectedUri));
    });
  });

  group('parseJson', () {
    test('verify client is called with correct uri and parameters', () async {
      // arrange
      final String json = resource('test_character.json');

      final CharacterRepository characterRepository = CharacterRepository(
        client: mockAppClient,
        configs: mockAppConfigs,
      );
      when(mockAppConfigs.baseUrl).thenReturn('anapioficeandfire.com');
      when(mockAppConfigs.perPage).thenReturn(15);
      when(mockAppClient.get(any, headers: anyNamed('headers'))).thenAnswer((_) async => Response(
            json,
            200,
          ));

      final CharacterDto expectedDto = CharacterDto.fromJson(jsonDecode(json));

      // act
      final CharacterDto dto = await characterRepository.getForId(1);

      // assert
      expect(dto, expectedDto);
    });
  });
}
