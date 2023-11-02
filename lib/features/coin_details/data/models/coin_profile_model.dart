

import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_profile_model.freezed.dart';
part 'coin_profile_model.g.dart';

@freezed
class CoinProfileModel  with _$CoinProfileModel{

  factory CoinProfileModel({
    required String key,
    required String name,
    required String symbol,
    required String category,
    required String description
}) = _CoinProfileModel;

  factory CoinProfileModel.fromJson(Map<String, dynamic> json) => _$CoinProfileModelFromJson(json);

}