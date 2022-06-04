import 'dart:convert';

import 'package:game_of_flutter/infrastructure/dtos/house_dto.dart';

List<HouseDto> parseResponseToListOfHouseDtos(String json) {
  final List<dynamic> jsonList = jsonDecode(json);

  return jsonList
      .map((i) => HouseDto.fromJson(i as Map<String, dynamic>))
      .toList();
}

HouseDto parseResponseToHouseDto(String json) =>
    HouseDto.fromJson(jsonDecode(json));
