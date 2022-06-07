import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/infrastructure/domain/house.dart';
import 'package:game_of_flutter/infrastructure/dtos/house_dto.dart';
import 'package:game_of_flutter/infrastructure/services/house_service.dart';
import 'package:mockito/mockito.dart';
import '../../test_helper/file_reader.dart';
import '../../test_helper/mocks/repositories/repositories_mocks.mocks.dart';

void main() {
  late MockHouseRepository mockHouseRepository;

  late HouseService houseService;

  setUp(() {
    mockHouseRepository = MockHouseRepository();

    houseService = HouseService(houseRepository: mockHouseRepository);
  });

  group('getAll', () {
    test('should return list of [HouseDto]', () async {
      // arrange
      final HouseDto dto = HouseDto.fromJson(jsonDecode(resource('test_house.json')));
      when(mockHouseRepository.getAll(page: anyNamed('page'))).thenAnswer((_) async => [dto]);

      final House expected = dto.toDomain;

      // act
      final List<House> houses = await houseService.getAll();

      // assert
      expect(houses, [expected]);
    });

    test('verify [MockHouseRepository.getForId] is called', () async {
      // arrange
      final HouseDto dto = HouseDto.fromJson(jsonDecode(resource('test_House.json')));
      when(mockHouseRepository.getAll(page: anyNamed('page'))).thenAnswer((_) async => [dto]);

      // act
      await houseService.getAll(page: 2);

      // assert
      verify(mockHouseRepository.getAll(page: 2));
    });
  });

  group('getForId', () {
    test('should return [HouseDto]', () async {
      // arrange
      final HouseDto dto = HouseDto.fromJson(jsonDecode(resource('test_House.json')));
      when(mockHouseRepository.getForId(any)).thenAnswer((_) async => dto);

      final House expected = dto.toDomain;

      // act
      final House houses = await houseService.getForId(1);

      // assert
      expect(houses, expected);
    });

    test('verify [MockHouseRepository.getForId] is called', () async {
      // arrange
      final HouseDto dto = HouseDto.fromJson(jsonDecode(resource('test_House.json')));
      when(mockHouseRepository.getForId(any)).thenAnswer((_) async => dto);

      // act
      await houseService.getForId(1);

      // assert
      verify(mockHouseRepository.getForId(1));
    });
  });
}
