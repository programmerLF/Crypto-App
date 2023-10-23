

import 'package:crypto_app/features/crypto_coins/domain/repositories/crypto_coins_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/crypto_coins.dart';

class GetCryptoCoins {

  final CryptoCoinsRepository cryptoCoinsRepository;
  GetCryptoCoins({ required this.cryptoCoinsRepository});

  Future<Either<Failure, List<CryptoCoins>>> call () async {
    return await cryptoCoinsRepository.getCryptoCoins();
  }

}