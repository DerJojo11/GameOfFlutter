// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../configs/app_configs.dart' as _i5;
import '../configs/configs.dart' as _i4;
import '../features/house_list/blocs/bloc/house_list_bloc.dart' as _i10;
import '../infrastructure/clients/app_client.dart' as _i7;
import '../infrastructure/clients/client.dart' as _i6;
import '../infrastructure/repositories/house_repository.dart' as _i8;
import '../infrastructure/services/house_service.dart' as _i9;
import 'register_modules.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModules = _$RegisterModules();
  gh.factory<_i3.Client>(() => registerModules.client);
  gh.factory<_i4.Configs>(() => _i5.AppConfigs());
  gh.factory<_i6.Client>(() => _i7.AppClient(client: get<_i3.Client>()));
  gh.lazySingleton<_i8.HouseRepository>(() => _i8.HouseRepository(
      client: get<_i6.Client>(), configs: get<_i4.Configs>()));
  gh.lazySingleton<_i9.HouseService>(
      () => _i9.HouseService(houseRepository: get<_i8.HouseRepository>()));
  gh.factory<_i10.HouseListBloc>(
      () => _i10.HouseListBloc(get<_i9.HouseService>(), get<_i4.Configs>()));
  return get;
}

class _$RegisterModules extends _i11.RegisterModules {}
