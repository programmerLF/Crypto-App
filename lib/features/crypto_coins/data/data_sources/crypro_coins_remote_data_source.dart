

import 'package:crypto_app/core/constant_values.dart';
import 'package:crypto_app/features/crypto_coins/data/models/crypto_coins_model.dart';


abstract class CryptoCoinsRemoteDataSource{
  Future<List<CryptoCoinsModel>> getCryptoCoinsList();
}


class CryptoCoinsRemoteDataSourceImp implements CryptoCoinsRemoteDataSource{
  @override

  /// Should fetch data from the api url: 'https://cryptocurrency-markets.p.rapidapi.com/coins',
  /// throws server exception in case of server errors.
  Future<List<CryptoCoinsModel>> getCryptoCoinsList() {
    // TODO: implement getCryptoCoins
    throw UnimplementedError();
  }

}