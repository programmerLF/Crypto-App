

import 'package:crypto_app/features/coin_details/coin_quote/data/models/coin_quote_model.dart';
import 'package:crypto_app/features/coin_details/coin_quote/domain/repositories/coin_quote_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/failure.dart';


@injectable
class GetCoinQuote {

  final CoinQuoteRepository repository;

  GetCoinQuote({required this.repository});

  Future<Either<Failure,CoinQuoteModel>> call({required String key}) => repository.getCoinQuote(key: key);



}