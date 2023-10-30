

import 'package:crypto_app/core/error/exceptions.dart';
import 'package:crypto_app/features/coin_details/coin_profile/data/data_sources/rest_client.dart';
import 'package:injectable/injectable.dart';

import '../models/coin_profile_model.dart';

abstract class CoinProfileRemoteDataSource{
  Future<CoinProfileModel> getCoinProfile(String key);
}

@Injectable(as: CoinProfileRemoteDataSource)
class CoinProfileRemoteDataSourceImp implements CoinProfileRemoteDataSource{

  final RestClient _client;

  CoinProfileRemoteDataSourceImp(this._client);

  @override
  Future<CoinProfileModel> getCoinProfile(String key) async{
    try{
      return (await _client.getCoinProfile(key)).data;
    } on Error{
      throw ServerException();
    }

  }

}