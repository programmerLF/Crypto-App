import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/features/coin_details/coin_quote/data/models/coin_quote_model.dart';
import 'package:dartz/dartz.dart';

abstract class CoinQuoteRepository {

  Future<Either<Failure, CoinQuoteModel>> getCoinQuote({required String key});
}

