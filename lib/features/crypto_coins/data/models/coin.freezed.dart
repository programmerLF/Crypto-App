// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CryptoCoinsResponseModel _$CryptoCoinsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CryptoCoinsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CryptoCoinsResponseModel {
  @CoinResultConverter()
  CryptoCoinsResultModel? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoCoinsResponseModelCopyWith<CryptoCoinsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoCoinsResponseModelCopyWith<$Res> {
  factory $CryptoCoinsResponseModelCopyWith(CryptoCoinsResponseModel value,
          $Res Function(CryptoCoinsResponseModel) then) =
      _$CryptoCoinsResponseModelCopyWithImpl<$Res, CryptoCoinsResponseModel>;
  @useResult
  $Res call({@CoinResultConverter() CryptoCoinsResultModel? result});

  $CryptoCoinsResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$CryptoCoinsResponseModelCopyWithImpl<$Res,
        $Val extends CryptoCoinsResponseModel>
    implements $CryptoCoinsResponseModelCopyWith<$Res> {
  _$CryptoCoinsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CryptoCoinsResultModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CryptoCoinsResultModelCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $CryptoCoinsResultModelCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CryptoCoinsResponseModelImplCopyWith<$Res>
    implements $CryptoCoinsResponseModelCopyWith<$Res> {
  factory _$$CryptoCoinsResponseModelImplCopyWith(
          _$CryptoCoinsResponseModelImpl value,
          $Res Function(_$CryptoCoinsResponseModelImpl) then) =
      __$$CryptoCoinsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@CoinResultConverter() CryptoCoinsResultModel? result});

  @override
  $CryptoCoinsResultModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$$CryptoCoinsResponseModelImplCopyWithImpl<$Res>
    extends _$CryptoCoinsResponseModelCopyWithImpl<$Res,
        _$CryptoCoinsResponseModelImpl>
    implements _$$CryptoCoinsResponseModelImplCopyWith<$Res> {
  __$$CryptoCoinsResponseModelImplCopyWithImpl(
      _$CryptoCoinsResponseModelImpl _value,
      $Res Function(_$CryptoCoinsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$CryptoCoinsResponseModelImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as CryptoCoinsResultModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoCoinsResponseModelImpl implements _CryptoCoinsResponseModel {
  _$CryptoCoinsResponseModelImpl({@CoinResultConverter() this.result});

  factory _$CryptoCoinsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoCoinsResponseModelImplFromJson(json);

  @override
  @CoinResultConverter()
  final CryptoCoinsResultModel? result;

  @override
  String toString() {
    return 'CryptoCoinsResponseModel(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoCoinsResponseModelImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoCoinsResponseModelImplCopyWith<_$CryptoCoinsResponseModelImpl>
      get copyWith => __$$CryptoCoinsResponseModelImplCopyWithImpl<
          _$CryptoCoinsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoCoinsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CryptoCoinsResponseModel implements CryptoCoinsResponseModel {
  factory _CryptoCoinsResponseModel(
          {@CoinResultConverter() final CryptoCoinsResultModel? result}) =
      _$CryptoCoinsResponseModelImpl;

  factory _CryptoCoinsResponseModel.fromJson(Map<String, dynamic> json) =
      _$CryptoCoinsResponseModelImpl.fromJson;

  @override
  @CoinResultConverter()
  CryptoCoinsResultModel? get result;
  @override
  @JsonKey(ignore: true)
  _$$CryptoCoinsResponseModelImplCopyWith<_$CryptoCoinsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
