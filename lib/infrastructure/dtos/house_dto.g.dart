// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HouseDto _$$_HouseDtoFromJson(Map<String, dynamic> json) => _$_HouseDto(
      url: json['url'] as String?,
      name: json['name'] as String?,
      region: json['region'] as String?,
      coatOfArms: json['coatOfArms'] as String?,
      words: json['words'] as String?,
      titles:
          (json['titles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      seats:
          (json['seats'] as List<dynamic>?)?.map((e) => e as String).toList(),
      currentLord: json['currentLord'] as String?,
      heir: json['heir'] as String?,
      overlord: json['overlord'] as String?,
      founded: json['founded'] as String?,
      founder: json['founder'] as String?,
      diedOut: json['diedOut'] as String?,
      ancestralWeapons: (json['ancestralWeapons'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      cadetBranches: (json['cadetBranches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      swornMembers: (json['swornMembers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_HouseDtoToJson(_$_HouseDto instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'region': instance.region,
      'coatOfArms': instance.coatOfArms,
      'words': instance.words,
      'titles': instance.titles,
      'seats': instance.seats,
      'currentLord': instance.currentLord,
      'heir': instance.heir,
      'overlord': instance.overlord,
      'founded': instance.founded,
      'founder': instance.founder,
      'diedOut': instance.diedOut,
      'ancestralWeapons': instance.ancestralWeapons,
      'cadetBranches': instance.cadetBranches,
      'swornMembers': instance.swornMembers,
    };
