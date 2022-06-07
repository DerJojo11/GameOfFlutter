import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/features/house_details/blocs/bloc/character_bloc.dart';
import 'package:mockito/mockito.dart';

import '../../../../test_helper/mocks/miscellaneous/miscellaneous_mocks.mocks.dart';
import '../../../../test_helper/mocks/services/services_mocks.mocks.dart';
import '../../../../test_helper/test_models/test_models.dart';

void main() {
  late MockCharacterService mockCharacterService;
  late MockAppConfigs mockAppConfigs;

  setUp(() {
    mockCharacterService = MockCharacterService();
    mockAppConfigs = MockAppConfigs();
  });

  test('expect to get [CharacterLoading] as Initial', () async {
    // arrange
    final CharacterBloc characterBloc = CharacterBloc(characterService: mockCharacterService, configs: mockAppConfigs);

    // assert
    expect(characterBloc.state, const CharacterLoading());
  });

  group('CharacterFetch', () {
    blocTest<CharacterBloc, CharacterState>(
      'expect to get CharacterLoaded with testCharacter',
      build: () {
        when(mockCharacterService.getForId(any)).thenAnswer(
          (_) async => testCharacter,
        );
        return CharacterBloc(characterService: mockCharacterService, configs: mockAppConfigs);
      },
      act: (bloc) => bloc.add(const CharacterFetch(id: 583)),
      expect: () => [
        CharacterLoaded(character: testCharacter),
      ],
    );

    blocTest<CharacterBloc, CharacterState>(
      'expect to get [CharacterFailure] when Exception is thrown',
      build: () {
        when(mockCharacterService.getForId(any)).thenThrow(
          Exception('error'),
        );
        return CharacterBloc(characterService: mockCharacterService, configs: mockAppConfigs);
      },
      act: (bloc) => bloc.add(const CharacterFetch(id: 583)),
      expect: () => [CharacterFailure(error: Exception('error').toString())],
    );
  });
}
