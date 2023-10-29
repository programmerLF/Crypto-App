import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_quote_model.freezed.dart';

part 'coin_quote_model.g.dart';

@freezed
class CoinQuoteModel with _$CoinQuoteModel {
  factory CoinQuoteModel({
    required num price,
    required num priceChangePercentage1h,
    required num priceChangePercentage24h,
    required num priceChangePercentage7d,
    required num priceChangePercentage30d,
    required num priceChangePercentage60d,
    required num priceChangePercentage90d,
    required num priceChangePercentage1y,
    required num priceChangePercentageAll,
    required num marketCap,
    required num marketCapChangePercentage24h,
    required num fullyDilutedMarketCap,
    required num fullyDilutedMarketCapChangePercentage24h,
    required num circulatingSupply,
    required num totalSupply,
    required num? maxSupply,
    required num marketCapDominance,
    required num rank,
    required num low24h,
    required num high24h,
    required num low7d,
    required num high7d,
    required num low30d,
    required num high30d,
    required num low90d,
    required num high90d,
    required num low52w,
    required num high52w,
    required num lowAllTime,
    required num highAllTime,
    required num lowAllTimeChangePercentage,
    required num highAllTimeChangePercentage,
    required String lowAllTimeTimestamp,
    required String highAllTimeTimestamp,
    required num lowYesterday,
    required num highYesterday,
    required num openYesterday,
    required num closeYesterday,
    required num priceChangePercentageYesterday,
    required num volumeYesterday,
    required num ytdPriceChangePercentage,
    required num volume,
    required num volumeChangePercentage24h,
  }) = _CoinQuoteModel;

  factory CoinQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$CoinQuoteModelFromJson(json);
}
