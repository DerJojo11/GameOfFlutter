part of 'character_bloc.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.loading() = CharacterLoading;

  const factory CharacterState.loaded({
    required Character character,
  }) = CharacterLoaded;

  const factory CharacterState.failure({
    required String error,
  }) = CharacterFailure;
}
