import 'package:freezed_annotation/freezed_annotation.dart';

import 'crypto_coins_model.dart';

part 'coin.freezed.dart';

part 'coin.g.dart';

@freezed
class CryptoCoinsResponseModel with _$CryptoCoinsResponseModel {
  factory CryptoCoinsResponseModel(
      {@CoinResultConverter() CryptoCoinsResultModel? result}) = _CryptoCoinsResponseModel;

  factory CryptoCoinsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoCoinsResponseModelFromJson(json);
}
