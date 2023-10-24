import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/features/crypto_coins/data/models/crypto_coins_model.dart';
import 'package:dartz/dartz.dart';

abstract class CryptoCoinsRepository {
  // this method will fetch the coins from the api or the stored local data
  Future<Either<Failure, List<CryptoCoinsModel>>> getCryptoCoinsList();
}
