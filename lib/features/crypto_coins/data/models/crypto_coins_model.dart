import 'package:crypto_app/features/crypto_coins/domain/entities/crypto_coins.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_coins_model.freezed.dart';

part 'crypto_coins_model.g.dart';

@freezed
class CryptoCoinsResultModel with _$CryptoCoinsResultModel {
  factory CryptoCoinsResultModel({List<CryptoCoinsModel>? coins}) =
      _CryptoCoinsResultModel;
}

@freezed
class CryptoCoinsModel extends CryptoCoins with _$CryptoCoinsModel {
  factory CryptoCoinsModel({
    required String key,
    required String name,
    required String symbol,
    required int rank,
    required num? maxSupply,
    required num totalSupply,
    required int isActive,
    required num high24h,
    required num low24h,
    required Map<String, num> quote,
    required String logo,
   @JsonKey(name: "external_link") required String link,
  }) = _CryptoCoinsModel;

  factory CryptoCoinsModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoCoinsModelFromJson(json);
}

class CoinResultConverter
    implements JsonConverter<CryptoCoinsResultModel, Map<String, dynamic>> {
  const CoinResultConverter();

  @override
  CryptoCoinsResultModel fromJson(Map<String, dynamic> json) {
    return CryptoCoinsResultModel(
        coins: json.values
            .map((e) => CryptoCoinsModel.fromJson(e as Map<String, dynamic>))
            .toList());
  }

  @override
  Map<String, dynamic> toJson(CryptoCoinsResultModel object) {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
