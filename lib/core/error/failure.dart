import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {

  factory Failure.server() = _ServerFailure;
  factory Failure.cache() = _CacheFailure;
  factory Failure.connection() = _InternetConnectionFailure;
}
