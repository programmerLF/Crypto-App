import 'package:crypto_app/features/crypto_coins/domain/repositories/crypto_coins_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/crypto_coins_model.dart';



// Get Crypto Coins List use case:
@injectable
class GetCryptoCoinsList {
  final CryptoCoinsRepository cryptoCoinsRepository;

  GetCryptoCoinsList({required this.cryptoCoinsRepository});

  Future<Either<Failure, List<CryptoCoinsModel>>> call() async {
    return await cryptoCoinsRepository.getCryptoCoinsList();
  }
}
