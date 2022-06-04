import 'package:game_of_flutter/infrastructure/domain/domain.dart';

abstract class Dto<T extends Domain> {
  T get toDomain;
}

extension DtoExtension on List<Dto> {
  /// Maps a List of [Dto] to a List of specific Type [Domain]
  List<T> toDomain<T extends Domain>() => map((e) => e.toDomain as T).toList();
}
