
import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/features/crypto_coins/domain/entities/crypto_coins.dart';
import 'package:crypto_app/features/crypto_coins/domain/repositories/crypto_coins_repository.dart';
import 'package:dartz/dartz.dart';

class CryptoCoinsRepositoryImp implements CryptoCoinsRepository{
  @override
  Future<Either<Failure, List<CryptoCoins>>> getCryptoCoinsList() {
    // TODO: implement getCryptoCoins
    throw UnimplementedError();
  }

}