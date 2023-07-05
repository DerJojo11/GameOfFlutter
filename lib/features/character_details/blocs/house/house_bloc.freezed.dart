// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'house_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HouseEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HouseFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HouseEventCopyWith<HouseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseEventCopyWith<$Res> {
  factory $HouseEventCopyWith(
          HouseEvent value, $Res Function(HouseEvent) then) =
      _$HouseEventCopyWithImpl<$Res, HouseEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$HouseEventCopyWithImpl<$Res, $Val extends HouseEvent>
    implements $HouseEventCopyWith<$Res> {
  _$HouseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HouseFetchCopyWith<$Res>
    implements $HouseEventCopyWith<$Res> {
  factory _$$HouseFetchCopyWith(
          _$HouseFetch value, $Res Function(_$HouseFetch) then) =
      __$$HouseFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$HouseFetchCopyWithImpl<$Res>
    extends _$HouseEventCopyWithImpl<$Res, _$HouseFetch>
    implements _$$HouseFetchCopyWith<$Res> {
  __$$HouseFetchCopyWithImpl(
      _$HouseFetch _value, $Res Function(_$HouseFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$HouseFetch(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HouseFetch implements HouseFetch {
  const _$HouseFetch({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HouseEvent.fetch(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseFetch &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseFetchCopyWith<_$HouseFetch> get copyWith =>
      __$$HouseFetchCopyWithImpl<_$HouseFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetch,
  }) {
    return fetch(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetch,
  }) {
    return fetch?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HouseFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class HouseFetch implements HouseEvent {
  const factory HouseFetch({required final int id}) = _$HouseFetch;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$HouseFetchCopyWith<_$HouseFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HouseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(House house) loaded,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(House house)? loaded,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(House house)? loaded,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseLoading value) loading,
    required TResult Function(HouseLoaded value) loaded,
    required TResult Function(HouseFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HouseLoading value)? loading,
    TResult? Function(HouseLoaded value)? loaded,
    TResult? Function(HouseFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseLoading value)? loading,
    TResult Function(HouseLoaded value)? loaded,
    TResult Function(HouseFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseStateCopyWith<$Res> {
  factory $HouseStateCopyWith(
          HouseState value, $Res Function(HouseState) then) =
      _$HouseStateCopyWithImpl<$Res, HouseState>;
}

/// @nodoc
class _$HouseStateCopyWithImpl<$Res, $Val extends HouseState>
    implements $HouseStateCopyWith<$Res> {
  _$HouseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HouseLoadingCopyWith<$Res> {
  factory _$$HouseLoadingCopyWith(
          _$HouseLoading value, $Res Function(_$HouseLoading) then) =
      __$$HouseLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HouseLoadingCopyWithImpl<$Res>
    extends _$HouseStateCopyWithImpl<$Res, _$HouseLoading>
    implements _$$HouseLoadingCopyWith<$Res> {
  __$$HouseLoadingCopyWithImpl(
      _$HouseLoading _value, $Res Function(_$HouseLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HouseLoading implements HouseLoading {
  const _$HouseLoading();

  @override
  String toString() {
    return 'HouseState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HouseLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(House house) loaded,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(House house)? loaded,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(House house)? loaded,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseLoading value) loading,
    required TResult Function(HouseLoaded value) loaded,
    required TResult Function(HouseFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HouseLoading value)? loading,
    TResult? Function(HouseLoaded value)? loaded,
    TResult? Function(HouseFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseLoading value)? loading,
    TResult Function(HouseLoaded value)? loaded,
    TResult Function(HouseFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HouseLoading implements HouseState {
  const factory HouseLoading() = _$HouseLoading;
}

/// @nodoc
abstract class _$$HouseLoadedCopyWith<$Res> {
  factory _$$HouseLoadedCopyWith(
          _$HouseLoaded value, $Res Function(_$HouseLoaded) then) =
      __$$HouseLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({House house});

  $HouseCopyWith<$Res> get house;
}

/// @nodoc
class __$$HouseLoadedCopyWithImpl<$Res>
    extends _$HouseStateCopyWithImpl<$Res, _$HouseLoaded>
    implements _$$HouseLoadedCopyWith<$Res> {
  __$$HouseLoadedCopyWithImpl(
      _$HouseLoaded _value, $Res Function(_$HouseLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? house = null,
  }) {
    return _then(_$HouseLoaded(
      house: null == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as House,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HouseCopyWith<$Res> get house {
    return $HouseCopyWith<$Res>(_value.house, (value) {
      return _then(_value.copyWith(house: value));
    });
  }
}

/// @nodoc

class _$HouseLoaded implements HouseLoaded {
  const _$HouseLoaded({required this.house});

  @override
  final House house;

  @override
  String toString() {
    return 'HouseState.loaded(house: $house)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseLoaded &&
            (identical(other.house, house) || other.house == house));
  }

  @override
  int get hashCode => Object.hash(runtimeType, house);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseLoadedCopyWith<_$HouseLoaded> get copyWith =>
      __$$HouseLoadedCopyWithImpl<_$HouseLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(House house) loaded,
    required TResult Function(String error) failure,
  }) {
    return loaded(house);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(House house)? loaded,
    TResult? Function(String error)? failure,
  }) {
    return loaded?.call(house);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(House house)? loaded,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(house);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseLoading value) loading,
    required TResult Function(HouseLoaded value) loaded,
    required TResult Function(HouseFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HouseLoading value)? loading,
    TResult? Function(HouseLoaded value)? loaded,
    TResult? Function(HouseFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseLoading value)? loading,
    TResult Function(HouseLoaded value)? loaded,
    TResult Function(HouseFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HouseLoaded implements HouseState {
  const factory HouseLoaded({required final House house}) = _$HouseLoaded;

  House get house;
  @JsonKey(ignore: true)
  _$$HouseLoadedCopyWith<_$HouseLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HouseFailureCopyWith<$Res> {
  factory _$$HouseFailureCopyWith(
          _$HouseFailure value, $Res Function(_$HouseFailure) then) =
      __$$HouseFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$HouseFailureCopyWithImpl<$Res>
    extends _$HouseStateCopyWithImpl<$Res, _$HouseFailure>
    implements _$$HouseFailureCopyWith<$Res> {
  __$$HouseFailureCopyWithImpl(
      _$HouseFailure _value, $Res Function(_$HouseFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$HouseFailure(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HouseFailure implements HouseFailure {
  const _$HouseFailure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'HouseState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseFailureCopyWith<_$HouseFailure> get copyWith =>
      __$$HouseFailureCopyWithImpl<_$HouseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(House house) loaded,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(House house)? loaded,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(House house)? loaded,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseLoading value) loading,
    required TResult Function(HouseLoaded value) loaded,
    required TResult Function(HouseFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HouseLoading value)? loading,
    TResult? Function(HouseLoaded value)? loaded,
    TResult? Function(HouseFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseLoading value)? loading,
    TResult Function(HouseLoaded value)? loaded,
    TResult Function(HouseFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HouseFailure implements HouseState {
  const factory HouseFailure({required final String error}) = _$HouseFailure;

  String get error;
  @JsonKey(ignore: true)
  _$$HouseFailureCopyWith<_$HouseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
