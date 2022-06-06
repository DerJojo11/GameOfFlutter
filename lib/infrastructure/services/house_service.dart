import 'package:game_of_flutter/infrastructure/domain/house.dart';
import 'package:game_of_flutter/infrastructure/dtos/dto.dart';
import 'package:game_of_flutter/infrastructure/dtos/house_dto.dart';
import 'package:game_of_flutter/infrastructure/repositories/house_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HouseService {
  HouseService({required this.houseRepository});
  final HouseRepository houseRepository;

  Future<List<House>> getAll({int page = 1}) async {
    final List<HouseDto> houseDtos = await houseRepository.getAll(
      page: page,
    );
    return houseDtos.toDomain<House>();
  }

  Future<House> getForId(int id) async {
    final HouseDto houseDto = await houseRepository.getForId(id);
    return houseDto.toDomain;
  }
}
