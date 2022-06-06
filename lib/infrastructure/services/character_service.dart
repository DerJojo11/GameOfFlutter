import 'package:game_of_flutter/infrastructure/domain/character.dart';
import 'package:game_of_flutter/infrastructure/dtos/character_dto.dart';
import 'package:game_of_flutter/infrastructure/dtos/dto.dart';
import 'package:game_of_flutter/infrastructure/repositories/character_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CharacterService {
  CharacterService({required this.characterRepository});
  final CharacterRepository characterRepository;

  Future<List<Character>> getAll({int page = 1}) async {
    final List<CharacterDto> characterDto = await characterRepository.getAll(
      page: page,
    );
    return characterDto.toDomain<Character>();
  }

  Future<Character> getForId(int id) async {
    final CharacterDto characterDto = await characterRepository.getForId(id);
    return characterDto.toDomain;
  }
}
