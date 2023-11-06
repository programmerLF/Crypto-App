// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i4;

import '../core/network/network_connection.dart' as _i5;
import '../features/coin_details/data/data_sources/coin_details_remote_data_source.dart'
    as _i13;
import '../features/coin_details/data/data_sources/coin_details_services.dart'
    as _i8;
import '../features/coin_details/data/repositories/coin_details_repository_impl.dart'
    as _i15;
import '../features/coin_details/domain/repositories/coin_details_repository.dart'
    as _i14;
import '../features/coin_details/domain/use_cases/get_coin_profile.dart'
    as _i17;
import '../features/coin_details/domain/use_cases/get_coin_quote.dart' as _i18;
import '../features/coin_details/presentation/cubit/coin_details_cubit.dart'
    as _i19;
import '../features/crypto_coins/data/data_sources/crypro_coins_remote_data_source.dart'
    as _i9;
import '../features/crypto_coins/data/data_sources/rest_client.dart' as _i7;
import '../features/crypto_coins/data/repositories/crypto_coins_repository_imp.dart'
    as _i11;
import '../features/crypto_coins/domain/repositories/crypto_coins_repository.dart'
    as _i10;
import '../features/crypto_coins/domain/usecases/get_crypto_coins_list.dart'
    as _i12;
import '../features/crypto_coins/presentation/cubit/crypto_coins_cubit.dart'
    as _i16;
import '../features/new_beneficiary/presenttion/pages/cubit/new_beneficiary_cubit.dart'
    as _i6;
import 'di_module.dart' as _i20; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
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
        () => _i5.NetworkConnectionImp(get<_i4.InternetConnectionChecker>()));
    gh.factory<_i6.NewBeneficiaryCubit>(() => _i6.NewBeneficiaryCubit());
    gh.factory<_i7.RestClient>(() => _i7.RestClient(get<_i3.Dio>()));
    gh.factory<_i8.CoinDetailsServices>(
        () => _i8.CoinDetailsServices(get<_i3.Dio>()));
    gh.factory<_i9.CryptoCoinsRemoteDataSource>(
        () => _i9.CryptoCoinsRemoteDataSourceImp(get<_i7.RestClient>()));
    gh.factory<_i10.CryptoCoinsRepository>(() => _i11.CryptoCoinsRepositoryImp(
          cryptoCoinsRemoteDataSource: get<_i9.CryptoCoinsRemoteDataSource>(),
          networkConnection: get<_i5.NetworkConnection>(),
        ));
    gh.factory<_i12.GetCryptoCoinsList>(() => _i12.GetCryptoCoinsList(
        cryptoCoinsRepository: get<_i10.CryptoCoinsRepository>()));
    gh.factory<_i13.CoinDetailsRemoteDataSource>(() =>
        _i13.CoinDetailsRemoteDataSourceImpl(get<_i8.CoinDetailsServices>()));
    gh.factory<_i14.CoinDetailsRepository>(() => _i15.CoinDetailsRepositoryImpl(
          get<_i5.NetworkConnection>(),
          get<_i13.CoinDetailsRemoteDataSource>(),
        ));
    gh.factory<_i16.CryptoCoinsCubit>(
        () => _i16.CryptoCoinsCubit(get<_i12.GetCryptoCoinsList>()));
    gh.factory<_i17.GetCoinProfile>(() => _i17.GetCoinProfile(
        coinDetailsRepository: get<_i14.CoinDetailsRepository>()));
    gh.factory<_i18.GetCoinQuote>(() => _i18.GetCoinQuote(
        coinDetailsRepository: get<_i14.CoinDetailsRepository>()));
    gh.factory<_i19.CoinDetailsCubit>(() => _i19.CoinDetailsCubit(
          get<_i17.GetCoinProfile>(),
          get<_i18.GetCoinQuote>(),
        ));
    return this;
  }
}

class _$ProductionAppModule extends _i20.ProductionAppModule {}
