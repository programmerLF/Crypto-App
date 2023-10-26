import 'package:crypto_app/core/error/exceptions.dart';
import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/network/network_connection.dart';
import 'package:crypto_app/features/coin_details/coin_profile/data/data_sources/coin_profile_remote_data_source.dart';
import 'package:crypto_app/features/coin_details/coin_profile/domain/repositories/coin_profile_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../models/coin_profile_model.dart';

@Injectable(as: CoinProfileRepository)
class CoinProfileRepositoryImpl implements CoinProfileRepository {
  final NetworkConnection networkConnection;
  final CoinProfileRemoteDataSource remoteDataSource;

  CoinProfileRepositoryImpl(this.networkConnection, this.remoteDataSource);

  @override
  Future<Either<Failure, CoinProfileModel>> getCoinProfile(
      {required String key}) async {
    if (await networkConnection.isConnected) {
      try {
        return right(await remoteDataSource.getCoinProfile(key));
      } on ServerException {
        return left(Failure.server());
      }
    } else {
      return left(Failure.connection());
    }
  }
}
