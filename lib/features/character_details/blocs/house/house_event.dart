part of 'house_bloc.dart';

@freezed
class HouseEvent with _$HouseEvent {
  const factory HouseEvent.fetch({required int id}) = HouseFetch;
}
