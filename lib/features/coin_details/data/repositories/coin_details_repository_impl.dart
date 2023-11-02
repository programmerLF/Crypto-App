import 'package:crypto_app/core/error/exceptions.dart';
import 'package:crypto_app/core/error/failure.dart';
import 'package:crypto_app/core/network/network_connection.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/coin_details_repository.dart';
import '../data_sources/coin_details_remote_data_source.dart';
import '../models/coin_profile_model.dart';
import '../models/coin_quote_model.dart';



@Injectable(as: CoinDetailsRepository)
class CoinDetailsRepositoryImpl implements CoinDetailsRepository {
  final NetworkConnection networkConnection;
  final CoinDetailsRemoteDataSource remoteDataSource;

  CoinDetailsRepositoryImpl(this.networkConnection, this.remoteDataSource);

  @override
  Future<Either<Failure, CoinProfileModel>> getCoinProfile(
      {required String key}) async {
    if (await networkConnection.isConnected) {
      try {
        return right(await remoteDataSource.getCoinProfile(key));
      } on ServerException {
        return left(Failure.server());
      }
    } else {
      return left(Failure.connection());
    }
  }

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
