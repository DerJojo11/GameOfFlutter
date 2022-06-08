import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_flutter/configs/configs.dart';
import 'package:game_of_flutter/infrastructure/domain/character.dart';
import 'package:game_of_flutter/infrastructure/services/character_service.dart';
import 'package:injectable/injectable.dart';

part 'character_event.dart';
part 'character_state.dart';
part 'character_bloc.freezed.dart';

@injectable
class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc({
    required this.characterService,
    required this.configs,
  }) : super(const CharacterLoading()) {
    on<CharacterFetch>(_onCharacterFetch);
  }

  final CharacterService characterService;
  final Configs configs;

  Future<void> _onCharacterFetch(CharacterFetch event, Emitter<CharacterState> emit) async {
    try {
      final Character character = await characterService.getForId(event.id);
      emit(CharacterLoaded(
        character: character,
      ));
    } catch (e) {
      emit(CharacterFailure(error: e.toString()));
    }
  }
}
