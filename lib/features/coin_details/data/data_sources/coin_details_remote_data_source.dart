

import 'package:crypto_app/features/coin_details/data/data_sources/coin_details_services.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/exceptions.dart';
import '../models/coin_profile_model.dart';
import '../models/coin_quote_model.dart';

abstract class CoinDetailsRemoteDataSource {

  Future<CoinQuoteModel> getCoinQuote(String key);
  Future<CoinProfileModel> getCoinProfile(String key);

}

@Injectable(as: CoinDetailsRemoteDataSource)
class CoinDetailsRemoteDataSourceImpl implements CoinDetailsRemoteDataSource{

  final CoinDetailsServices _client;

  CoinDetailsRemoteDataSourceImpl(this._client);

  @override
  Future<CoinQuoteModel> getCoinQuote(String key) async{
    try{
      return (await _client.getCoinQuote(key)).data;
    } on Error{
      throw ServerException();
    }
  }

  @override
  Future<CoinProfileModel> getCoinProfile(String key) async{
    try{
      return (await _client.getCoinProfile(key)).data;
    } on Error{
      throw ServerException();
    }

  }



}