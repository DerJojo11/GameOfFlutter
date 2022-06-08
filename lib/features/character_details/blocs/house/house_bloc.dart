import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_flutter/configs/configs.dart';
import 'package:game_of_flutter/infrastructure/domain/house.dart';
import 'package:game_of_flutter/infrastructure/services/house_service.dart';
import 'package:injectable/injectable.dart';

part 'house_event.dart';
part 'house_state.dart';
part 'house_bloc.freezed.dart';

@injectable
class HouseBloc extends Bloc<HouseEvent, HouseState> {
  HouseBloc(
    this.houseService,
    this.configs,
  ) : super(const HouseLoading()) {
    on<HouseFetch>(_onCharacterFetch);
  }

  final HouseService houseService;
  final Configs configs;

  Future<void> _onCharacterFetch(HouseFetch event, Emitter<HouseState> emit) async {
    try {
      final House house = await houseService.getForId(event.id);
      emit(HouseLoaded(
        house: house,
      ));
    } catch (e) {
      emit(HouseFailure(error: e.toString()));
    }
  }
}
