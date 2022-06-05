// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterDto _$$_CharacterDtoFromJson(Map<String, dynamic> json) =>
    _$_CharacterDto(
      url: json['url'] as String?,
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      culture: json['culture'] as String?,
      born: json['born'] as String?,
      died: json['died'] as String?,
      father: json['father'] as String?,
      mother: json['mother'] as String?,
      spouse: json['spouse'] as String?,
      titles:
          (json['titles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      aliases:
          (json['aliases'] as List<dynamic>?)?.map((e) => e as String).toList(),
      allegiances: (json['allegiances'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      books:
          (json['books'] as List<dynamic>?)?.map((e) => e as String).toList(),
      povBooks: (json['povBooks'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tvSeries: (json['tvSeries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      playedBy: (json['playedBy'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_CharacterDtoToJson(_$_CharacterDto instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'gender': instance.gender,
      'culture': instance.culture,
      'born': instance.born,
      'died': instance.died,
      'father': instance.father,
      'mother': instance.mother,
      'spouse': instance.spouse,
      'titles': instance.titles,
      'aliases': instance.aliases,
      'allegiances': instance.allegiances,
      'books': instance.books,
      'povBooks': instance.povBooks,
      'tvSeries': instance.tvSeries,
      'playedBy': instance.playedBy,
    };
