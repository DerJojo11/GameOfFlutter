import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/features/house_list/blocs/house_list/house_list_bloc.dart';
import 'package:mockito/mockito.dart';

import '../../../../test_helper/mocks/services/services_mocks.mocks.dart';
import '../../../../test_helper/mocks/miscellaneous/miscellaneous_mocks.mocks.dart';
import '../../../../test_helper/test_models/test_models.dart';

void main() {
  late MockHouseService mockHouseService;
  late MockAppConfigs mockAppConfigs;

  setUp(() {
    mockHouseService = MockHouseService();
    mockAppConfigs = MockAppConfigs();
    when(mockAppConfigs.perPage).thenReturn(10);
  });

  test('expect to get [HouseListLoading] on Initial', () async {
    // arrange
    final HouseListBloc houseListBloc = HouseListBloc(
      mockHouseService,
      mockAppConfigs,
    );

    // assert
    expect(houseListBloc.state, const HouseListLoading());
  });

  group('HouseListFetch', () {
    blocTest<HouseListBloc, HouseListState>(
      'verify HouseService.getAll is called',
      build: () {
        when(mockHouseService.getAll()).thenAnswer((_) async => [testHouse]);
        when(mockAppConfigs.perPage).thenReturn(1);

        return HouseListBloc(
          mockHouseService,
          mockAppConfigs,
        );
      },
      act: (bloc) => bloc.add(const HouseListFetch()),
      verify: (_) => verify(mockHouseService.getAll()),
    );

    blocTest<HouseListBloc, HouseListState>(
      'expect to get [HouseListLoaded] with allElementLoad is true when amount of elements is smaller then '
      'configs.perPage',
      build: () {
        when(mockHouseService.getAll()).thenAnswer((_) async => [testHouse]);

        return HouseListBloc(
          mockHouseService,
          mockAppConfigs,
        );
      },
      act: (bloc) => bloc.add(const HouseListFetch()),
      expect: () => [
        HouseListLoaded(
          houses: [testHouse],
          allItemsLoaded: true,
        ),
      ],
    );

    blocTest<HouseListBloc, HouseListState>(
      'expect to get [HouseListLoaded] with allElementLoad is false when amount of elements is equal to '
      'configs.perPage',
      build: () {
        when(mockHouseService.getAll()).thenAnswer((_) async => [testHouse]);
        when(mockAppConfigs.perPage).thenReturn(1);

        return HouseListBloc(
          mockHouseService,
          mockAppConfigs,
        );
      },
      act: (bloc) => bloc.add(const HouseListFetch()),
      expect: () => [
        HouseListLoaded(
          houses: [testHouse],
          allItemsLoaded: false,
        ),
      ],
    );

    blocTest<HouseListBloc, HouseListState>(
      'expect to get [HouseListFailure] when Exception is thrown',
      build: () {
        when(mockHouseService.getAll()).thenThrow(Exception('Error'));
        when(mockAppConfigs.perPage).thenReturn(1);

        return HouseListBloc(
          mockHouseService,
          mockAppConfigs,
        );
      },
      act: (bloc) => bloc.add(const HouseListFetch()),
      expect: () => [
        HouseListFailure(
          error: Exception('Error').toString(),
        ),
      ],
    );
  });

  group('HouseListRefresh', () {
    blocTest<HouseListBloc, HouseListState>(
      'verify HouseService.getAll is called',
      build: () {
        when(mockHouseService.getAll()).thenAnswer((_) async => [testHouse]);
        when(mockAppConfigs.perPage).thenReturn(1);

        return HouseListBloc(
          mockHouseService,
          mockAppConfigs,
        );
      },
      seed: () => HouseListLoaded(
        houses: [testHouse],
        allItemsLoaded: true,
      ),
      act: (bloc) => bloc.add(const HouseListRefresh()),
      verify: (_) => verify(mockHouseService.getAll()),
    );

    blocTest<HouseListBloc, HouseListState>(
      'expect to get [HouseListLoaded] with allElementLoad is true when amount of elements is smaller then '
      'configs.perPage',
      build: () {
        when(mockHouseService.getAll()).thenAnswer((_) async => [testHouse]);

        return HouseListBloc(
          mockHouseService,
          mockAppConfigs,
        );
      },
      seed: () => HouseListLoaded(
        houses: [testHouse],
        allItemsLoaded: true,
      ),
      act: (bloc) => bloc.add(const HouseListRefresh()),
      expect: () => [
        const HouseListLoading(),
        HouseListLoaded(
          houses: [testHouse],
          allItemsLoaded: true,
        ),
      ],
    );

    blocTest<HouseListBloc, HouseListState>(
      'expect to get [HouseListLoaded] with allElementLoad is false when amount of elements is equal to '
      'configs.perPage',
      build: () {
        when(mockHouseService.getAll()).thenAnswer((_) async => [testHouse]);
        when(mockAppConfigs.perPage).thenReturn(1);

        return HouseListBloc(
          mockHouseService,
          mockAppConfigs,
        );
      },
      seed: () => HouseListLoaded(
        houses: [testHouse],
        allItemsLoaded: true,
      ),
      act: (bloc) => bloc.add(const HouseListRefresh()),
      expect: () => [
        const HouseListLoading(),
        HouseListLoaded(
          houses: [testHouse],
          allItemsLoaded: false,
        ),
      ],
    );

    blocTest<HouseListBloc, HouseListState>(
      'expect to get [HouseListFailure] when Exception is thrown',
      build: () {
        when(mockHouseService.getAll()).thenThrow(Exception('Error'));

        return HouseListBloc(
          mockHouseService,
          mockAppConfigs,
        );
      },
      seed: () => HouseListLoaded(
        houses: [testHouse],
        allItemsLoaded: true,
      ),
      act: (bloc) => bloc.add(const HouseListRefresh()),
      expect: () => [
        const HouseListLoading(),
        HouseListFailure(
          error: Exception('Error').toString(),
        ),
      ],
    );
  });

  group('HouseListFetchNextPage', () {
    blocTest<HouseListBloc, HouseListState>(
      'verify HouseService.getAll is called',
      build: () {
        when(mockHouseService.getAll(page: anyNamed('page'))).thenAnswer((_) async => [testHouse, testHouse]);
        when(mockAppConfigs.perPage).thenReturn(1);

        return HouseListBloc(
          mockHouseService,
          mockAppConfigs,
        );
      },
      seed: () => HouseListLoaded(
        houses: [testHouse],
        allItemsLoaded: false,
      ),
      act: (bloc) => bloc.add(const HouseListFetchNextPage()),
      verify: (_) => verify(mockHouseService.getAll(page: 2)),
    );

    blocTest<HouseListBloc, HouseListState>(
      'expect to get HouseListLoaded with 4 testHouse instances',
      build: () {
        when(mockHouseService.getAll(page: anyNamed('page'))).thenAnswer((_) async => [testHouse, testHouse]);
        when(mockAppConfigs.perPage).thenReturn(1);

        return HouseListBloc(
          mockHouseService,
          mockAppConfigs,
        );
      },
      seed: () => HouseListLoaded(
        houses: [
          testHouse,
          testHouse,
        ],
        allItemsLoaded: false,
      ),
      act: (bloc) => bloc.add(const HouseListFetchNextPage()),
      expect: () => [
        HouseListLoaded(
          houses: [
            testHouse,
            testHouse,
            testHouse,
            testHouse,
          ],
          allItemsLoaded: false,
        ),
      ],
    );
  });
}
