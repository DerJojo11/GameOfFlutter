import 'package:game_of_flutter/infrastructure/domain/domain.dart';

mixin Dto<T extends Domain> {
  T get toDomain;

  List<String> removeEmptyStringsFromList(List<String>? list) {
    List<String> newList = List.from(list ?? []);
    if (newList.isNotEmpty) {
      newList.removeWhere((element) => element.isEmpty);
    }
    return newList;
  }
}

extension DtoExtension on List<Dto> {
  /// Maps a List of [Dto] to a List of specific Type [Domain]
  List<T> toDomain<T extends Domain>() => map((e) => e.toDomain as T).toList();
}
