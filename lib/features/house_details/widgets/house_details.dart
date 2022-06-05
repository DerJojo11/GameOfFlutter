import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_flutter/configs/assets.dart';
import 'package:game_of_flutter/configs/paddings.dart';
import 'package:game_of_flutter/extensions/widget_extension.dart';
import 'package:game_of_flutter/features/house_details/blocs/bloc/character_bloc.dart';
import 'package:game_of_flutter/features/house_details/widgets/flexible_house_details_space_bar.dart';
import 'package:game_of_flutter/infrastructure/domain/house.dart';
import 'package:game_of_flutter/injectable/injection.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            prefix,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Wrap(
            alignment: WrapAlignment.start,
            runSpacing: Paddings.smallValue,
            spacing: Paddings.smallValue,
            children: [
              for (final String title in items)
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: ColoredBox(
                    color: Theme.of(context).primaryColor.withOpacity(.6),
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ).withPadding(
                      Paddings.small,
                    ),
                  ),
                ),
            ],
          ).withPadding(
            Paddings.topSmaller,
          ),
        ],
      ).withPadding(
        Paddings.topSmaller,
      ),
    );
  }

  // Overlord
  Widget _buildCharacterInfo(int? id, {required String headline}) {
    return Visibility(
      visible: id != null,
      child: BlocProvider<CharacterBloc>(
        create: (context) => getIt<CharacterBloc>()..add(CharacterFetch(id: id!)),
        child: BlocBuilder<CharacterBloc, CharacterState>(
          builder: (context, state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              _buildHeadline(context, headline).withPadding(
                Paddings.bottomMedium,
              ),
              SizedBox(
                height: 200,
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
      ),
    );
  }

  Widget _buildHeadline(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4,
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
