import 'package:flutter/material.dart';
import 'package:game_of_flutter/configs/assets.dart';
import 'package:game_of_flutter/configs/paddings.dart';
import 'package:game_of_flutter/core/widgets/info_slider.dart';
import 'package:game_of_flutter/extensions/widget_extension.dart';
import 'package:game_of_flutter/features/character_details/widgets/house_info.dart';
import 'package:game_of_flutter/features/house_details/widgets/body_info_text.dart';
import 'package:game_of_flutter/features/house_details/widgets/character_info.dart';
import 'package:game_of_flutter/features/house_details/widgets/flexible_house_details_space_bar.dart';
import 'package:game_of_flutter/features/house_details/widgets/headline_text.dart';
import 'package:game_of_flutter/features/house_details/widgets/info_wrap.dart';
import 'package:game_of_flutter/infrastructure/domain/character.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            stretch: true,
            pinned: true,
            flexibleSpace: FlexibleHouseDetailsSpaceBar(
              name: character.name,
              asset: Assets.charactersDetailsPlaceholder,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              addAutomaticKeepAlives: true,
              childCount: 1,
              (context, index) => _buildContent(context),
            ),
          ).withSliverPadding(
            Paddings.bottomMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadlineText(title: 'Informations').withPadding(
              Paddings.bottomSmall,
            ),
            BodyInfoText(title: 'Culture: ', content: character.culture),
            BodyInfoText(title: 'Born: ', content: character.born),
            BodyInfoText(title: 'Died: ', content: character.died),
            _buildWrap(context, items: character.aliases, prefix: 'Aliases: '),
            _buildWrap(context, items: character.playedBy, prefix: 'Played by: '),
            BodyInfoText(title: 'Gender: ', content: character.gender),
            _buildWrap(context, items: character.titles, prefix: 'Titles: '),
            if (character.father != null) _buildCharacterInfo('Father', character.father!),
            if (character.mother != null) _buildCharacterInfo('Mother', character.mother!),
            if (character.spouse != null) _buildCharacterInfo('Spouse', character.spouse!),
          ],
        ).withPadding(
          Paddings.medium,
        ),
        if (character.allegiances.isNotEmpty) _buildSliderSection(),
      ],
    );
  }

  Widget _buildCharacterInfo(String title, int characterId) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadlineText(title: title).withPadding(
          Paddings.bottomMedium,
        ),
        CharacterInfo(characterId: characterId),
      ],
    ).withPadding(
      Paddings.topMedium,
    );
  }

  Widget _buildWrap(BuildContext context, {required List<String> items, required String prefix}) {
    return Visibility(
      visible: items.isNotEmpty,
      child: InfoWrap(
        title: prefix,
        items: items,
      ),
    );
  }

  Widget _buildSliderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        const HeadlineText(title: 'Allegiances').withPadding(
          const EdgeInsets.only(
            top: Paddings.smallValue,
            bottom: Paddings.mediumValue,
            left: Paddings.mediumValue,
            right: Paddings.mediumValue,
          ),
        ),
        InfoSlider(
          itemCount: character.allegiances.length,
          itemBuilder: (_, index, __) => HouseInfo(id: character.allegiances[index]),
        ),
      ],
    );
  }
}
