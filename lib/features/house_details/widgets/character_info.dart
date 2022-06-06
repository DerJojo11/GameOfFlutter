import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_flutter/configs/assets.dart';
import 'package:game_of_flutter/configs/paddings.dart';
import 'package:game_of_flutter/extensions/widget_extension.dart';
import 'package:game_of_flutter/features/house_details/blocs/bloc/character_bloc.dart';
import 'package:game_of_flutter/features/house_details/widgets/body_info_text.dart';
import 'package:game_of_flutter/features/house_details/widgets/headline_text.dart';
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
            HeadlineText(title: title).withPadding(
              const EdgeInsets.only(
                top: Paddings.smallValue,
                bottom: Paddings.smallValue,
              ),
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
                          BodyInfoText(title: 'Culture: ', content: loaded.character.culture),
                          BodyInfoText(title: 'Born: ', content: loaded.character.born),
                          BodyInfoText(title: 'Died: ', content: loaded.character.died),
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
}
