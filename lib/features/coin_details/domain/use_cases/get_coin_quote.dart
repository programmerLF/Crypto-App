

import 'package:crypto_app/features/coin_details/data/models/coin_quote_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../repositories/coin_details_repository.dart';


@injectable
class GetCoinQuote {

  final CoinDetailsRepository coinDetailsRepository;

  GetCoinQuote({required this.coinDetailsRepository});

  Future<Either<Failure, CoinQuoteModel>> call({required String key}) =>
      coinDetailsRepository.getCoinQuote(key: key);

}