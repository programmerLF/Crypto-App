// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:crypto_app/config/di_module.dart' as _i10;
import 'package:crypto_app/features/crypto_coins/data/data_sources/crypro_coins_remote_data_source.dart'
    as _i5;
import 'package:crypto_app/features/crypto_coins/data/data_sources/rest_client.dart'
    as _i4;
import 'package:crypto_app/features/crypto_coins/data/repositories/crypto_coins_repository_imp.dart'
    as _i7;
import 'package:crypto_app/features/crypto_coins/domain/repositories/crypto_coins_repository.dart'
    as _i6;
import 'package:crypto_app/features/crypto_coins/domain/usecases/get_crypto_coins_list.dart'
    as _i8;
import 'package:crypto_app/features/crypto_coins/presentation/cubit/crypto_coins_cubit.dart'
    as _i9;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
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
    final productionAppModule = _$ProductionAppModule();
    gh.factory<_i3.Dio>(() => productionAppModule.initDio());
    gh.factory<_i4.RestClient>(() => _i4.RestClient(
          gh<_i3.Dio>(),
          baseUrl: gh<String>(),
        ));
    gh.factory<_i5.CryptoCoinsRemoteDataSource>(
        () => _i5.CryptoCoinsRemoteDataSourceImp(gh<_i4.RestClient>()));
    gh.factory<_i6.CryptoCoinsRepository>(() =>
        _i7.CryptoCoinsRepositoryImp(gh<_i5.CryptoCoinsRemoteDataSource>()));
    gh.factory<_i8.GetCryptoCoinsList>(() => _i8.GetCryptoCoinsList(
        cryptoCoinsRepository: gh<_i6.CryptoCoinsRepository>()));
    gh.factory<_i9.CryptoCoinsCubit>(() =>
        _i9.CryptoCoinsCubit(getCryptoCoinsList: gh<_i8.GetCryptoCoinsList>()));
    return this;
  }
}

class _$ProductionAppModule extends _i10.ProductionAppModule {}
