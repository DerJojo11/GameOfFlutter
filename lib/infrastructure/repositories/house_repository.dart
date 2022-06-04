import 'package:flutter/foundation.dart';
import 'package:game_of_flutter/configs/api_endpoints.dart';
import 'package:game_of_flutter/infrastructure/dtos/house_dto.dart';
import 'package:game_of_flutter/infrastructure/exceptions/response_exceptions.dart';
import 'package:game_of_flutter/infrastructure/repositories/isolates.dart';
import 'package:game_of_flutter/infrastructure/repositories/repository.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HouseRepository extends Repository {
  HouseRepository({required super.client, required super.configs});

  Future<List<HouseDto>> getAllHouses({required int page}) async {
    final Uri uri = buildUri(
      path: ApiEndpoints.getAllHouses,
      parameters: {
        'page': '$page',
        'pageSize': '${configs.perPage}',
      },
    );
    final Response response = await client.get(
      uri,
    );

    if (response.statusCode == 200) {
      return compute(parseResponseToListOfHouseDtos, response.body);
    } else {
      throw ResponseException(response);
    }
  }

  Future<HouseDto> getHouseForId(int id) async {
    final Uri uri = buildUri(path: ApiEndpoints.getHouseForId(id));
    final Response response = await client.get(uri);

    if (response.statusCode == 200) {
      return compute(parseResponseToHouseDto, response.body);
    } else {
      throw ResponseException(response);
    }
  }
}
