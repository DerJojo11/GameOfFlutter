import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/features/house_details/widgets/headline_text.dart';

import '../../../test_helper/widgets/test_app.dart';

void main() {
  testWidgets('expect to find provided title', (WidgetTester tester) async {
    // arrange
    const String title = 'title';

    // act
    await tester.pumpWidget(
      const TestApp(
        child: HeadlineText(
          title: title,
        ),
      ),
    );
    final Finder finder = find.text(title);

    // assert
    expect(finder, findsOneWidget);
  });
}
