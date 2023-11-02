




import 'package:crypto_app/config/api_response.dart';
import 'package:crypto_app/features/coin_details/data/models/coin_profile_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

import '../models/coin_quote_model.dart';


part 'coin_details_services.g.dart';
@injectable
@RestApi()
abstract class CoinDetailsServices {
  @factoryMethod
  factory CoinDetailsServices(Dio dio) = _CoinDetailsServices;

  @GET('/v1/markets/crypto/profile')
  Future<ApiResponse<CoinProfileModel>> getCoinProfile(@Query("key")String key);
  @GET('/v1/markets/crypto/quotes')
  Future<ApiResponse<CoinQuoteModel>> getCoinQuote(@Query("key")String key);
}
