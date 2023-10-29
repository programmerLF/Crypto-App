




import 'package:crypto_app/config/api_response.dart';
import 'package:crypto_app/features/coin_details/coin_profile/data/models/coin_profile_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';


part 'rest_client.g.dart';
@injectable
@RestApi()
abstract class RestClient {
  @factoryMethod
  factory RestClient(Dio dio) = _RestClient;

  @GET('/coin/profile')
  Future<ApiResponse<CoinProfileModel>> getCoinProfile(@Query("key")String key);
}
