// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageViewState {
  int get index => throw _privateConstructorUsedError;
  Color get currentTapBorderColor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, Color currentTapBorderColor)
        currentPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, Color currentTapBorderColor)? currentPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, Color currentTapBorderColor)? currentPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) currentPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? currentPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? currentPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageViewStateCopyWith<HomePageViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageViewStateCopyWith<$Res> {
  factory $HomePageViewStateCopyWith(
          HomePageViewState value, $Res Function(HomePageViewState) then) =
      _$HomePageViewStateCopyWithImpl<$Res, HomePageViewState>;
  @useResult
  $Res call({int index, Color currentTapBorderColor});
}

/// @nodoc
class _$HomePageViewStateCopyWithImpl<$Res, $Val extends HomePageViewState>
    implements $HomePageViewStateCopyWith<$Res> {
  _$HomePageViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? currentTapBorderColor = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      currentTapBorderColor: null == currentTapBorderColor
          ? _value.currentTapBorderColor
          : currentTapBorderColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomePageViewStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, Color currentTapBorderColor});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomePageViewStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? currentTapBorderColor = null,
  }) {
    return _then(_$InitialImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == currentTapBorderColor
          ? _value.currentTapBorderColor
          : currentTapBorderColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl(this.index, this.currentTapBorderColor);

  @override
  final int index;
  @override
  final Color currentTapBorderColor;

  @override
  String toString() {
    return 'HomePageViewState.currentPage(index: $index, currentTapBorderColor: $currentTapBorderColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.currentTapBorderColor, currentTapBorderColor) ||
                other.currentTapBorderColor == currentTapBorderColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, currentTapBorderColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, Color currentTapBorderColor)
        currentPage,
  }) {
    return currentPage(index, currentTapBorderColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, Color currentTapBorderColor)? currentPage,
  }) {
    return currentPage?.call(index, currentTapBorderColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, Color currentTapBorderColor)? currentPage,
    required TResult orElse(),
  }) {
    if (currentPage != null) {
      return currentPage(index, currentTapBorderColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) currentPage,
  }) {
    return currentPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? currentPage,
  }) {
    return currentPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? currentPage,
    required TResult orElse(),
  }) {
    if (currentPage != null) {
      return currentPage(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomePageViewState {
  factory _Initial(final int index, final Color currentTapBorderColor) =
      _$InitialImpl;

  @override
  int get index;
  @override
  Color get currentTapBorderColor;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
