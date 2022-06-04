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
    String? region,
    String? coatOfArms,
    String? words,
    int? currentLord,
    int? heir,
    int? overlord,
    String? founded,
    int? founder,
    String? diedOut,
  }) = _House;
}
