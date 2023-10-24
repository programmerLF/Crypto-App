import 'package:crypto_app/features/crypto_coins/domain/entities/crypto_coins.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_coins_model.freezed.dart';
part 'crypto_coins_model.g.dart';

@freezed
class CryptoCoinsModel extends CryptoCoins with _$CryptoCoinsModel {
  factory CryptoCoinsModel({
    required String key,
    required String name,
    required String symbol,
    required int rank,
    required num? maxSupply,
    required num totalSupply,
    required bool isActive,
    required num high24h,
    required num low24h,
    required Map<String, num> quote,
    required String logo,
    required String link,
  }) = _CryptoCoinsModel;

  factory CryptoCoinsModel.fromJson(Map<String, dynamic> json) => _$CryptoCoinsModelFromJson(json);
}
