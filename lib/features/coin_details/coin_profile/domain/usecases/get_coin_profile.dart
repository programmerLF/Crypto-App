import 'package:crypto_app/features/coin_details/coin_profile/domain/repositories/coin_profile_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/error/failure.dart';
import '../../data/models/coin_profile_model.dart';


class GetCoinProfile {
  final CoinProfileRepository coinProfileRepository;

  GetCoinProfile({required this.coinProfileRepository});

  Future<Either<Failure, CoinProfileModel>> call(String key) =>
      coinProfileRepository.getCoinProfile(key: key);
}