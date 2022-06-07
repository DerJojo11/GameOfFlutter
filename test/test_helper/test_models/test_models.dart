import 'dart:convert';

import 'package:game_of_flutter/infrastructure/domain/character.dart';
import 'package:game_of_flutter/infrastructure/domain/house.dart';
import 'package:game_of_flutter/infrastructure/dtos/character_dto.dart';
import 'package:game_of_flutter/infrastructure/dtos/house_dto.dart';

import '../file_reader.dart';

HouseDto testHouseDto = HouseDto.fromJson(jsonDecode(resource('test_house.json')));
House testHouse = testHouseDto.toDomain;

CharacterDto testCharacterDto = CharacterDto.fromJson(jsonDecode(resource('test_character.json')));
Character testCharacter = testCharacterDto.toDomain;
