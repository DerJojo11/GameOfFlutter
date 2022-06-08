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
              (context, index) => index == 0 ? _buildContent(context) : _buildSliderSection(),
            ),
          ).withSliverPadding(
            Paddings.verticalMedium,
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
          Paddings.topMedium,
        ),
        _buildCharacterInfo(house.currentLord, headline: 'Current Lord'),
        _buildCharacterInfo(house.heir, headline: 'Heir'),
        _buildCharacterInfo(house.overlord, headline: 'Overlord'),
        _buildCharacterInfo(house.founder, headline: 'Founder'),
      ],
    ).withPadding(
      Paddings.horizontalMedium,
    );
  }

  Widget _buildSliderSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        const HeadlineText(title: 'Sworn members').withPadding(
          const EdgeInsets.only(
            top: Paddings.smallValue,
            bottom: Paddings.mediumValue,
            left: Paddings.mediumValue,
            right: Paddings.mediumValue,
          ),
        ),
        InfoSlider(
          itemCount: house.swornMembers.length,
          itemBuilder: (_, index, __) => CharacterInfo(characterId: house.swornMembers[index]),
        ),
      ],
    ).withPadding(
      Paddings.topSmall,
    );
  }

  Widget _buildHouseInfomations(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadlineText(title: 'Informations').withPadding(
          Paddings.bottomSmall,
        ),
        BodyInfoText(title: 'Region: ', content: house.region),
        BodyInfoText(title: 'Coat of arms: ', content: house.coatOfArms),
        BodyInfoText(title: 'Words: ', content: house.words),
        _buildWrap(context, items: house.titles, prefix: 'Titles: '),
        _buildWrap(context, items: house.seats, prefix: 'Seats: '),
        BodyInfoText(title: 'Founded: ', content: house.founded),
        _buildWrap(context, items: house.ancestralWeapons, prefix: 'Ancestral Weapons: '),
        BodyInfoText(title: 'Died out: ', content: house.diedOut),
      ],
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

  // Overlord
  Widget _buildCharacterInfo(int? id, {required String headline}) {
    return id != null
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadlineText(title: headline).withPadding(
                Paddings.verticalMedium,
              ),
              CharacterInfo(
                characterId: id,
              ),
            ],
          )
        : const SizedBox.shrink();
  }
}
