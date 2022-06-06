import 'dart:convert';

import 'package:game_of_flutter/infrastructure/dtos/character_dto.dart';
import 'package:game_of_flutter/infrastructure/dtos/house_dto.dart';

// House
List<HouseDto> parseResponseToListOfHouseDtos(String json) {
  final List<dynamic> jsonList = jsonDecode(json);

  return jsonList.map((i) => HouseDto.fromJson(i as Map<String, dynamic>)).toList();
}

HouseDto parseResponseToHouseDto(String json) => HouseDto.fromJson(jsonDecode(json));

// Character
List<CharacterDto> parseResponseToListOfCharacterDtos(String json) {
  final List<dynamic> jsonList = jsonDecode(json);

  return jsonList.map((i) => CharacterDto.fromJson(i as Map<String, dynamic>)).toList();
}

CharacterDto parseResponseToCharacterDto(String json) => CharacterDto.fromJson(jsonDecode(json));
