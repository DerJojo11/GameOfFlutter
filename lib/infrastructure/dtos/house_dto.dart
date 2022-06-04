import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_flutter/infrastructure/domain/house.dart';
import 'package:game_of_flutter/infrastructure/dtos/dto.dart';
import '/extensions/string_extensions.dart';

part 'house_dto.freezed.dart';
part 'house_dto.g.dart';

@freezed
class HouseDto with _$HouseDto implements Dto<House> {
  factory HouseDto({
    String? url,
    String? name,
    String? region,
    String? coatOfArms,
    String? words,
    List<String>? titles,
    List<String>? seats,
    String? currentLord,
    String? heir,
    String? overlord,
    String? founded,
    String? founder,
    String? diedOut,
    List<String>? ancestralWeapons,
    List<String>? cadetBranches,
    List<String>? swornMembers,
  }) = _HouseDto;

  factory HouseDto.fromJson(Map<String, dynamic> json) =>
      _$HouseDtoFromJson(json);

  const HouseDto._();

  @override
  House get toDomain => House(
        id: url?.extractNumber ?? 0,
        name: name ?? '',
        titles: titles,
        seats: seats,
        ancestralWeapons: ancestralWeapons,
        cadetBranches:
            cadetBranches?.map((e) => e.extractNumber ?? 0).toList() ?? [],
        swornMembers:
            swornMembers?.map((e) => e.extractNumber ?? 0).toList() ?? [],
        coatOfArms: coatOfArms,
        currentLord: currentLord?.extractNumber,
        diedOut: diedOut,
        founded: founded,
        founder: founded?.extractNumber,
        heir: heir?.extractNumber,
        overlord: overlord?.extractNumber,
        region: region,
        words: words,
      );
}
