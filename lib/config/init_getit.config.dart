// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:crypto_app/config/di_module.dart' as _i12;
import 'package:crypto_app/core/network/network_connection.dart' as _i5;
import 'package:crypto_app/features/crypto_coins/data/data_sources/crypro_coins_remote_data_source.dart'
    as _i7;
import 'package:crypto_app/features/crypto_coins/data/data_sources/rest_client.dart'
    as _i6;
import 'package:crypto_app/features/crypto_coins/data/repositories/crypto_coins_repository_imp.dart'
    as _i9;
import 'package:crypto_app/features/crypto_coins/domain/repositories/crypto_coins_repository.dart'
    as _i8;
import 'package:crypto_app/features/crypto_coins/domain/usecases/get_crypto_coins_list.dart'
    as _i10;
import 'package:crypto_app/features/crypto_coins/presentation/cubit/crypto_coins_cubit.dart'
    as _i11;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;

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
    gh.factory<_i4.InternetConnectionChecker>(
        () => productionAppModule.internetChecker());
    gh.factory<_i5.NetworkConnection>(
        () => _i5.NetworkConnectionImp(gh<_i4.InternetConnectionChecker>()));
    gh.factory<_i6.RestClient>(() => _i6.RestClient(gh<_i3.Dio>()));
    gh.factory<_i7.CryptoCoinsRemoteDataSource>(
        () => _i7.CryptoCoinsRemoteDataSourceImp(gh<_i6.RestClient>()));
    gh.factory<_i8.CryptoCoinsRepository>(() => _i9.CryptoCoinsRepositoryImp(
          cryptoCoinsRemoteDataSource: gh<_i7.CryptoCoinsRemoteDataSource>(),
          networkConnection: gh<_i5.NetworkConnection>(),
        ));
    gh.factory<_i10.GetCryptoCoinsList>(() => _i10.GetCryptoCoinsList(
        cryptoCoinsRepository: gh<_i8.CryptoCoinsRepository>()));
    gh.factory<_i11.CryptoCoinsCubit>(
        () => _i11.CryptoCoinsCubit(gh<_i10.GetCryptoCoinsList>()));
    return this;
  }
}

class _$ProductionAppModule extends _i12.ProductionAppModule {}