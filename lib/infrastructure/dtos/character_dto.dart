import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_flutter/infrastructure/domain/character.dart';
import 'package:game_of_flutter/infrastructure/dtos/dto.dart';
import 'package:game_of_flutter/extensions/string_extensions.dart';

part 'character_dto.freezed.dart';
part 'character_dto.g.dart';

@freezed
class CharacterDto with _$CharacterDto, Dto<Character> {
  factory CharacterDto({
    String? url,
    String? name,
    String? gender,
    String? culture,
    String? born,
    String? died,
    String? father,
    String? mother,
    String? spouse,
    List<String>? titles,
    List<String>? aliases,
    List<String>? allegiances,
    List<String>? books,
    List<String>? povBooks,
    List<String>? tvSeries,
    List<String>? playedBy,
  }) = _CharacterDto;

  factory CharacterDto.fromJson(Map<String, dynamic> json) => _$CharacterDtoFromJson(json);

  const CharacterDto._();

  @override
  Character get toDomain => Character(
        id: url?.extractNumber ?? 0,
        name: name ?? '',
        gender: gender ?? '',
        culture: culture ?? '',
        born: born ?? '',
        died: died ?? '',
        father: father?.extractNumber,
        mother: mother?.extractNumber,
        spouse: spouse?.extractNumber,
        titles: removeEmptyStringsFromList(titles),
        aliases: removeEmptyStringsFromList(aliases),
        allegiances: allegiances?.map((e) => e.extractNumber).whereType<int>().toList() ?? [],
        books: books?.map((e) => e.extractNumber).whereType<int>().toList() ?? [],
        povBooks: povBooks?.map((e) => e.extractNumber).whereType<int>().toList() ?? [],
        tvSeries: removeEmptyStringsFromList(tvSeries),
        playedBy: removeEmptyStringsFromList(playedBy),
      );
}
