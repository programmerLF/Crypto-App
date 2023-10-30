// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseDataImpl<T> _$$ApiResponseDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseDataImpl<T>(
      fromJsonT(readData(json, 'data')),
    );

Map<String, dynamic> _$$ApiResponseDataImplToJson<T>(
  _$ApiResponseDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
    };
