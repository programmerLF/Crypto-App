import 'package:crypto_app/core/error/exceptions.dart';
import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/features/crypto_coins/data/data_sources/crypro_coins_remote_data_source.dart';
import 'package:crypto_app/features/crypto_coins/data/models/crypto_coins_model.dart';
import 'package:crypto_app/features/crypto_coins/domain/repositories/crypto_coins_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:crypto_app/core/network/network_connection.dart';

@Injectable(as: CryptoCoinsRepository)
class CryptoCoinsRepositoryImp implements CryptoCoinsRepository {
  final NetworkConnection networkConnection;
  final CryptoCoinsRemoteDataSource cryptoCoinsRemoteDataSource;

  CryptoCoinsRepositoryImp(
      {required this.cryptoCoinsRemoteDataSource,
      required this.networkConnection});

  @override
  Future<Either<Failure, List<CryptoCoinsModel>>> getCryptoCoinsList() async {
    if (await networkConnection.isConnected) {
      try {
        return right(await cryptoCoinsRemoteDataSource.getCryptoCoinsList());
      } on ServerException {
        return left(ServerFailure());
      }
    } else {
      return left(InternetConnectionFailure());
    }
  }
}
