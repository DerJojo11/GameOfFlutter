part of 'character_bloc.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.fetch({required int id}) = CharacterFetch;
}
