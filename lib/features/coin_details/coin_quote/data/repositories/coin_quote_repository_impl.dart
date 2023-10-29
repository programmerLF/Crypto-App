

import 'package:crypto_app/core/error/exceptions.dart';
import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/network/network_connection.dart';
import 'package:crypto_app/features/coin_details/coin_quote/data/data_sources/coin_quote_remote_data_source.dart';
import 'package:crypto_app/features/coin_details/coin_quote/data/models/coin_quote_model.dart';
import 'package:crypto_app/features/coin_details/coin_quote/domain/repositories/coin_quote_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: CoinQuoteRepository)
class CoinQuoteRepositoryImp implements CoinQuoteRepository{
  final CoinQuoteRemoteDataSource remoteDataSource;
  final NetworkConnection networkConnection;

  CoinQuoteRepositoryImp(this.remoteDataSource,  this.networkConnection);


  @override
  Future<Either<Failure, CoinQuoteModel>> getCoinQuote({required String key}) async{
    if (await networkConnection.isConnected){
      try{
        return right(await remoteDataSource.getCoinQuote(key));
      } on ServerException{
        return left(Failure.server());
      }
    }
    else{
      return left(Failure.connection());
    }
  }



}