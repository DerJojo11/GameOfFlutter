import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_flutter/features/house_list/blocs/house_list/house_list_bloc.dart';

class ListLoadingIndicator extends StatefulWidget {
  const ListLoadingIndicator({Key? key}) : super(key: key);

  @override
  State<ListLoadingIndicator> createState() => _ListLoadingIndicatorState();
}

class _ListLoadingIndicatorState extends State<ListLoadingIndicator> {
  @override
  void didChangeDependencies() {
    context.read<HouseListBloc>().add(const HouseListFetchNextPage());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
