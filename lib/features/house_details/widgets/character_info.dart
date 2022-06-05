import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_flutter/configs/assets.dart';
import 'package:game_of_flutter/configs/paddings.dart';
import 'package:game_of_flutter/extensions/widget_extension.dart';
import 'package:game_of_flutter/features/house_details/blocs/bloc/character_bloc.dart';
import 'package:game_of_flutter/injectable/injection.dart';

class CharacterInfo extends StatelessWidget {
  const CharacterInfo({
    required this.title,
    required this.characterId,
  });

  final String title;
  final int characterId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharacterBloc>(
      create: (context) => getIt<CharacterBloc>()..add(CharacterFetch(id: characterId)),
      child: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),
            _buildHeadline(context, title).withPadding(
              Paddings.bottomSmall,
            ),
            SizedBox(
              height: 150,
              child: state.map(
                loading: (loading) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (loaded) => Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(Assets.charactersPlaceholder),
                    ).withPadding(
                      Paddings.rightMedium,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loaded.character.name,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          _buildBodyText('Culture: ', loaded.character.culture, context),
                          _buildBodyText('Born: ', loaded.character.born, context),
                          _buildBodyText('Died: ', loaded.character.died, context),
                        ],
                      ),
                    ),
                  ],
                ),
                failure: (failure) => Center(
                  child: Text(failure.error),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeadline(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  Widget _buildBodyText(String prefix, String text, BuildContext context) {
    const String notDefined = 'Not defined';

    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(text: prefix, style: const TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: text.isNotEmpty ? text : notDefined),
        ],
      ),
    ).withPadding(
      Paddings.topSmaller,
    );
  }
}
