import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_flutter/features/house_list/blocs/house_list/house_list_bloc.dart';
import 'package:game_of_flutter/features/house_list/widgets/house_entry.dart';
import 'package:game_of_flutter/features/house_list/widgets/list_loading_indicator.dart';
import 'package:game_of_flutter/injectable/injection.dart';

class HouseList extends StatelessWidget {
  const HouseList();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HouseListBloc>(
      create: (_) => getIt<HouseListBloc>()..add(const HouseListFetch()),
      child: BlocBuilder<HouseListBloc, HouseListState>(
        builder: (context, state) => RefreshIndicator(
          onRefresh: () => _onRefresh(context),
          child: state.map(
            loading: (loading) => const Center(child: CircularProgressIndicator()),
            loaded: (loaded) => _buildList(loaded),
            failure: (failure) => Center(child: Text(failure.error)),
          ),
        ),
      ),
    );
  }

  Widget _buildList(HouseListLoaded loaded) {
    return Scrollbar(
      child: ListView.builder(
        itemCount: loaded.allItemsLoaded ? loaded.houses.length : loaded.houses.length + 1,
        itemBuilder: (context, index) {
          if (index < loaded.houses.length) {
            return HouseEntry(
              house: loaded.houses[index],
            );
          }
          return const ListLoadingIndicator();
        },
      ),
    );
  }

  Future<void> _onRefresh(BuildContext context) async => context.read<HouseListBloc>().add(const HouseListRefresh());
}
