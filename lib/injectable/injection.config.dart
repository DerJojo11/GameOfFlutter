// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../configs/app_configs.dart' as _i8;
import '../configs/configs.dart' as _i7;
import '../configs/theme/app_theme.dart' as _i3;
import '../features/house_details/blocs/bloc/character_bloc.dart' as _i14;
import '../features/house_list/blocs/bloc/house_list_bloc.dart' as _i13;
import '../infrastructure/clients/app_client.dart' as _i6;
import '../infrastructure/clients/client.dart' as _i5;
import '../infrastructure/repositories/character_repository.dart' as _i11;
import '../infrastructure/repositories/house_repository.dart' as _i9;
import '../infrastructure/services/character_service.dart' as _i12;
import '../infrastructure/services/house_service.dart' as _i10;
import 'register_modules.dart' as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModules = _$RegisterModules();
  gh.factory<_i3.AppTheme>(() => _i3.AppTheme());
  gh.factory<_i4.Client>(() => registerModules.client);
  gh.factory<_i5.Client>(() => _i6.AppClient(client: get<_i4.Client>()));
  gh.factory<_i7.Configs>(() => _i8.AppConfigs());
  gh.lazySingleton<_i9.HouseRepository>(() => _i9.HouseRepository(
      client: get<_i5.Client>(), configs: get<_i7.Configs>()));
  gh.lazySingleton<_i10.HouseService>(
      () => _i10.HouseService(houseRepository: get<_i9.HouseRepository>()));
  gh.lazySingleton<_i11.CharacterRepository>(() => _i11.CharacterRepository(
      client: get<_i5.Client>(), configs: get<_i7.Configs>()));
  gh.lazySingleton<_i12.CharacterService>(() => _i12.CharacterService(
      characterRepository: get<_i11.CharacterRepository>()));
  gh.factory<_i13.HouseListBloc>(
      () => _i13.HouseListBloc(get<_i10.HouseService>(), get<_i7.Configs>()));
  gh.factory<_i14.CharacterBloc>(() => _i14.CharacterBloc(
      characterService: get<_i12.CharacterService>(),
      configs: get<_i7.Configs>()));
  return get;
}

class _$RegisterModules extends _i15.RegisterModules {}
