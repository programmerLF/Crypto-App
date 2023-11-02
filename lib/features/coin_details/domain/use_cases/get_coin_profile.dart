
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../../data/models/coin_profile_model.dart';
import '../repositories/coin_details_repository.dart';

@injectable
class GetCoinProfile {
  final CoinDetailsRepository coinDetailsRepository;

  GetCoinProfile({required this.coinDetailsRepository});

  Future<Either<Failure, CoinProfileModel>> call({required String key}) =>
      coinDetailsRepository.getCoinProfile(key: key);
}
