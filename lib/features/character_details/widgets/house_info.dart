import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_flutter/configs/assets.dart';
import 'package:game_of_flutter/core/widgets/details_info.dart';
import 'package:game_of_flutter/features/character_details/blocs/house/house_bloc.dart';
import 'package:game_of_flutter/features/house_details/widgets/body_info_text.dart';
import 'package:game_of_flutter/injectable/injection.dart';
import 'package:game_of_flutter/router/router_paths.dart';
import 'package:go_router/go_router.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HouseBloc>(
      create: (context) => getIt<HouseBloc>()..add(HouseFetch(id: id)),
      child: BlocBuilder<HouseBloc, HouseState>(
        builder: (context, state) => SizedBox(
          height: 150,
          child: state.map(
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (loaded) => InkWell(
                onTap: () => context.push(RouterPaths.houseDetails, extra: loaded.house),
                child: DetailsInfo(
                  asset: Assets.coatOfArmsPlaceholder,
                  title: loaded.house.name,
                  children: [
                    BodyInfoText(title: 'Region: ', content: loaded.house.region, maxLines: 1),
                    BodyInfoText(title: 'Coat of Arms: ', content: loaded.house.coatOfArms, maxLines: 1),
                    BodyInfoText(title: 'words: ', content: loaded.house.words, maxLines: 1),
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
