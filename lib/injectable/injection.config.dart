// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:game_of_flutter/configs/app_configs.dart' as _i8;
import 'package:game_of_flutter/configs/configs.dart' as _i7;
import 'package:game_of_flutter/configs/theme/app_theme.dart' as _i3;
import 'package:game_of_flutter/features/character_details/blocs/house/house_bloc.dart'
    as _i13;
import 'package:game_of_flutter/features/house_details/blocs/character_bloc/character_bloc.dart'
    as _i15;
import 'package:game_of_flutter/features/house_list/blocs/house_list/house_list_bloc.dart'
    as _i14;
import 'package:game_of_flutter/infrastructure/clients/app_client.dart' as _i6;
import 'package:game_of_flutter/infrastructure/clients/client.dart' as _i5;
import 'package:game_of_flutter/infrastructure/repositories/character_repository.dart'
    as _i11;
import 'package:game_of_flutter/infrastructure/repositories/house_repository.dart'
    as _i9;
import 'package:game_of_flutter/infrastructure/services/character_service.dart'
    as _i12;
import 'package:game_of_flutter/infrastructure/services/house_service.dart'
    as _i10;
import 'package:game_of_flutter/injectable/register_modules.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModules = _$RegisterModules();
    gh.factory<_i3.AppTheme>(() => _i3.AppTheme());
    gh.factory<_i4.Client>(() => registerModules.client);
    gh.factory<_i5.Client>(() => _i6.AppClient(client: gh<_i4.Client>()));
    gh.factory<_i7.Configs>(() => _i8.AppConfigs());
    gh.lazySingleton<_i9.HouseRepository>(() => _i9.HouseRepository(
          client: gh<_i5.Client>(),
          configs: gh<_i7.Configs>(),
        ));
    gh.lazySingleton<_i10.HouseService>(
        () => _i10.HouseService(houseRepository: gh<_i9.HouseRepository>()));
    gh.lazySingleton<_i11.CharacterRepository>(() => _i11.CharacterRepository(
          client: gh<_i5.Client>(),
          configs: gh<_i7.Configs>(),
        ));
    gh.lazySingleton<_i12.CharacterService>(() => _i12.CharacterService(
        characterRepository: gh<_i11.CharacterRepository>()));
    gh.factory<_i13.HouseBloc>(() => _i13.HouseBloc(
          gh<_i10.HouseService>(),
          gh<_i7.Configs>(),
        ));
    gh.factory<_i14.HouseListBloc>(() => _i14.HouseListBloc(
          gh<_i10.HouseService>(),
          gh<_i7.Configs>(),
        ));
    gh.factory<_i15.CharacterBloc>(() => _i15.CharacterBloc(
          characterService: gh<_i12.CharacterService>(),
          configs: gh<_i7.Configs>(),
        ));
    return this;
  }
}

class _$RegisterModules extends _i16.RegisterModules {}
