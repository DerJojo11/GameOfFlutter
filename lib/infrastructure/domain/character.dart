import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_flutter/infrastructure/domain/domain.dart';

part 'character.freezed.dart';

@freezed
class Character with _$Character implements Domain {
  factory Character({
    required int id,
    required String name,
    required String gender,
    required String culture,
    required String born,
    required String died,
    required String father,
    required String mother,
    required String spouse,
    required List<String> titles,
    required List<String> aliases,
    required List<int> allegiances,
    required List<int> books,
    required List<int> povBooks,
    required List<String> tvSeries,
    required List<String> playedBy,
  }) = _Character;
}
