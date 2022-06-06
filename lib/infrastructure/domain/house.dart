import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_flutter/infrastructure/domain/domain.dart';

part 'house.freezed.dart';

@freezed
class House with _$House implements Domain {
  factory House({
    required int id,
    required String name,
    required List<String>? titles,
    required List<String>? seats,
    required List<String>? ancestralWeapons,
    required List<int> cadetBranches,
    required List<int>? swornMembers,
    required String region,
    required String coatOfArms,
    required String words,
    required String founded,
    required String diedOut,
    int? currentLord,
    int? heir,
    int? overlord,
    int? founder,
  }) = _House;
}
