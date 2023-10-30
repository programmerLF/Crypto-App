


import 'package:crypto_app/features/coin_details/coin_quote/data/data_sources/rest_client.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/exceptions.dart';
import '../models/coin_quote_model.dart';

abstract class CoinQuoteRemoteDataSource {

  Future<CoinQuoteModel> getCoinQuote(String key);

}

@Injectable(as: CoinQuoteRemoteDataSource)
class CoinQuoteRemoteDataSourceImpl implements CoinQuoteRemoteDataSource{

  final RestClient _client;

  CoinQuoteRemoteDataSourceImpl(this._client);

  @override
  Future<CoinQuoteModel> getCoinQuote(String key) async{
    try{
      return (await _client.getCoinQuote(key)).data;
    } on Error{
      throw ServerException();
    }
  }



}