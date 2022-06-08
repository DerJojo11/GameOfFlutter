part of 'house_list_bloc.dart';

@freezed
class HouseListState with _$HouseListState {
  const factory HouseListState.loading() = HouseListLoading;
  const factory HouseListState.loaded({
    required List<House> houses,
    @Default(false) bool allItemsLoaded,
  }) = HouseListLoaded;
  const factory HouseListState.failure({required String error}) = HouseListFailure;
}
