import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/features/crypto_coins/domain/entities/crypto_coins.dart';
import 'package:dartz/dartz.dart';

abstract class CryptoCoinsRepository{

  // this method will fetch the coins from the api or the stored local data
  Future<Either<Failure, List<CryptoCoins>>> getCryptoCoinsList();

}