// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_coins_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoCoinsModelImpl _$$CryptoCoinsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CryptoCoinsModelImpl(
      key: json['key'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      rank: json['rank'] as int,
      maxSupply: json['maxSupply'] as num?,
      totalSupply: json['totalSupply'] as num,
      isActive: json['isActive'] as int,
      high24h: json['high24h'] as num,
      low24h: json['low24h'] as num,
      quote: Map<String, num>.from(json['quote'] as Map),
      logo: json['logo'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$$CryptoCoinsModelImplToJson(
        _$CryptoCoinsModelImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'symbol': instance.symbol,
      'rank': instance.rank,
      'maxSupply': instance.maxSupply,
      'totalSupply': instance.totalSupply,
      'isActive': instance.isActive,
      'high24h': instance.high24h,
      'low24h': instance.low24h,
      'quote': instance.quote,
      'logo': instance.logo,
      'link': instance.link,
    };
