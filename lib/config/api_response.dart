

import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_response.g.dart';
part 'api_response.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiResponse<T> with _$ApiResponse<T> {
  factory ApiResponse.data(@JsonKey(readValue: readData) T data) = ApiResponseData;

  factory ApiResponse.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$ApiResponseFromJson(json, fromJsonT);


}

dynamic readData(Map map, String key) =>

    // check if the returned key is data otherwise body
    map['data'] ?? map["body"];