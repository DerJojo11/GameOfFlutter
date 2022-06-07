import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/features/house_list/blocs/bloc/house_list_bloc.dart';
import 'package:game_of_flutter/features/house_list/widgets/list_loading_indicator.dart';
import 'package:game_of_flutter/injectable/injection.dart';
import 'package:mockito/mockito.dart';

import '../../../test_helper/mocks/blocs/blocs_mocks.mocks.dart';
import '../../../test_helper/test_models/test_models.dart';
import '../../../test_helper/widgets/test_app.dart';

void main() {
  late MockHouseListBloc mockHouseListBloc;

  setUp(() {
    mockHouseListBloc = MockHouseListBloc();
    when(mockHouseListBloc.stream).thenAnswer(
      (_) => Stream.fromIterable([
        HouseListLoaded(houses: [testHouse], allItemsLoaded: true)
      ]),
    );
    when(mockHouseListBloc.state).thenReturn(HouseListLoaded(houses: [testHouse], allItemsLoaded: true));

    getIt.registerSingleton<HouseListBloc>(mockHouseListBloc);
    getIt.allowReassignment = true;
  });

  testWidgets('verify [HouseListFetchNextPage] will be called', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      TestApp(
        providers: [
          BlocProvider<HouseListBloc>.value(value: mockHouseListBloc),
        ],
        child: const ListLoadingIndicator(),
      ),
    );

    // assert
    verify(mockHouseListBloc.add(const HouseListFetchNextPage()));
  });

  testWidgets('expect to find [Center]', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      TestApp(
        providers: [
          BlocProvider<HouseListBloc>.value(value: mockHouseListBloc),
        ],
        child: const ListLoadingIndicator(),
      ),
    );

    final Finder finder = find.byType(Center);

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect to find [CircularProgressIndicator]', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      TestApp(
        providers: [
          BlocProvider<HouseListBloc>.value(value: mockHouseListBloc),
        ],
        child: const ListLoadingIndicator(),
      ),
    );

    final Finder finder = find.byType(CircularProgressIndicator);

    // assert
    expect(finder, findsOneWidget);
  });
}
