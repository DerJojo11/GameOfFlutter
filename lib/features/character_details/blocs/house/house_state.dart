part of 'house_bloc.dart';

@freezed
class HouseState with _$HouseState {
  const factory HouseState.loading() = HouseLoading;

  const factory HouseState.loaded({
    required House house,
  }) = HouseLoaded;

  const factory HouseState.failure({
    required String error,
  }) = HouseFailure;
}
