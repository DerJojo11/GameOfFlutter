// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../configs/app_configs.dart' as _i7;
import '../configs/configs.dart' as _i6;
import '../features/house_details/blocs/bloc/character_bloc.dart' as _i13;
import '../features/house_list/blocs/bloc/house_list_bloc.dart' as _i12;
import '../infrastructure/clients/app_client.dart' as _i5;
import '../infrastructure/clients/client.dart' as _i4;
import '../infrastructure/repositories/character_repository.dart' as _i10;
import '../infrastructure/repositories/house_repository.dart' as _i8;
import '../infrastructure/services/character_service.dart' as _i11;
import '../infrastructure/services/house_service.dart' as _i9;
import 'register_modules.dart' as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModules = _$RegisterModules();
  gh.factory<_i3.Client>(() => registerModules.client);
  gh.factory<_i4.Client>(() => _i5.AppClient(client: get<_i3.Client>()));
  gh.factory<_i6.Configs>(() => _i7.AppConfigs());
  gh.lazySingleton<_i8.HouseRepository>(() => _i8.HouseRepository(
      client: get<_i4.Client>(), configs: get<_i6.Configs>()));
  gh.lazySingleton<_i9.HouseService>(
      () => _i9.HouseService(houseRepository: get<_i8.HouseRepository>()));
  gh.lazySingleton<_i10.CharacterRepository>(() => _i10.CharacterRepository(
      client: get<_i4.Client>(), configs: get<_i6.Configs>()));
  gh.lazySingleton<_i11.CharacterService>(() => _i11.CharacterService(
      characterRepository: get<_i10.CharacterRepository>()));
  gh.factory<_i12.HouseListBloc>(
      () => _i12.HouseListBloc(get<_i9.HouseService>(), get<_i6.Configs>()));
  gh.factory<_i13.CharacterBloc>(() => _i13.CharacterBloc(
      characterService: get<_i11.CharacterService>(),
      configs: get<_i6.Configs>()));
  return get;
}

class _$RegisterModules extends _i14.RegisterModules {}
