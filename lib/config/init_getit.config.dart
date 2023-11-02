// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:crypto_app/config/di_module.dart' as _i19;
import 'package:crypto_app/core/network/network_connection.dart' as _i5;
import 'package:crypto_app/features/coin_details/data/data_sources/coin_details_remote_data_source.dart'
    as _i12;
import 'package:crypto_app/features/coin_details/data/data_sources/coin_details_services.dart'
    as _i7;
import 'package:crypto_app/features/coin_details/data/repositories/coin_details_repository_impl.dart'
    as _i14;
import 'package:crypto_app/features/coin_details/domain/repositories/coin_details_repository.dart'
    as _i13;
import 'package:crypto_app/features/coin_details/domain/use_cases/get_coin_profile.dart'
    as _i16;
import 'package:crypto_app/features/coin_details/domain/use_cases/get_coin_quote.dart'
    as _i17;
import 'package:crypto_app/features/coin_details/presentation/cubit/coin_details_cubit.dart'
    as _i18;
import 'package:crypto_app/features/crypto_coins/data/data_sources/crypro_coins_remote_data_source.dart'
    as _i8;
import 'package:crypto_app/features/crypto_coins/data/data_sources/rest_client.dart'
    as _i6;
import 'package:crypto_app/features/crypto_coins/data/repositories/crypto_coins_repository_imp.dart'
    as _i10;
import 'package:crypto_app/features/crypto_coins/domain/repositories/crypto_coins_repository.dart'
    as _i9;
import 'package:crypto_app/features/crypto_coins/domain/usecases/get_crypto_coins_list.dart'
    as _i11;
import 'package:crypto_app/features/crypto_coins/presentation/cubit/crypto_coins_cubit.dart'
    as _i15;
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
    gh.factory<_i7.CoinDetailsServices>(
        () => _i7.CoinDetailsServices(gh<_i3.Dio>()));
    gh.factory<_i8.CryptoCoinsRemoteDataSource>(
        () => _i8.CryptoCoinsRemoteDataSourceImp(gh<_i6.RestClient>()));
    gh.factory<_i9.CryptoCoinsRepository>(() => _i10.CryptoCoinsRepositoryImp(
          cryptoCoinsRemoteDataSource: gh<_i8.CryptoCoinsRemoteDataSource>(),
          networkConnection: gh<_i5.NetworkConnection>(),
        ));
    gh.factory<_i11.GetCryptoCoinsList>(() => _i11.GetCryptoCoinsList(
        cryptoCoinsRepository: gh<_i9.CryptoCoinsRepository>()));
    gh.factory<_i12.CoinDetailsRemoteDataSource>(() =>
        _i12.CoinDetailsRemoteDataSourceImpl(gh<_i7.CoinDetailsServices>()));
    gh.factory<_i13.CoinDetailsRepository>(() => _i14.CoinDetailsRepositoryImpl(
          gh<_i5.NetworkConnection>(),
          gh<_i12.CoinDetailsRemoteDataSource>(),
        ));
    gh.factory<_i15.CryptoCoinsCubit>(
        () => _i15.CryptoCoinsCubit(gh<_i11.GetCryptoCoinsList>()));
    gh.factory<_i16.GetCoinProfile>(() => _i16.GetCoinProfile(
        coinDetailsRepository: gh<_i13.CoinDetailsRepository>()));
    gh.factory<_i17.GetCoinQuote>(() => _i17.GetCoinQuote(
        coinDetailsRepository: gh<_i13.CoinDetailsRepository>()));
    gh.factory<_i18.CoinDetailsCubit>(() => _i18.CoinDetailsCubit(
          gh<_i16.GetCoinProfile>(),
          gh<_i17.GetCoinQuote>(),
        ));
    return this;
  }
}

class _$ProductionAppModule extends _i19.ProductionAppModule {}
