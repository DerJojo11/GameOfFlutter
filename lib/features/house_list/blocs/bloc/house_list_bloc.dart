import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_flutter/configs/configs.dart';
import 'package:game_of_flutter/infrastructure/domain/house.dart';
import 'package:game_of_flutter/infrastructure/services/house_service.dart';
import 'package:injectable/injectable.dart';

part 'house_list_event.dart';
part 'house_list_state.dart';
part 'house_list_bloc.freezed.dart';

@injectable
class HouseListBloc extends Bloc<HouseListEvent, HouseListState> {
  HouseListBloc(
    this.houseService,
    this.configs,
  ) : super(const HouseListLoading()) {
    on<HouseListFetch>(_onHouseListFetch);
    on<HouseListFetchNextPage>(_onHouseListFetchNextPage);
    on<HouseListRefresh>(_onHouseListRefresh);
  }

  final HouseService houseService;
  final Configs configs;

  Future<void> _onHouseListFetch(HouseListFetch event, Emitter<HouseListState> emit) async {
    emit(await _fetchHouses());
  }

  Future<void> _onHouseListRefresh(HouseListRefresh event, Emitter<HouseListState> emit) async {
    emit(const HouseListLoading());
    emit(await _fetchHouses());
  }

  FutureOr<void> _onHouseListFetchNextPage(HouseListFetchNextPage event, Emitter<HouseListState> emit) async {
    final HouseListState currentState = state;

    if (currentState is HouseListLoaded) {
      final int currentPage = (currentState.houses.length / configs.perPage).ceil();
      final HouseListState newState = await _fetchHouses(page: currentPage + 1);
      if (newState is HouseListLoaded) {
        final List<House> allHouses = [...currentState.houses, ...newState.houses];
        emit(HouseListLoaded(
          houses: allHouses,
          allItemsLoaded: newState.allItemsLoaded,
        ));
      } else {
        emit(newState);
      }
    }
  }

  Future<HouseListState> _fetchHouses({int page = 1}) async {
    try {
      final List<House> houses = await houseService.getAllHouses(page: page);
      return HouseListLoaded(
        houses: houses,
        allItemsLoaded: houses.length < configs.perPage,
      );
    } catch (e) {
      return HouseListFailure(error: e.toString());
    }
  }
}
