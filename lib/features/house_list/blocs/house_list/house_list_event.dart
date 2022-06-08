part of 'house_list_bloc.dart';

@freezed
class HouseListEvent with _$HouseListEvent {
  const factory HouseListEvent.fetch() = HouseListFetch;
  const factory HouseListEvent.fetchNextPage() = HouseListFetchNextPage;
  const factory HouseListEvent.refresh() = HouseListRefresh;
}
