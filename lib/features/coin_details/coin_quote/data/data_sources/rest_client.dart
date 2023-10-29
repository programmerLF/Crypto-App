

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

import '../../../../../config/api_response.dart';
import '../models/coin_quote_model.dart';


part 'rest_client.g.dart';
@injectable
@RestApi()
abstract class RestClient{
  @factoryMethod
  factory RestClient(Dio dio) = _RestClient;

  @GET('/coin/quote')
  Future<ApiResponse<CoinQuoteModel>> getCoinQuote(@Query("key")String key);

}