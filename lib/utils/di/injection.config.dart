// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import '/features/palyer/player_bloc/player_bloc.dart' as _i20;
import '/repositories/player_service.dart' as _i868;
import '/services/asset_utils_service.dart' as _i389;
import '/services/dio_service.dart' as _i699;
import '/services/routing_service.dart' as _i634;
import '/services/shared_pref_service.dart' as _i781;
import '/services/text_input_service.dart' as _i207;
import '/utils/assets/image_assets.dart' as _i125;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i125.AssetsUtils>(() => _i125.AssetsUtils());
    gh.lazySingleton<_i699.DioService>(() => _i699.DioService());
    gh.lazySingleton<_i207.TextInputService>(() => _i207.TextInputService());
    gh.lazySingleton<_i634.RoutingService>(() => _i634.RoutingService());
    gh.lazySingleton<_i389.AssetsUtilsService>(
        () => _i389.AssetsUtilsService());
    gh.lazySingleton<_i781.SharedPrefService>(() => _i781.SharedPrefService());
    gh.lazySingleton<_i868.PlayerService>(
        () => _i868.IPlayerService(gh<_i699.DioService>()));
    gh.factory<_i20.PlayerBloc>(
        () => _i20.PlayerBloc(gh<_i868.PlayerService>()));
    return this;
  }
}
