// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoinProfileModel _$CoinProfileModelFromJson(Map<String, dynamic> json) {
  return _CoinProfileModel.fromJson(json);
}

/// @nodoc
mixin _$CoinProfileModel {
  String get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinProfileModelCopyWith<CoinProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinProfileModelCopyWith<$Res> {
  factory $CoinProfileModelCopyWith(
          CoinProfileModel value, $Res Function(CoinProfileModel) then) =
      _$CoinProfileModelCopyWithImpl<$Res, CoinProfileModel>;
  @useResult
  $Res call(
      {String key,
      String name,
      String symbol,
      String category,
      String description});
}

/// @nodoc
class _$CoinProfileModelCopyWithImpl<$Res, $Val extends CoinProfileModel>
    implements $CoinProfileModelCopyWith<$Res> {
  _$CoinProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? symbol = null,
    Object? category = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinProfileModelImplCopyWith<$Res>
    implements $CoinProfileModelCopyWith<$Res> {
  factory _$$CoinProfileModelImplCopyWith(_$CoinProfileModelImpl value,
          $Res Function(_$CoinProfileModelImpl) then) =
      __$$CoinProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String name,
      String symbol,
      String category,
      String description});
}

/// @nodoc
class __$$CoinProfileModelImplCopyWithImpl<$Res>
    extends _$CoinProfileModelCopyWithImpl<$Res, _$CoinProfileModelImpl>
    implements _$$CoinProfileModelImplCopyWith<$Res> {
  __$$CoinProfileModelImplCopyWithImpl(_$CoinProfileModelImpl _value,
      $Res Function(_$CoinProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? symbol = null,
    Object? category = null,
    Object? description = null,
  }) {
    return _then(_$CoinProfileModelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinProfileModelImpl implements _CoinProfileModel {
  _$CoinProfileModelImpl(
      {required this.key,
      required this.name,
      required this.symbol,
      required this.category,
      required this.description});

  factory _$CoinProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinProfileModelImplFromJson(json);

  @override
  final String key;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final String category;
  @override
  final String description;

  @override
  String toString() {
    return 'CoinProfileModel(key: $key, name: $name, symbol: $symbol, category: $category, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinProfileModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, name, symbol, category, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinProfileModelImplCopyWith<_$CoinProfileModelImpl> get copyWith =>
      __$$CoinProfileModelImplCopyWithImpl<_$CoinProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinProfileModelImplToJson(
      this,
    );
  }
}

abstract class _CoinProfileModel implements CoinProfileModel {
  factory _CoinProfileModel(
      {required final String key,
      required final String name,
      required final String symbol,
      required final String category,
      required final String description}) = _$CoinProfileModelImpl;

  factory _CoinProfileModel.fromJson(Map<String, dynamic> json) =
      _$CoinProfileModelImpl.fromJson;

  @override
  String get key;
  @override
  String get name;
  @override
  String get symbol;
  @override
  String get category;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$CoinProfileModelImplCopyWith<_$CoinProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
