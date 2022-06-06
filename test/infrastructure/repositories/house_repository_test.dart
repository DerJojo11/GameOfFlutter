import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/infrastructure/repositories/house_repository.dart';
import 'package:http/http.dart';
import 'package:mockito/mockito.dart';

import '../../test_helper/mocks/miscellaneous/miscellaneous_mocks.mocks.dart';

void main() {
  late MockAppConfigs mockAppConfigs;
  late MockAppClient mockAppClient;

  setUp(() {
    mockAppClient = MockAppClient();
    mockAppConfigs = MockAppConfigs();
  });

  test('should return a list of posts', () async {
    // arrange
    final HouseRepository houseRepository = HouseRepository(
      client: mockAppClient,
      configs: mockAppConfigs,
    );
    when(mockAppClient.get(any, headers: anyNamed('headers'))).thenAnswer((_) async => Response('body', 200));

    // act
    houseRepository.getAll(page: 1);

    // assert
    //TODO
  });
}
