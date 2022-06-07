import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/features/house_list/widgets/house_entry.dart';

import '../../../test_helper/test_models/test_models.dart';

void main() {
  testWidgets('expect find [ListTile]', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: HouseEntry(
            house: testHouse,
          ),
        ),
      ),
    );
    final Finder finder = find.byType(ListTile);

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect find [Text] with name of house', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: HouseEntry(
            house: testHouse,
          ),
        ),
      ),
    );
    final Finder finder = find.text(testHouse.name);

    // assert
    expect(finder, findsOneWidget);
  });
}
