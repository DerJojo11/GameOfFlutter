// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import '../configs/configs.dart' as _i7;
import '../infrastructure/clients/app_client.dart' as _i5;
import '../infrastructure/clients/client.dart' as _i4;
import '../infrastructure/repositories/house_repository.dart' as _i6;
import '../infrastructure/services/house_service.dart' as _i8;
import 'register_modules.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModules = _$RegisterModules();
  gh.factory<_i3.Client>(() => registerModules.client);
  gh.factory<_i4.Client>(() => _i5.AppClient(client: get<_i3.Client>()));
  gh.lazySingleton<_i6.HouseRepository>(() => _i6.HouseRepository(
      client: get<_i4.Client>(), configs: get<_i7.Configs>()));
  gh.lazySingleton<_i8.HouseService>(
      () => _i8.HouseService(houseRepository: get<_i6.HouseRepository>()));
  return get;
}

class _$RegisterModules extends _i9.RegisterModules {}
