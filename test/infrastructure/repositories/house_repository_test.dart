import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/configs/api_endpoints.dart';
import 'package:game_of_flutter/infrastructure/dtos/house_dto.dart';
import 'package:game_of_flutter/infrastructure/repositories/house_repository.dart';
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
      final HouseRepository houseRepository = HouseRepository(
        client: mockAppClient,
        configs: mockAppConfigs,
      );
      when(mockAppConfigs.baseUrl).thenReturn('anapioficeandfire.com');
      when(mockAppConfigs.perPage).thenReturn(15);
      when(mockAppClient.get(any, headers: anyNamed('headers'))).thenAnswer((_) async => Response(
            resource('test_houses.json'),
            200,
          ));

      final Uri expectedUri = Uri.https(
        'anapioficeandfire.com',
        ApiEndpoints.getAllHouses,
        {
          'page': '1',
          'pageSize': '15',
        },
      );

      // act
      await houseRepository.getAll(page: 1);

      // assert
      verify(mockAppClient.get(expectedUri));
    });
  });

  group('getForId', () {
    test('verify client is called with correct uri and parameters', () async {
      // arrange
      final HouseRepository houseRepository = HouseRepository(
        client: mockAppClient,
        configs: mockAppConfigs,
      );
      when(mockAppConfigs.baseUrl).thenReturn('anapioficeandfire.com');
      when(mockAppConfigs.perPage).thenReturn(15);
      when(mockAppClient.get(any, headers: anyNamed('headers'))).thenAnswer((_) async => Response(
            resource('test_house.json'),
            200,
          ));

      final Uri expectedUri = Uri.https(
        'anapioficeandfire.com',
        ApiEndpoints.getHouseForId(1),
      );

      // act
      await houseRepository.getForId(1);

      // assert
      verify(mockAppClient.get(expectedUri));
    });
  });

  group('parseJson', () {
    test('verify client is called with correct uri and parameters', () async {
      // arrange
      final String json = resource('test_house.json');

      final HouseRepository houseRepository = HouseRepository(
        client: mockAppClient,
        configs: mockAppConfigs,
      );
      when(mockAppConfigs.baseUrl).thenReturn('anapioficeandfire.com');
      when(mockAppConfigs.perPage).thenReturn(15);
      when(mockAppClient.get(any, headers: anyNamed('headers'))).thenAnswer((_) async => Response(
            json,
            200,
          ));

      final HouseDto expectedDto = HouseDto.fromJson(jsonDecode(json));

      // act
      final HouseDto dto = await houseRepository.getForId(1);

      // assert
      expect(dto, expectedDto);
    });
  });
}
