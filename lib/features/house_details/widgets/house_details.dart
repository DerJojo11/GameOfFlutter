import 'package:flutter/material.dart';
import 'package:game_of_flutter/configs/assets.dart';
import 'package:game_of_flutter/configs/paddings.dart';
import 'package:game_of_flutter/extensions/widget_extension.dart';
import 'package:game_of_flutter/features/house_details/widgets/body_info_text.dart';
import 'package:game_of_flutter/features/house_details/widgets/character_info.dart';
import 'package:game_of_flutter/core/widgets/info_slider.dart';
import 'package:game_of_flutter/features/house_details/widgets/flexible_details_space_bar.dart';
import 'package:game_of_flutter/features/house_details/widgets/headline_text.dart';
import 'package:game_of_flutter/features/house_details/widgets/info_wrap.dart';
import 'package:game_of_flutter/infrastructure/domain/house.dart';
import 'package:game_of_flutter/l10n/l10n.dart';

class HouseDetails extends StatelessWidget {
  const HouseDetails({
    required this.house,
  });

  final House house;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            stretch: true,
            pinned: true,
            flexibleSpace: FlexibleDetailsSpaceBar(
              name: house.name,
              asset: Assets.houseDetailsHeader,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              addAutomaticKeepAlives: true,
              childCount: house.swornMembers.isNotEmpty ? 2 : 1,
              (context, index) =>
                  index == 0 ? _buildContent(context) : _buildSliderSection(),
            ),
          ).withPadding(
            edges: [Edges.vertical],
            isSliver: true,
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHouseInfomations(context),
        const Divider().withPadding(
          edges: [Edges.top],
        ),
        _buildCharacterInfo(house.currentLord, headline: l10n.currentLord),
        _buildCharacterInfo(house.heir, headline: l10n.heir),
        _buildCharacterInfo(house.overlord, headline: l10n.overlord),
        _buildCharacterInfo(house.founder, headline: l10n.founder),
      ],
    ).withPadding(
      edges: [Edges.horizontal],
    );
  }

  Widget _buildSliderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        HeadlineText(title: l10n.swornMembers).withPadding(),
        InfoSlider(
          itemCount: house.swornMembers.length,
          itemBuilder: (_, index, __) =>
              CharacterInfo(characterId: house.swornMembers[index]),
        ),
      ],
    ).withPadding(
      edges: [Edges.top],
      length: Length.small,
    );
  }

  Widget _buildHouseInfomations(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeadlineText(title: l10n.informations).withPadding(
          edges: [Edges.bottom],
          length: Length.small,
        ),
        BodyInfoText(title: l10n.regionInfoTitle, content: house.region),
        BodyInfoText(
            title: l10n.coatOfArmsInfoTitle, content: house.coatOfArms),
        BodyInfoText(title: l10n.wordsInfoTitle, content: house.words),
        _buildWrap(context, items: house.titles, prefix: l10n.titlesWrapPrefix),
        _buildWrap(context, items: house.seats, prefix: l10n.seatsWrapPrefix),
        BodyInfoText(title: l10n.foundedInfoTitle, content: house.founded),
        _buildWrap(context,
            items: house.ancestralWeapons,
            prefix: l10n.ancestralWeaponsWrapPrefix),
        BodyInfoText(title: l10n.diedOutInfoTitle, content: house.diedOut),
      ],
    );
  }

  Widget _buildWrap(BuildContext context,
      {required List<String> items, required String prefix}) {
    return Visibility(
      visible: items.isNotEmpty,
      child: InfoWrap(
        title: prefix,
        items: items,
      ),
    );
  }

  Widget _buildCharacterInfo(int? id, {required String headline}) {
    return id != null
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadlineText(title: headline).withPadding(
                edges: [Edges.vertical],
              ),
              CharacterInfo(
                characterId: id,
              ),
            ],
          )
        : const SizedBox.shrink();
  }
}
