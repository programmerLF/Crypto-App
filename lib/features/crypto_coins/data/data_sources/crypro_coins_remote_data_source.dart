import 'package:crypto_app/core/error/exceptions.dart';
import 'package:crypto_app/features/crypto_coins/data/data_sources/rest_client.dart';
import 'package:crypto_app/features/crypto_coins/data/models/crypto_coins_model.dart';
import 'package:injectable/injectable.dart';

abstract class CryptoCoinsRemoteDataSource {
  Future<List<CryptoCoinsModel>> getCryptoCoinsList();
}

@Injectable(as: CryptoCoinsRemoteDataSource)
class CryptoCoinsRemoteDataSourceImp implements CryptoCoinsRemoteDataSource {
  final RestClient _client;

  CryptoCoinsRemoteDataSourceImp(this._client);

  @override

  /// Should fetch data from the api url: 'https://cryptocurrency-markets.p.rapidapi.com/coins',
  /// throws server exception in case of server errors.
  Future<List<CryptoCoinsModel>> getCryptoCoinsList() async {
    try {
      return (await _client.getCryptoCoinsList()).data!.coins!;
    } on Exception {
      throw ServerException();
    }
  }
}
