import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/features/house_list/blocs/bloc/house_list_bloc.dart';
import 'package:game_of_flutter/features/house_list/widgets/house_entry.dart';
import 'package:game_of_flutter/features/house_list/widgets/house_list.dart';
import 'package:game_of_flutter/injectable/injection.dart';
import 'package:mockito/mockito.dart';

import '../../../test_helper/test_models/test_models.dart';
import '../../../test_helper/widgets/test_app.dart';
import '../../../test_helper/mocks/blocs/blocs_mocks.mocks.dart';

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

  testWidgets('verify HouseListBloc will call [HouseListFetch]', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      const TestApp(
        child: HouseList(),
      ),
    );

    // assert
    verify(mockHouseListBloc.add(const HouseListFetch()));
  });

  testWidgets('expect to find [Scrollbar]', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      const TestApp(
        child: HouseList(),
      ),
    );

    final Finder finder = find.byType(Scrollbar);

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect to find [ListView]', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      const TestApp(
        child: HouseList(),
      ),
    );

    final Finder finder = find.byType(ListView);

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect itemCount of ListView is 1 when allElementLoaded is true', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      const TestApp(
        child: HouseList(),
      ),
    );

    final Finder finder = find.byWidgetPredicate(
      ((widget) => widget is ListView && widget.semanticChildCount == 1),
    );

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect to find 1 [HouseEntry]', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      const TestApp(
        child: HouseList(),
      ),
    );

    final Finder finder = find.byType(HouseEntry);
    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect to find [CircularProgressIndicator] when allElementsLoaded is false',
      (WidgetTester tester) async {
    // arrange
    when(mockHouseListBloc.state).thenReturn(HouseListLoaded(houses: [testHouse], allItemsLoaded: false));

    // act
    await tester.pumpWidget(
      const TestApp(
        child: HouseList(),
      ),
    );

    final Finder finder = find.byType(CircularProgressIndicator);

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect to find [CircularProgressIndicator] when HouseListLoading return', (WidgetTester tester) async {
    // arrange
    when(mockHouseListBloc.state).thenReturn(const HouseListLoading());

    // act
    await tester.pumpWidget(
      const TestApp(
        child: HouseList(),
      ),
    );

    final Finder finder = find.byType(CircularProgressIndicator);

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect to find error text when HouseListFailure return', (WidgetTester tester) async {
    // arrange
    const String error = 'Error';
    when(mockHouseListBloc.state).thenReturn(const HouseListFailure(error: error));

    // act
    await tester.pumpWidget(
      const TestApp(
        child: HouseList(),
      ),
    );

    final Finder finder = find.text(error);

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('verify Refresh is called when user refreshes list', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      const TestApp(
        child: HouseList(),
      ),
    );

    await tester.dragFrom(const Offset(200, 200), const Offset(0, 500));
    await tester.pumpAndSettle();

    // assert
    verify(mockHouseListBloc.add(const HouseListRefresh()));
  });
}
