import 'package:game_of_flutter/configs/configs.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: Configs)
class AppConfigs implements Configs {
  @override
  String get baseUrl => 'anapioficeandfire.com';

  @override
  int get perPage => 15;
}
