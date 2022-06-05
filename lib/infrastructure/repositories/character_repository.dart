import 'package:flutter/foundation.dart';
import 'package:game_of_flutter/configs/api_endpoints.dart';
import 'package:game_of_flutter/infrastructure/dtos/character_dto.dart';
import 'package:game_of_flutter/infrastructure/exceptions/response_exceptions.dart';
import 'package:game_of_flutter/infrastructure/repositories/isolates.dart';
import 'package:game_of_flutter/infrastructure/repositories/repository.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CharacterRepository extends Repository {
  CharacterRepository({
    required super.client,
    required super.configs,
  });

  Future<List<CharacterDto>> getAll({required int page}) async {
    final Uri uri = buildUri(
      path: ApiEndpoints.getAllCharacters,
      parameters: {
        'page': '$page',
        'pageSize': '${configs.perPage}',
      },
    );
    final Response response = await client.get(
      uri,
    );

    if (response.statusCode == 200) {
      return compute(parseResponseToListOfCharacterDtos, response.body);
    } else {
      throw ResponseException(response);
    }
  }

  Future<CharacterDto> getForId(int id) async {
    final Uri uri = buildUri(path: ApiEndpoints.getCharacterForId(id));
    final Response response = await client.get(uri);

    if (response.statusCode == 200) {
      return compute(parseResponseToCharacterDto, response.body);
    } else {
      throw ResponseException(response);
    }
  }
}
