import 'package:crypto_app/core/error/failure.dart';

import 'package:dartz/dartz.dart';

import '../../data/models/coin_profile_model.dart';
import '../../data/models/coin_quote_model.dart';

abstract class CoinDetailsRepository{
  Future<Either< Failure,CoinProfileModel>> getCoinProfile({required String key});
  Future<Either<Failure, CoinQuoteModel>> getCoinQuote({required String key});
}