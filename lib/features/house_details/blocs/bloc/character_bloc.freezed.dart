// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? fetch,
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
    required TResult Function(CharacterFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterEventCopyWith<CharacterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
          CharacterEvent value, $Res Function(CharacterEvent) then) =
      _$CharacterEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

  final CharacterEvent _value;
  // ignore: unused_field
  final $Res Function(CharacterEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$CharacterFetchCopyWith<$Res>
    implements $CharacterEventCopyWith<$Res> {
  factory _$$CharacterFetchCopyWith(
          _$CharacterFetch value, $Res Function(_$CharacterFetch) then) =
      __$$CharacterFetchCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$$CharacterFetchCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res>
    implements _$$CharacterFetchCopyWith<$Res> {
  __$$CharacterFetchCopyWithImpl(
      _$CharacterFetch _value, $Res Function(_$CharacterFetch) _then)
      : super(_value, (v) => _then(v as _$CharacterFetch));

  @override
  _$CharacterFetch get _value => super._value as _$CharacterFetch;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$CharacterFetch(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CharacterFetch implements CharacterFetch {
  const _$CharacterFetch({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CharacterEvent.fetch(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterFetch &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$CharacterFetchCopyWith<_$CharacterFetch> get copyWith =>
      __$$CharacterFetchCopyWithImpl<_$CharacterFetch>(this, _$identity);

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
    TResult Function(int id)? fetch,
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
    required TResult Function(CharacterFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class CharacterFetch implements CharacterEvent {
  const factory CharacterFetch({required final int id}) = _$CharacterFetch;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$CharacterFetchCopyWith<_$CharacterFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character character) loaded,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character character)? loaded,
    TResult Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character character)? loaded,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterLoaded value) loaded,
    required TResult Function(CharacterFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterLoaded value)? loaded,
    TResult Function(CharacterFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterLoaded value)? loaded,
    TResult Function(CharacterFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  final CharacterState _value;
  // ignore: unused_field
  final $Res Function(CharacterState) _then;
}

/// @nodoc
abstract class _$$CharacterLoadingCopyWith<$Res> {
  factory _$$CharacterLoadingCopyWith(
          _$CharacterLoading value, $Res Function(_$CharacterLoading) then) =
      __$$CharacterLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterLoadingCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements _$$CharacterLoadingCopyWith<$Res> {
  __$$CharacterLoadingCopyWithImpl(
      _$CharacterLoading _value, $Res Function(_$CharacterLoading) _then)
      : super(_value, (v) => _then(v as _$CharacterLoading));

  @override
  _$CharacterLoading get _value => super._value as _$CharacterLoading;
}

/// @nodoc

class _$CharacterLoading implements CharacterLoading {
  const _$CharacterLoading();

  @override
  String toString() {
    return 'CharacterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharacterLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character character) loaded,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character character)? loaded,
    TResult Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character character)? loaded,
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
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterLoaded value) loaded,
    required TResult Function(CharacterFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterLoaded value)? loaded,
    TResult Function(CharacterFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterLoaded value)? loaded,
    TResult Function(CharacterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharacterLoading implements CharacterState {
  const factory CharacterLoading() = _$CharacterLoading;
}

/// @nodoc
abstract class _$$CharacterLoadedCopyWith<$Res> {
  factory _$$CharacterLoadedCopyWith(
          _$CharacterLoaded value, $Res Function(_$CharacterLoaded) then) =
      __$$CharacterLoadedCopyWithImpl<$Res>;
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$CharacterLoadedCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements _$$CharacterLoadedCopyWith<$Res> {
  __$$CharacterLoadedCopyWithImpl(
      _$CharacterLoaded _value, $Res Function(_$CharacterLoaded) _then)
      : super(_value, (v) => _then(v as _$CharacterLoaded));

  @override
  _$CharacterLoaded get _value => super._value as _$CharacterLoaded;

  @override
  $Res call({
    Object? character = freezed,
  }) {
    return _then(_$CharacterLoaded(
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }

  @override
  $CharacterCopyWith<$Res> get character {
    return $CharacterCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value));
    });
  }
}

/// @nodoc

class _$CharacterLoaded implements CharacterLoaded {
  const _$CharacterLoaded({required this.character});

  @override
  final Character character;

  @override
  String toString() {
    return 'CharacterState.loaded(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterLoaded &&
            const DeepCollectionEquality().equals(other.character, character));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(character));

  @JsonKey(ignore: true)
  @override
  _$$CharacterLoadedCopyWith<_$CharacterLoaded> get copyWith =>
      __$$CharacterLoadedCopyWithImpl<_$CharacterLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character character) loaded,
    required TResult Function(String error) failure,
  }) {
    return loaded(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character character)? loaded,
    TResult Function(String error)? failure,
  }) {
    return loaded?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character character)? loaded,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterLoaded value) loaded,
    required TResult Function(CharacterFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterLoaded value)? loaded,
    TResult Function(CharacterFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterLoaded value)? loaded,
    TResult Function(CharacterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharacterLoaded implements CharacterState {
  const factory CharacterLoaded({required final Character character}) =
      _$CharacterLoaded;

  Character get character => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CharacterLoadedCopyWith<_$CharacterLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterFailureCopyWith<$Res> {
  factory _$$CharacterFailureCopyWith(
          _$CharacterFailure value, $Res Function(_$CharacterFailure) then) =
      __$$CharacterFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$CharacterFailureCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements _$$CharacterFailureCopyWith<$Res> {
  __$$CharacterFailureCopyWithImpl(
      _$CharacterFailure _value, $Res Function(_$CharacterFailure) _then)
      : super(_value, (v) => _then(v as _$CharacterFailure));

  @override
  _$CharacterFailure get _value => super._value as _$CharacterFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$CharacterFailure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharacterFailure implements CharacterFailure {
  const _$CharacterFailure({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CharacterState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$CharacterFailureCopyWith<_$CharacterFailure> get copyWith =>
      __$$CharacterFailureCopyWithImpl<_$CharacterFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character character) loaded,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character character)? loaded,
    TResult Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character character)? loaded,
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
    required TResult Function(CharacterLoading value) loading,
    required TResult Function(CharacterLoaded value) loaded,
    required TResult Function(CharacterFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterLoaded value)? loaded,
    TResult Function(CharacterFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterLoading value)? loading,
    TResult Function(CharacterLoaded value)? loaded,
    TResult Function(CharacterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CharacterFailure implements CharacterState {
  const factory CharacterFailure({required final String error}) =
      _$CharacterFailure;

  String get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CharacterFailureCopyWith<_$CharacterFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
