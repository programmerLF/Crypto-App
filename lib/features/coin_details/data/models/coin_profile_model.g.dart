// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinProfileModelImpl _$$CoinProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CoinProfileModelImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      category: json['category'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$CoinProfileModelImplToJson(
        _$CoinProfileModelImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'symbol': instance.symbol,
      'category': instance.category,
      'description': instance.description,
    };
