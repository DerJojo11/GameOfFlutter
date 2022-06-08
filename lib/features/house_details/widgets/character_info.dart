import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_flutter/configs/assets.dart';
import 'package:game_of_flutter/core/widgets/details_info.dart';
import 'package:game_of_flutter/features/house_details/blocs/character_bloc/character_bloc.dart';
import 'package:game_of_flutter/features/house_details/widgets/body_info_text.dart';
import 'package:game_of_flutter/injectable/injection.dart';
import 'package:game_of_flutter/router/router_paths.dart';
import 'package:go_router/go_router.dart';

class CharacterInfo extends StatelessWidget {
  const CharacterInfo({
    required this.characterId,
  });

  final int characterId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharacterBloc>(
      create: (context) => getIt<CharacterBloc>()..add(CharacterFetch(id: characterId)),
      child: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) => SizedBox(
          height: 150,
          child: state.map(
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (loaded) => InkWell(
                onTap: () => context.push(RouterPaths.characterDetails, extra: loaded.character),
                child: DetailsInfo(
                  asset: Assets.charactersPlaceholder,
                  title: loaded.character.name,
                  children: [
                    BodyInfoText(title: 'Culture: ', content: loaded.character.culture, maxLines: 1),
                    BodyInfoText(title: 'Born: ', content: loaded.character.born, maxLines: 1),
                    BodyInfoText(title: 'Died: ', content: loaded.character.died, maxLines: 1),
                  ],
                )),
            failure: (failure) => Center(
              child: Text(failure.error),
            ),
          ),
        ),
      ),
    );
  }
}
