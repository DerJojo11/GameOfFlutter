import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/features/house_list/widgets/house_entry.dart';

import '../../../test_helper/test_models/test_models.dart';
import '../../../test_helper/widgets/test_app.dart';

void main() {
  testWidgets('expect find [ListTile]', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      TestApp(
        child: HouseEntry(
          house: testHouse,
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
      TestApp(
        child: HouseEntry(
          house: testHouse,
        ),
      ),
    );
    final Finder finder = find.text(testHouse.name);

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect find [Icon] with [Icons.area_chart_rounded]', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      TestApp(
        child: HouseEntry(
          house: testHouse,
        ),
      ),
    );
    final Finder finder = find.byIcon(Icons.area_chart_rounded);

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect find [Text] with region from house', (WidgetTester tester) async {
    // arrange

    // act
    await tester.pumpWidget(
      TestApp(
        child: HouseEntry(
          house: testHouse,
        ),
      ),
    );
    final Finder finder = find.text(testHouse.region);

    // assert
    expect(finder, findsOneWidget);
  });
}
