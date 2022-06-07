import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:game_of_flutter/features/house_details/blocs/bloc/character_bloc.dart';
import 'package:game_of_flutter/features/house_details/widgets/body_info_text.dart';
import 'package:game_of_flutter/features/house_details/widgets/character_info.dart';
import 'package:game_of_flutter/features/house_details/widgets/headline_text.dart';
import 'package:game_of_flutter/injectable/injection.dart';
import 'package:mockito/mockito.dart';

import '../../../test_helper/mocks/blocs/blocs_mocks.mocks.dart';
import '../../../test_helper/test_models/test_models.dart';
import '../../../test_helper/widgets/test_app.dart';

void main() {
  late MockCharacterBloc mockCharacterBloc;

  setUp(() {
    mockCharacterBloc = MockCharacterBloc();
    when(mockCharacterBloc.stream).thenAnswer(
      (_) => Stream.fromIterable(
        [CharacterLoaded(character: testCharacter)],
      ),
    );
    when(mockCharacterBloc.state).thenReturn(CharacterLoaded(character: testCharacter));

    getIt.registerSingleton<CharacterBloc>(mockCharacterBloc);
    getIt.allowReassignment = true;
  });

  testWidgets('expect to find [HeadlineText] with provided title', (WidgetTester tester) async {
    // arrange
    const String title = 'title';
    const int charaterId = 583;

    // act
    await tester.pumpWidget(
      const TestApp(
        child: CharacterInfo(
          title: title,
          characterId: charaterId,
        ),
      ),
    );

    final Finder finder = find.byWidgetPredicate((widget) => widget is HeadlineText && widget.title == title);

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect to find [Divider]', (WidgetTester tester) async {
    // arrange
    const String title = 'title';
    const int charaterId = 583;

    // act
    await tester.pumpWidget(
      const TestApp(
        child: CharacterInfo(
          title: title,
          characterId: charaterId,
        ),
      ),
    );

    final Finder finder = find.byType(Divider);

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect to find [BodyInfoText] for culture', (WidgetTester tester) async {
    // arrange
    const String title = 'title';
    const int charaterId = 583;

    when(mockCharacterBloc.state).thenReturn(CharacterLoaded(
        character: testCharacter.copyWith(
      culture: 'Culture',
    )));

    // act
    await tester.pumpWidget(
      const TestApp(
        child: CharacterInfo(
          title: title,
          characterId: charaterId,
        ),
      ),
    );

    final Finder finder = find.byWidgetPredicate(
      (widget) => widget is BodyInfoText && widget.title == 'Culture: ',
      description: 'Culture',
    );

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect to find [BodyInfoText] for born', (WidgetTester tester) async {
    // arrange
    const String title = 'title';
    const int charaterId = 583;

    when(mockCharacterBloc.state).thenReturn(CharacterLoaded(
        character: testCharacter.copyWith(
      born: 'Born',
    )));

    // act
    await tester.pumpWidget(
      const TestApp(
        child: CharacterInfo(
          title: title,
          characterId: charaterId,
        ),
      ),
    );

    final Finder finder = find.byWidgetPredicate(
      (widget) => widget is BodyInfoText && widget.title == 'Born: ',
      description: 'Born',
    );

    // assert
    expect(finder, findsOneWidget);
  });

  testWidgets('expect to find [BodyInfoText] for died', (WidgetTester tester) async {
    // arrange
    const String title = 'title';
    const int charaterId = 583;

    when(mockCharacterBloc.state).thenReturn(CharacterLoaded(
        character: testCharacter.copyWith(
      born: 'Died',
    )));

    // act
    await tester.pumpWidget(
      const TestApp(
        child: CharacterInfo(
          title: title,
          characterId: charaterId,
        ),
      ),
    );

    final Finder finder = find.byWidgetPredicate(
      (widget) => widget is BodyInfoText && widget.title == 'Died: ',
      description: 'Died',
    );

    // assert
    expect(finder, findsOneWidget);
  });
}
