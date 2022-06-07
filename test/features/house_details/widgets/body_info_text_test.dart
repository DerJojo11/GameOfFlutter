import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/features/house_details/widgets/body_info_text.dart';

import '../../../test_helper/widgets/test_app.dart';

void main() {
  testWidgets('expect to find title and content from RichText', (WidgetTester tester) async {
    // arrange
    const String title = 'title';
    const String content = 'content';

    // act
    await tester.pumpWidget(
      const TestApp(
        child: BodyInfoText(
          title: title,
          content: content,
        ),
      ),
    );
    final Finder finder = find.text(title + content, findRichText: true);

    // assert
    expect(finder, findsOneWidget);
  });
}
