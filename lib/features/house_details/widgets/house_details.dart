import 'package:flutter/material.dart';
import 'package:game_of_flutter/configs/paddings.dart';
import 'package:game_of_flutter/extensions/widget_extension.dart';
import 'package:game_of_flutter/features/house_details/widgets/character_info.dart';
import 'package:game_of_flutter/features/house_details/widgets/flexible_house_details_space_bar.dart';
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
            flexibleSpace: FlexibleHouseDetailsSpaceBar(
              name: house.name,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              addAutomaticKeepAlives: true,
              childCount: 1,
              (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHouseInfomations(context),
                  _buildCharacterInfo(house.currentLord, headline: 'Current Lord'),
                  _buildCharacterInfo(house.heir, headline: 'Heir'),
                  _buildCharacterInfo(house.overlord, headline: 'Overlord'),
                  _buildCharacterInfo(house.founder, headline: 'Founder'),
                ],
              ),
            ),
          ).withSliverPadding(
            Paddings.medium,
          ),
        ],
      ),
    );
  }

  Widget _buildHouseInfomations(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeadline(context, 'Informations'),
        _buildBodyText('Region: ', house.region, context),
        _buildBodyText('Coat of arms: ', house.coatOfArms, context),
        _buildBodyText('Words: ', house.words, context),
        _buildWrap(context, items: house.titles ?? [], prefix: 'Titles: '),
        _buildWrap(context, items: house.seats ?? [], prefix: 'Seats: '),
        _buildBodyText('Founded: ', house.founded, context),
        _buildWrap(context, items: house.ancestralWeapons ?? [], prefix: 'Ancestral Weapons: '),
        _buildBodyText('Died out: ', house.diedOut, context),
      ],
    ).withPadding(
      Paddings.bottomSmall,
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
        ? CharacterInfo(
            title: headline,
            characterId: id,
          )
        : const SizedBox.shrink();
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
