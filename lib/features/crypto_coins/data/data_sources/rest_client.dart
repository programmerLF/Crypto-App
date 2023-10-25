import 'package:crypto_app/core/constant_values.dart';
import 'package:crypto_app/features/crypto_coins/data/models/coin.dart';
import 'package:crypto_app/features/crypto_coins/data/models/crypto_coins_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';


part 'rest_client.g.dart';
@injectable
@RestApi()
abstract class RestClient {
  @factoryMethod
  factory RestClient(Dio dio) = _RestClient;

  @GET('/coins')
  Future<CryptoCoinsResponseModel> getCryptoCoinsList();
}



