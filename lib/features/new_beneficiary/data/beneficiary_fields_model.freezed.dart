// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_fields_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BeneficiaryFieldsModel {
  String get name => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  String get ibanNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BeneficiaryFieldsModelCopyWith<BeneficiaryFieldsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiaryFieldsModelCopyWith<$Res> {
  factory $BeneficiaryFieldsModelCopyWith(BeneficiaryFieldsModel value,
          $Res Function(BeneficiaryFieldsModel) then) =
      _$BeneficiaryFieldsModelCopyWithImpl<$Res, BeneficiaryFieldsModel>;
  @useResult
  $Res call(
      {String name, String? nickname, String bankName, String ibanNumber});
}

/// @nodoc
class _$BeneficiaryFieldsModelCopyWithImpl<$Res,
        $Val extends BeneficiaryFieldsModel>
    implements $BeneficiaryFieldsModelCopyWith<$Res> {
  _$BeneficiaryFieldsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nickname = freezed,
    Object? bankName = null,
    Object? ibanNumber = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      ibanNumber: null == ibanNumber
          ? _value.ibanNumber
          : ibanNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeneficiaryFieldsModelImplCopyWith<$Res>
    implements $BeneficiaryFieldsModelCopyWith<$Res> {
  factory _$$BeneficiaryFieldsModelImplCopyWith(
          _$BeneficiaryFieldsModelImpl value,
          $Res Function(_$BeneficiaryFieldsModelImpl) then) =
      __$$BeneficiaryFieldsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String? nickname, String bankName, String ibanNumber});
}

/// @nodoc
class __$$BeneficiaryFieldsModelImplCopyWithImpl<$Res>
    extends _$BeneficiaryFieldsModelCopyWithImpl<$Res,
        _$BeneficiaryFieldsModelImpl>
    implements _$$BeneficiaryFieldsModelImplCopyWith<$Res> {
  __$$BeneficiaryFieldsModelImplCopyWithImpl(
      _$BeneficiaryFieldsModelImpl _value,
      $Res Function(_$BeneficiaryFieldsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nickname = freezed,
    Object? bankName = null,
    Object? ibanNumber = null,
  }) {
    return _then(_$BeneficiaryFieldsModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      ibanNumber: null == ibanNumber
          ? _value.ibanNumber
          : ibanNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BeneficiaryFieldsModelImpl implements _BeneficiaryFieldsModel {
  _$BeneficiaryFieldsModelImpl(
      {required this.name,
      required this.nickname,
      required this.bankName,
      required this.ibanNumber});

  @override
  final String name;
  @override
  final String? nickname;
  @override
  final String bankName;
  @override
  final String ibanNumber;

  @override
  String toString() {
    return 'BeneficiaryFieldsModel(name: $name, nickname: $nickname, bankName: $bankName, ibanNumber: $ibanNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryFieldsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.ibanNumber, ibanNumber) ||
                other.ibanNumber == ibanNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, nickname, bankName, ibanNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryFieldsModelImplCopyWith<_$BeneficiaryFieldsModelImpl>
      get copyWith => __$$BeneficiaryFieldsModelImplCopyWithImpl<
          _$BeneficiaryFieldsModelImpl>(this, _$identity);
}

abstract class _BeneficiaryFieldsModel implements BeneficiaryFieldsModel {
  factory _BeneficiaryFieldsModel(
      {required final String name,
      required final String? nickname,
      required final String bankName,
      required final String ibanNumber}) = _$BeneficiaryFieldsModelImpl;

  @override
  String get name;
  @override
  String? get nickname;
  @override
  String get bankName;
  @override
  String get ibanNumber;
  @override
  @JsonKey(ignore: true)
  _$$BeneficiaryFieldsModelImplCopyWith<_$BeneficiaryFieldsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
