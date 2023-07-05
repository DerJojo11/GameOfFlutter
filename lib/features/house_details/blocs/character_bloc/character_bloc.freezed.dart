// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
    required TResult Function(CharacterFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFetch value)? fetch,
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
      _$CharacterEventCopyWithImpl<$Res, CharacterEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res, $Val extends CharacterEvent>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

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
abstract class _$$CharacterFetchCopyWith<$Res>
    implements $CharacterEventCopyWith<$Res> {
  factory _$$CharacterFetchCopyWith(
          _$CharacterFetch value, $Res Function(_$CharacterFetch) then) =
      __$$CharacterFetchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$CharacterFetchCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$CharacterFetch>
    implements _$$CharacterFetchCopyWith<$Res> {
  __$$CharacterFetchCopyWithImpl(
      _$CharacterFetch _value, $Res Function(_$CharacterFetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$CharacterFetch(
      id: null == id
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
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    required TResult Function(CharacterFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharacterFetch value)? fetch,
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
  int get id;
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
    TResult? Function()? loading,
    TResult? Function(Character character)? loaded,
    TResult? Function(String error)? failure,
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
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterLoaded value)? loaded,
    TResult? Function(CharacterFailure value)? failure,
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
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterLoadingCopyWith<$Res> {
  factory _$$CharacterLoadingCopyWith(
          _$CharacterLoading value, $Res Function(_$CharacterLoading) then) =
      __$$CharacterLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterLoadingCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterLoading>
    implements _$$CharacterLoadingCopyWith<$Res> {
  __$$CharacterLoadingCopyWithImpl(
      _$CharacterLoading _value, $Res Function(_$CharacterLoading) _then)
      : super(_value, _then);
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
    TResult? Function()? loading,
    TResult? Function(Character character)? loaded,
    TResult? Function(String error)? failure,
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
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterLoaded value)? loaded,
    TResult? Function(CharacterFailure value)? failure,
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
  @useResult
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$CharacterLoadedCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterLoaded>
    implements _$$CharacterLoadedCopyWith<$Res> {
  __$$CharacterLoadedCopyWithImpl(
      _$CharacterLoaded _value, $Res Function(_$CharacterLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_$CharacterLoaded(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    TResult? Function()? loading,
    TResult? Function(Character character)? loaded,
    TResult? Function(String error)? failure,
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
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterLoaded value)? loaded,
    TResult? Function(CharacterFailure value)? failure,
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

  Character get character;
  @JsonKey(ignore: true)
  _$$CharacterLoadedCopyWith<_$CharacterLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterFailureCopyWith<$Res> {
  factory _$$CharacterFailureCopyWith(
          _$CharacterFailure value, $Res Function(_$CharacterFailure) then) =
      __$$CharacterFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CharacterFailureCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterFailure>
    implements _$$CharacterFailureCopyWith<$Res> {
  __$$CharacterFailureCopyWithImpl(
      _$CharacterFailure _value, $Res Function(_$CharacterFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CharacterFailure(
      error: null == error
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
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
    TResult? Function()? loading,
    TResult? Function(Character character)? loaded,
    TResult? Function(String error)? failure,
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
    TResult? Function(CharacterLoading value)? loading,
    TResult? Function(CharacterLoaded value)? loaded,
    TResult? Function(CharacterFailure value)? failure,
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

  String get error;
  @JsonKey(ignore: true)
  _$$CharacterFailureCopyWith<_$CharacterFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
